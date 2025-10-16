# Obs na Prática — IA Generativa (BYPASS v2, cert-proof)
Este pacote foi ajustado para **não falhar no `pip install`** em redes com inspeção SSL/CA corporativa.
- `app/` e `mock-llm/` trazem `Dockerfile` com `pip` configurado para **trusted-host** (`pypi.org`, `files.pythonhosted.org`).
- Nenhum certificado extra é necessário.

## Como subir
```bash
cp .env.example .env
docker compose -f docker-compose-bypass.yml build --no-cache
docker compose -f docker-compose-bypass.yml up -d
bash ./elastic/ingest_data.sh
```
Acesse: Kibana http://localhost:5601 • Swagger http://localhost:8000/docs • Mock http://localhost:11435/health

## Se ainda bloquear PyPI
Sua rede pode **bloquear** saída total para PyPI. Nesse caso, gere uma **wheelhouse local** e troque o `pip install` por `--no-index --find-links /wheelhouse`. Posso te enviar uma versão **offline** se precisar.
