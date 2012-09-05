.class public Ljavax/activation/URLDataSource;
.super Ljava/lang/Object;
.source "URLDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private connection:Ljava/net/URLConnection;

.field private url:Ljava/net/URL;


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    if-nez v0, :cond_c

    .line 68
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_1c

    .line 74
    :cond_c
    :goto_c
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    if-eqz v1, :cond_17

    .line 77
    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_17
    if-nez v0, :cond_1b

    .line 81
    const-string v0, "application/octet-stream"

    .line 83
    :cond_1b
    return-object v0

    .line 71
    :catch_1c
    move-exception v0

    goto :goto_c
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    .line 98
    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    if-eqz v0, :cond_19

    .line 100
    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 101
    iget-object v0, p0, Ljavax/activation/URLDataSource;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 103
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
