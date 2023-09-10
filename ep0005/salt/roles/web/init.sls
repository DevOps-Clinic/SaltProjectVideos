# Grains
roles_web_grains_debug:
  file.managed:
    - name: /root/grains_debug.txt
    - contents: |
        {{ salt['grains.get']('osfinger') }}

roles_web_grains_debug2:
  file.managed:
    - name: /root/grains_debug2.txt
    - contents: |
        {{ salt['grains.get']('osfingerversion', 'my default value') }}

roles_web_grains_debug3:
  file.managed:
    - name: /root/grains_debug3.txt
    - contents: {{ grains['osfinger'] }}

roles_web_grains_debug4:
  file.managed:
    - name: /root/grains_debug4.txt
    - source: salt:///roles/web/files/grains_debug4.txt.jinja
    - template: jinja

roles_web_set_grains_roles:
  grains.present:
    - name: role
    - value: web

# Pillar
roles_web_pillar_debug:
  file.managed:
    - name: /root/pillar_debug.txt
    - contents: |
        {{ salt['pillar.get']('foo') }}

roles_web_pillar_debug2:
  file.managed:
    - name: /root/pillar_debug2.txt
    - contents: |
        {{ salt['pillar.get']('foobar', 'my default value') }}

roles_web_pillar_debug3:
  file.managed:
    - name: /root/pillar_debug3.txt
    - contents: {{ pillar['foo'] }}

roles_web_pillar_debug4:
  file.managed:
    - name: /root/pillar_debug4.txt
    - source: salt:///roles/web/files/pillar_debug4.txt.jinja
    - template: jinja
