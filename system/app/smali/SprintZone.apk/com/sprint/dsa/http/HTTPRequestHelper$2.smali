.class Lcom/sprint/dsa/http/HTTPRequestHelper$2;
.super Ljava/lang/Object;
.source "HTTPRequestHelper.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/http/HTTPRequestHelper;->getResponseHandlerInstance()Lorg/apache/http/client/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/http/HTTPRequestHelper$2;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 10
    .parameter "response"

    .prologue
    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, result:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 248
    .local v5, status:Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12e

    if-ne v6, v7, :cond_2a

    .line 251
    const-string v6, "location"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 252
    .local v2, locationHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_28

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "302 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_28
    move-object v4, v3

    .line 268
    .end local v2           #locationHeader:Lorg/apache/http/Header;
    .end local v3           #result:Ljava/lang/String;
    .local v4, result:Ljava/lang/String;
    :goto_29
    return-object v4

    .line 258
    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_2a
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 259
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_38

    .line 261
    :try_start_30
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/dsa/http/HTTPRequestHelper;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_3a

    move-result-object v3

    :cond_38
    :goto_38
    move-object v4, v3

    .line 268
    .end local v3           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    goto :goto_29

    .line 262
    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 263
    .local v0, e:Ljava/io/IOException;
    const-string v6, "SprintZone_HTTP"

    const-string v7, "IO Exception "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method
