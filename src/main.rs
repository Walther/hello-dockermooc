use std::env;

#[async_std::main]
async fn main() -> tide::Result<()> {
    let port = env::var("PORT").unwrap();
    let mut app = tide::new();
    tide::log::start();
    app.at("/")
        .get(|_| async { Ok("Hello, https://devopswithdocker.com\n") });
    app.listen(format!("0.0.0.0:{}", port)).await?;
    Ok(())
}
