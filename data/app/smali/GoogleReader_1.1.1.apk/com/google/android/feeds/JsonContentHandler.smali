.class public abstract Lcom/google/android/feeds/JsonContentHandler;
.super Ljava/net/ContentHandler;
.source "JsonContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getContent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->toString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/android/feeds/JsonContentHandler;->getContent(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 39
    :catch_9
    move-exception v0

    .line 43
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 44
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    throw v1
.end method
