from sqlalchemy import create_engine
from sqlalchemy.engine import Connection


def connect_postgres() -> Connection:
    """
    Supplies a postgres connection to the desired database.
    """
    postgres_url = 'localhost'
    postgres_port = 5432
    postgres_user = 'sandy.ryza'
    postgres_password = ''

    connection_string = f'postgresql://{postgres_user}:{postgres_password}' \
                        f'@{postgres_url}:{postgres_port}/covid'

    engine = create_engine(connection_string)
    return engine.connect()
