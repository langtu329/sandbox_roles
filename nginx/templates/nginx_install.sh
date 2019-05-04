#!/bin/bash
command_line = "{% for conf in model_config %} {{ conf }} {% endfor %}
cd {{ download_dir }}/nginx-{{ nginx_version }}
./configure $command_line
make && make install
