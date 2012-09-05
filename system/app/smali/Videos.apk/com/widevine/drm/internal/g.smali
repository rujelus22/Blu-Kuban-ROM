.class public Lcom/widevine/drm/internal/g;
.super Lcom/widevine/drm/internal/o;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private j:Ljava/lang/Thread;

.field private k:Z

.field private l:Lcom/widevine/drmapi/android/WVStatus;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/o;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    iput-object v0, p0, Lcom/widevine/drm/internal/g;->l:Lcom/widevine/drmapi/android/WVStatus;

    const-string v0, ""

    iput-object v0, p0, Lcom/widevine/drm/internal/g;->m:Ljava/lang/String;

    :try_start_b
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/widevine/drm/internal/g;->a:Ljava/io/RandomAccessFile;
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_26} :catch_33

    new-instance v0, Lcom/widevine/drm/internal/h;

    invoke-direct {v0, p0}, Lcom/widevine/drm/internal/h;-><init>(Lcom/widevine/drm/internal/g;)V

    iput-object v0, p0, Lcom/widevine/drm/internal/g;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/widevine/drm/internal/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_33
    move-exception v0

    new-instance v1, Lcom/widevine/drm/internal/ad;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lcom/widevine/drm/internal/g;[BI)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0, p2}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP media player request:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "HEAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_188

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drm/internal/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_188

    const-string v0, "127.0.0.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_188

    const-string v0, "Close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/widevine/drm/internal/g;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_61

    iget-object v0, p0, Lcom/widevine/drm/internal/g;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    :cond_61
    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    aput-wide v6, v4, v5

    invoke-static {v2, v4}, Lcom/widevine/drm/internal/g;->a(Ljava/lang/String;[J)Z

    move-result v5

    const/4 v2, 0x0

    aget-wide v6, v4, v2

    iget-object v2, p0, Lcom/widevine/drm/internal/g;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_171

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    aput-wide v7, v2, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    invoke-virtual {p0, v2}, Lcom/widevine/drm/internal/g;->a([J)V

    iget-object v6, p0, Lcom/widevine/drm/internal/g;->a:Ljava/io/RandomAccessFile;

    const/4 v7, 0x0

    aget-wide v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_9e
    if-eqz v5, :cond_184

    const-string v2, "HTTP/1.1 206 Partial Content\r\nDate: "

    :goto_a2
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Server: Localhost/1.0 (Android)\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Accept-Ranges: bytes\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Content-Length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const/4 v8, 0x0

    aget-wide v8, v4, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_18a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Content-Range: bytes "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget-wide v5, v4, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_148
    if-eqz v3, :cond_15d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Connection: close\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Type: video/mp4\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_170
    return-object v0

    :cond_171
    new-instance v2, Lcom/widevine/drm/internal/b;

    sget-object v6, Lcom/widevine/drm/internal/x;->d:Lcom/widevine/drm/internal/x;

    sget-object v7, Lcom/widevine/drmapi/android/WVStatus;->OutOfRange:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v2, v6, v7}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v6, p0, Lcom/widevine/drm/internal/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/widevine/drm/internal/b;->a()V

    goto/16 :goto_9e

    :cond_184
    const-string v2, "HTTP/1.1 200 OK\r\nDate: "

    goto/16 :goto_a2

    :cond_188
    const/4 v0, 0x0

    goto :goto_170

    :cond_18a
    move-object v0, v2

    goto :goto_148
.end method

.method static synthetic a(Lcom/widevine/drm/internal/g;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/widevine/drm/internal/g;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/widevine/drm/internal/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/widevine/drm/internal/g;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/widevine/drm/internal/g;)Ljava/io/RandomAccessFile;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/g;->a:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic d(Lcom/widevine/drm/internal/g;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/g;->l:Lcom/widevine/drmapi/android/WVStatus;

    return-object v0
.end method

.method static synthetic e(Lcom/widevine/drm/internal/g;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/g;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/widevine/drm/internal/g;->f:Z

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

    if-ne p2, v0, :cond_9

    iput-boolean v1, p0, Lcom/widevine/drm/internal/g;->g:Z

    :cond_9
    iput-boolean v1, p0, Lcom/widevine/drm/internal/g;->k:Z

    iput-object p2, p0, Lcom/widevine/drm/internal/g;->l:Lcom/widevine/drmapi/android/WVStatus;

    iput-object p3, p0, Lcom/widevine/drm/internal/g;->m:Ljava/lang/String;

    :try_start_f
    iget-object v0, p0, Lcom/widevine/drm/internal/g;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method
