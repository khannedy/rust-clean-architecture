use sqlx::postgres::PgPoolOptions;
use sqlx::{Pool, Postgres};
use std::time::Duration;

pub async fn get_db_pool() -> Pool<Postgres> {
    let url = "postgres://khannedy:@localhost:5432/rust_clean_architecture";
    PgPoolOptions::new()
        .max_connections(10)
        .min_connections(5)
        .acquire_timeout(Duration::from_secs(5))
        .idle_timeout(Duration::from_secs(30))
        .connect(url)
        .await
        .unwrap()
}
