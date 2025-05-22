from fastapi import FastAPI

app = FastAPI(title="Receipes API")


@app.get("/")
def read_root():
    return {"message": "Hello, World"}
