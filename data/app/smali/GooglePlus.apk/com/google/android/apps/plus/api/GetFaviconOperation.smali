.class public Lcom/google/android/apps/plus/api/GetFaviconOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "GetFaviconOperation.java"


# instance fields
.field private final mDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "domain"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 42
    const-string v2, "GET"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/s2/u/0/favicons?domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 44
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mDomain:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetFaviconOperation;->onStartResultProcessing()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetFaviconOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 57
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_9
    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/GetFaviconOperation;->mDomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertFavicon(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_16} :catch_17

    .line 63
    return-void

    .line 58
    :catch_17
    move-exception v1

    .line 59
    .local v1, oome:Ljava/lang/OutOfMemoryError;
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetFaviconOperation OutOfMemoryError on favicon bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v2, Lcom/google/android/apps/plus/api/ProtocolException;

    const-string v3, "Cannot handle downloaded favicon"

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
