# recipes_api/db.py
import os
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
from dotenv import load_dotenv

# Load variables from .env at project startup
load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL")
if not DATABASE_URL:
    raise RuntimeError("DATABASE_URL missing in .env")

# The future=True flag opts into SQLAlchemy 2.x style
engine = create_engine(DATABASE_URL, future=True, echo=False)

# Each request gets its own database session
SessionLocal = sessionmaker(
    autocommit=False,
    autoflush=False,
    bind=engine,
)

# Base class for our models
Base = declarative_base()
