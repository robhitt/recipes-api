# test_db_connection.py
from sqlalchemy import create_engine, text
from dotenv import load_dotenv
import os

load_dotenv()  # Loads variables from your .env file
DATABASE_URL = os.getenv("DATABASE_URL")

engine = create_engine(DATABASE_URL)

try:
    with engine.connect() as conn:
        result = conn.execute(text("SELECT 1"))
        print("✅ Success! DB says:", result.scalar())
except Exception as e:
    print("❌ Error connecting to the database:")
    print(e)
