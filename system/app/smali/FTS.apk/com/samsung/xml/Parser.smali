.class public abstract Lcom/samsung/xml/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/File;)Lcom/samsung/xml/Node;
    .registers 7
    .parameter "descriptionFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, fileIn:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_15

    .line 161
    .end local v1           #fileIn:Ljava/io/InputStream;
    .local v2, fileIn:Ljava/io/InputStream;
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2b

    move-result-object v3

    .line 168
    .local v3, root:Lcom/samsung/xml/Node;
    if-eqz v2, :cond_f

    .line 169
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 162
    :cond_f
    :goto_f
    return-object v3

    .line 170
    :catch_10
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fileIn:Ljava/io/InputStream;
    .end local v3           #root:Lcom/samsung/xml/Node;
    .restart local v1       #fileIn:Ljava/io/InputStream;
    :catch_15
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    :goto_16
    :try_start_16
    new-instance v4, Lcom/samsung/xml/ParserException;

    invoke-direct {v4, v0}, Lcom/samsung/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1c

    .line 166
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1c
    move-exception v4

    .line 168
    :goto_1d
    if-eqz v1, :cond_22

    .line 169
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 173
    :cond_22
    :goto_22
    throw v4

    .line 170
    :catch_23
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileIn:Ljava/io/InputStream;
    .restart local v2       #fileIn:Ljava/io/InputStream;
    :catchall_28
    move-exception v4

    move-object v1, v2

    .end local v2           #fileIn:Ljava/io/InputStream;
    .restart local v1       #fileIn:Ljava/io/InputStream;
    goto :goto_1d

    .line 164
    .end local v1           #fileIn:Ljava/io/InputStream;
    .restart local v2       #fileIn:Ljava/io/InputStream;
    :catch_2b
    move-exception v0

    move-object v1, v2

    .end local v2           #fileIn:Ljava/io/InputStream;
    .restart local v1       #fileIn:Ljava/io/InputStream;
    goto :goto_16
.end method

.method public abstract parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation
.end method

.method public parse(Ljava/net/URL;)Lcom/samsung/xml/Node;
    .registers 8
    .parameter "locationURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, urlIn:Ljava/io/InputStream;
    :try_start_1
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p1, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 88
    .local v2, urlCon:Ljava/net/HttpURLConnection;
    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    const-string v4, "GET"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 90
    const-string v4, "USER-AGENT"

    invoke-static {}, Lcom/samsung/http/HTTP;->getUserAgentValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 92
    invoke-virtual {p0, v3}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 93
    .local v1, rootElem:Lcom/samsung/xml/Node;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_32

    .line 99
    if-eqz v3, :cond_2c

    .line 101
    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 94
    :cond_2c
    :goto_2c
    return-object v1

    .line 102
    :catch_2d
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #rootElem:Lcom/samsung/xml/Node;
    .end local v2           #urlCon:Ljava/net/HttpURLConnection;
    :catch_32
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    :try_start_33
    new-instance v4, Lcom/samsung/xml/ParserException;

    invoke-direct {v4, v0}, Lcom/samsung/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_39

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_39
    move-exception v4

    .line 99
    if-eqz v3, :cond_3f

    .line 101
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 105
    :cond_3f
    :goto_3f
    throw v4

    .line 102
    :catch_40
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f
.end method
