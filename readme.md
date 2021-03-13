# Anime Reencoder
This project reencodes all the anime
# Running
## Docker
### Docker run
```bash
docker run -d \
    --name "anime_reencoder" \
    -v /path/to/anime:/app/in \
    marnixah/anime_reencoder
```
### docker-compose
```bash
git clone https://github.com/marnixah/anime_reencoder.git
cd anime_reencoder
```
Change the volumes in docker-compose.yml and then run
```bash
docker-compose up -d
```
## Without docker
Install handbrakecli, then run
```bash
pip3 install -r requirements.txt
python3 main.py /path/to/anime/
```