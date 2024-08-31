import os

from fastapi import FastAPI

from app.api import health


def create_application() -> FastAPI:
    application = FastAPI()
    application.include_router(health.router)
    return application


app = create_application()
