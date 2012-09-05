.class public Lcom/sec/android/app/DefaultHttpResponseHandler;
.super Ljava/lang/Object;
.source "DefaultHttpResponseHandler.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/DefaultHttpResponseHandler;->responseCode:I

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/sec/android/app/DefaultHttpResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p1, :cond_4

    .line 27
    const/4 v7, 0x0

    .line 44
    :cond_3
    :goto_3
    return-object v7

    .line 29
    :cond_4
    const/16 v7, 0x100

    new-array v6, v7, [B

    .line 31
    .local v6, sBuffer:[B
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/DefaultHttpResponseHandler;->setResponseCode(I)V

    .line 32
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 33
    .local v5, rentity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 34
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 37
    .local v0, content:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 39
    .local v4, readBytes:I
    :try_start_1a
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 40
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_32
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_58

    .line 41
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .local v1, content:Ljava/io/ByteArrayOutputStream;
    :goto_23
    :try_start_23
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_3e

    .line 42
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_55
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_23

    .line 45
    :catch_2f
    move-exception v2

    move-object v0, v1

    .line 46
    .end local v1           #content:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #content:Ljava/io/ByteArrayOutputStream;
    .local v2, e:Ljava/io/IOException;
    :goto_31
    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 48
    .end local v2           #e:Ljava/io/IOException;
    :catchall_32
    move-exception v7

    :goto_33
    if-eqz v0, :cond_38

    .line 50
    :try_start_35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_4f

    .line 54
    :cond_38
    :goto_38
    if-eqz v3, :cond_3d

    .line 56
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_51

    .line 48
    :cond_3d
    :goto_3d
    throw v7

    .line 44
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #content:Ljava/io/ByteArrayOutputStream;
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_55
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_2f

    move-result-object v7

    .line 48
    if-eqz v1, :cond_47

    .line 50
    :try_start_44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_53

    .line 54
    :cond_47
    :goto_47
    if-eqz v3, :cond_3

    .line 56
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_3

    .line 57
    :catch_4d
    move-exception v8

    goto :goto_3

    .line 51
    .end local v1           #content:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #content:Ljava/io/ByteArrayOutputStream;
    :catch_4f
    move-exception v8

    goto :goto_38

    .line 57
    :catch_51
    move-exception v8

    goto :goto_3d

    .line 51
    .end local v0           #content:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #content:Ljava/io/ByteArrayOutputStream;
    :catch_53
    move-exception v8

    goto :goto_47

    .line 48
    :catchall_55
    move-exception v7

    move-object v0, v1

    .end local v1           #content:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #content:Ljava/io/ByteArrayOutputStream;
    goto :goto_33

    .line 45
    :catch_58
    move-exception v2

    goto :goto_31
.end method

.method protected setResponseCode(I)V
    .registers 2
    .parameter "responseCode"

    .prologue
    .line 20
    iput p1, p0, Lcom/sec/android/app/DefaultHttpResponseHandler;->responseCode:I

    .line 21
    return-void
.end method
