.class Lcom/google/android/imageloader/ContentURLConnection;
.super Ljava/net/URLConnection;
.source "ContentURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionOutputStream;,
        Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionInputStream;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mInputStreamClosed:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mOutputStreamClosed:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/net/URL;)V
    .registers 5
    .parameter "resolver"
    .parameter "url"

    .prologue
    .line 52
    invoke-direct {p0, p2}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 53
    iput-object p1, p0, Lcom/google/android/imageloader/ContentURLConnection;->mResolver:Landroid/content/ContentResolver;

    .line 54
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, spec:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/imageloader/ContentURLConnection;->mUri:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/imageloader/ContentURLConnection;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/imageloader/ContentURLConnection;->mInputStreamClosed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/imageloader/ContentURLConnection;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/imageloader/ContentURLConnection;->mOutputStreamClosed:Z

    return p1
.end method


# virtual methods
.method public connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/imageloader/ContentURLConnection;->getDoInput()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 64
    iget-object v2, p0, Lcom/google/android/imageloader/ContentURLConnection;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/imageloader/ContentURLConnection;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .local v0, in:Ljava/io/InputStream;
    new-instance v2, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionInputStream;

    invoke-direct {v2, p0, v0}, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionInputStream;-><init>(Lcom/google/android/imageloader/ContentURLConnection;Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/google/android/imageloader/ContentURLConnection;->mInputStream:Ljava/io/InputStream;

    .line 67
    .end local v0           #in:Ljava/io/InputStream;
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/imageloader/ContentURLConnection;->getDoOutput()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 68
    iget-object v2, p0, Lcom/google/android/imageloader/ContentURLConnection;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/imageloader/ContentURLConnection;->mUri:Landroid/net/Uri;

    const-string v4, "rwt"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 69
    .local v1, out:Ljava/io/OutputStream;
    new-instance v2, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionOutputStream;

    invoke-direct {v2, p0, v1}, Lcom/google/android/imageloader/ContentURLConnection$ContentURLConnectionOutputStream;-><init>(Lcom/google/android/imageloader/ContentURLConnection;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/android/imageloader/ContentURLConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 71
    .end local v1           #out:Ljava/io/OutputStream;
    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/imageloader/ContentURLConnection;->mConnected:Z

    .line 72
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mConnected:Z

    if-nez v0, :cond_7

    .line 99
    invoke-virtual {p0}, Lcom/google/android/imageloader/ContentURLConnection;->connect()V

    .line 101
    :cond_7
    invoke-super {p0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 7

    .prologue
    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/google/android/imageloader/ContentURLConnection;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/google/android/imageloader/ContentURLConnection;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 113
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_1d

    move-result-wide v1

    .line 114
    .local v1, length:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1e

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1e

    .line 115
    long-to-int v3, v1

    .line 119
    .end local v0           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v1           #length:J
    :goto_1c
    return v3

    :catch_1d
    move-exception v3

    :cond_1e
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/imageloader/ContentURLConnection;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mInputStreamClosed:Z

    if-eqz v0, :cond_c

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mConnected:Z

    if-nez v0, :cond_13

    .line 80
    invoke-virtual {p0}, Lcom/google/android/imageloader/ContentURLConnection;->connect()V

    .line 82
    :cond_13
    iget-object v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mOutputStreamClosed:Z

    if-eqz v0, :cond_c

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mConnected:Z

    if-nez v0, :cond_13

    .line 91
    invoke-virtual {p0}, Lcom/google/android/imageloader/ContentURLConnection;->connect()V

    .line 93
    :cond_13
    iget-object v0, p0, Lcom/google/android/imageloader/ContentURLConnection;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method
