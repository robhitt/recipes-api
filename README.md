# Overview

We're building a recipe app. The main things are are tracking:

- **Users**: People who can create and share recipes.

- **Recipes**: Each recipe has a title, description, and instructions.

- **Ingredients**: Shared items like “flour,” “sugar,” “olive oil,” etc.

- **Recipe Ingredients**: A specific amount of an ingredient used in a recipe.

- **Labels**: Optional tags like "vegetarian" or "easy".

# receipes-api

Recipes Backend API - No Ads, No Longwinded Descriptions, straight to the point

# Local Setup

## .env

```
DATABASE_URL=postgresql+psycopg2://postgres:postgres@localhost:5432/recipes
```

## Setting Up Postgres -w- Docker

### Install Postgres 16

```
brew install postgresql@16
brew services start postgresql@16
createdb recipes
```

### Docker Installation & Start Postgres

- Download [Docker](https://www.docker.com/products/docker-desktop) For Desktop
- Restart terminal and run `docker --version` to confirm installed
- Open Docker Desktop
  - `docker info` to see if its available
- Pull and start a Postgres container

```
docker run --name recipes-db \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=recipes \
  -p 5432:5432 \
  -d postgres:16
```

- Confirm the container is healthy `docker ps`
- Retest the connection

```
python - <<'PY'
from recipes_api.db import engine
from sqlalchemy import text

with engine.connect() as c:
    print("DB says:", c.execute(text("SELECT 1")).scalar())

PY
```

- Expected output: `DB says: 1`

- Docker commands

```
Stop DB	`docker stop recipes-db`
Start DB again `docker start recipes-db`
View logs	`docker logs recipes-db`
Delete container (removes data)	`docker rm -f recipes-db`
```
