.class public Loauth/signpost/basic/HttpURLConnectionResponseAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Loauth/signpost/http/HttpResponse;


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Loauth/signpost/basic/HttpURLConnectionResponseAdapter;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method