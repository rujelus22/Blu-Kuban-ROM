.class public Lcom/google/android/apps/books/util/BooksHttpFetcher;
.super Ljava/lang/Object;
.source "BooksHttpFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;


# instance fields
.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/BooksContext;

    .line 29
    .local v0, booksContext:Lcom/google/android/apps/books/common/BooksContext;
    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v1

    .line 30
    .local v1, getter:Lcom/google/android/apps/books/net/ResponseGetter;
    iput-object v1, p0, Lcom/google/android/apps/books/util/BooksHttpFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 31
    return-void
.end method


# virtual methods
.method public getResponseBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_5
    iget-object v4, p0, Lcom/google/android/apps/books/util/BooksHttpFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_38

    invoke-virtual {v4, v1, v5, v6}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 39
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_1b} :catch_1d

    move-result-object v4

    return-object v4

    .line 40
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :catch_1d
    move-exception v0

    .line 41
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v4, "BooksHttpFetcher"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 42
    const-string v4, "BooksHttpFetcher"

    const-string v5, "protocol error while acquiring token: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_2e
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .line 45
    .local v3, thrown:Ljava/io/IOException;
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    throw v3

    .line 37
    nop

    :array_38
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
    .end array-data
.end method
