FROM ubuntu:24.04

RUN apt update && apt install -y python3-virtualenv git

RUN git clone https://github.com/agreenbhm/mcp-bash.git /opt/mcp-bash

WORKDIR /opt/mcp-bash

RUN virtualenv .venv

RUN /opt/mcp-bash/.venv/bin/pip install -e .

CMD ["/opt/mcp-bash/.venv/bin/mcp", "run", "/opt/mcp-bash/server.py"]
