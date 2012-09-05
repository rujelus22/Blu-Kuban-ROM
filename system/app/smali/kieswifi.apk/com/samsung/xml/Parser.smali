.class public abstract Lcom/samsung/xml/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
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
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, fileIn:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_15

    .line 159
    .end local v1           #fileIn:Ljava/io/InputStream;
    .local v2, fileIn:Ljava/io/InputStream;
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2b

    move-result-object v3

    .line 166
    .local v3, root:Lcom/samsung/xml/Node;
    if-eqz v2, :cond_f

    .line 167
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 160
    :cond_f
    :goto_f
    return-object v3

    .line 168
    :catch_10
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fileIn:Ljava/io/InputStream;
    .end local v3           #root:Lcom/samsung/xml/Node;
    .restart local v1       #fileIn:Ljava/io/InputStream;
    :catch_15
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    :goto_16
    :try_start_16
    new-instance v4, Lcom/samsung/xml/ParserException;

    invoke-direct {v4, v0}, Lcom/samsung/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1c

    .line 164
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1c
    move-exception v4

    .line 166
    :goto_1d
    if-eqz v1, :cond_22

    .line 167
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 171
    :cond_22
    :goto_22
    throw v4

    .line 168
    :catch_23
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileIn:Ljava/io/InputStream;
    .restart local v2       #fileIn:Ljava/io/InputStream;
    :catchall_28
    move-exception v4

    move-object v1, v2

    .end local v2           #fileIn:Ljava/io/InputStream;
    .restart local v1       #fileIn:Ljava/io/InputStream;
    goto :goto_1d

    .line 162
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
    .registers 10
    .parameter "locationURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 105
    .local v5, urlIn:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 108
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_2
    sget-object v6, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 110
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v6, "USER-AGENT"

    sget-object v7, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 114
    .local v3, res:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 115
    .local v4, rootElem:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_31

    .line 120
    if-eqz v0, :cond_30

    .line 121
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 116
    :cond_30
    return-object v4

    .line 117
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #res:Lorg/apache/http/HttpResponse;
    .end local v4           #rootElem:Lcom/samsung/xml/Node;
    :catch_31
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    :try_start_32
    new-instance v6, Lcom/samsung/xml/ParserException;

    invoke-direct {v6, v1}, Lcom/samsung/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_38

    .line 119
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_38
    move-exception v6

    .line 120
    if-eqz v0, :cond_3e

    .line 121
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 122
    :cond_3e
    throw v6
.end method
