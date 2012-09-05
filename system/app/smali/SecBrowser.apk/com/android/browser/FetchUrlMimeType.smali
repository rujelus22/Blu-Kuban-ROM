.class Lcom/android/browser/FetchUrlMimeType;
.super Ljava/lang/Thread;
.source "FetchUrlMimeType.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCookies:Ljava/lang/String;

.field private mRequest:Landroid/app/DownloadManager$Request;

.field private mUri:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "request"
    .parameter "uri"
    .parameter "cookies"
    .parameter "userAgent"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FetchUrlMimeType;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    .line 57
    iput-object p3, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/android/browser/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 66
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 67
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v5

    .line 68
    .local v5, httpHost:Lorg/apache/http/HttpHost;
    if-eqz v5, :cond_17

    .line 69
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    invoke-static {v12, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 71
    :cond_17
    new-instance v9, Lorg/apache/http/client/methods/HttpHead;

    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-direct {v9, v12}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 73
    .local v9, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    if-eqz v12, :cond_31

    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_31

    .line 74
    const-string v12, "Cookie"

    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_31
    const/4 v7, 0x0

    .line 79
    .local v7, mimeType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, contentDisposition:Ljava/lang/String;
    :try_start_33
    invoke-virtual {v0, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 85
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_69

    .line 86
    const-string v12, "Content-Type"

    invoke-interface {v10, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 87
    .local v4, header:Lorg/apache/http/Header;
    if-eqz v4, :cond_5d

    .line 88
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 89
    const/16 v12, 0x3b

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 90
    .local v11, semicolonIndex:I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5d

    .line 91
    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 94
    .end local v11           #semicolonIndex:I
    :cond_5d
    const-string v12, "Content-Disposition"

    invoke-interface {v10, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 95
    .local v2, contentDispositionHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_69

    .line 96
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_68} :catch_a8
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_68} :catch_b0

    move-result-object v1

    .line 104
    .end local v2           #contentDispositionHeader:Lorg/apache/http/Header;
    .end local v4           #header:Lorg/apache/http/Header;
    :cond_69
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 107
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :goto_6c
    if-eqz v7, :cond_98

    .line 108
    const-string v12, "text/plain"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7e

    const-string v12, "application/octet-stream"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_93

    .line 110
    :cond_7e
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, newMimeType:Ljava/lang/String;
    if-eqz v8, :cond_93

    .line 114
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v12, v8}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 117
    .end local v8           #newMimeType:Ljava/lang/String;
    :cond_93
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v12, v1, v7}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    :cond_98
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mContext:Landroid/content/Context;

    const-string v13, "download"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/DownloadManager;

    .line 128
    .local v6, manager:Landroid/app/DownloadManager;
    iget-object v12, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v6, v12}, Landroid/app/DownloadManager;->secenqueue(Landroid/app/DownloadManager$Request;)J

    .line 130
    return-void

    .line 99
    .end local v6           #manager:Landroid/app/DownloadManager;
    :catch_a8
    move-exception v3

    .line 100
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_a9
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b8

    .line 104
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_6c

    .line 101
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catch_b0
    move-exception v3

    .line 102
    .local v3, ex:Ljava/io/IOException;
    :try_start_b1
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b8

    .line 104
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_6c

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_b8
    move-exception v12

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v12
.end method
