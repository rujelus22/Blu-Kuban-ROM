.class public LZW;
.super Ljava/lang/Object;
.source "StreamToWebViewUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 78
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 81
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 84
    :cond_15
    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Landroid/webkit/WebView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, LZW;->a(Ljava/lang/String;Ljava/io/InputStream;Landroid/webkit/WebView;)V

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;Landroid/webkit/WebView;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "The input stream is null."

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "The WebView is null."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v2, 0x0

    .line 59
    :try_start_b
    invoke-static {p1}, LZW;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_22

    move-result-object v2

    .line 63
    :goto_f
    if-eqz v2, :cond_1e

    .line 64
    if-eqz p0, :cond_2b

    .line 65
    const-string v3, "text/html"

    const-string v4, "UTF8"

    const-string v5, ""

    move-object v0, p2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_33

    .line 75
    :goto_21
    return-void

    .line 60
    :catch_22
    move-exception v0

    .line 61
    const-string v0, "StreamToWebViewUtils"

    const-string v1, "Unable to load data from the stream."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 67
    :cond_2b
    const-string v0, "text/html"

    const-string v1, "UTF8"

    invoke-virtual {p2, v2, v0, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 72
    :catch_33
    move-exception v0

    goto :goto_21
.end method
