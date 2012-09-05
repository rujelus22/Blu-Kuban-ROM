.class public final Lcom/widevine/drm/internal/v;
.super Ljava/lang/Thread;


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field private a:Lcom/widevine/drm/internal/x;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:Lcom/widevine/drm/internal/HTTPDecrypter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "/sdcard/media/"

    sput-object v0, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/widevine/drm/internal/x;JJJ)V
    .registers 10

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide v0, p0, Lcom/widevine/drm/internal/v;->c:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/v;->d:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/v;->e:J

    iput-object p1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    const-string v0, ""

    iput-object v0, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/widevine/drm/internal/v;->c:J

    iput-wide p4, p0, Lcom/widevine/drm/internal/v;->d:J

    iput-wide p6, p0, Lcom/widevine/drm/internal/v;->e:J

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    return-void
.end method

.method public constructor <init>(Lcom/widevine/drm/internal/x;Ljava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide v0, p0, Lcom/widevine/drm/internal/v;->c:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/v;->d:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/v;->e:J

    iput-object p1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    iput-object p2, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    return-void
.end method

.method private a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/widevine/drm/internal/b;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    invoke-direct {v0, v1, p1}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .registers 13

    const/16 v0, 0x1400

    const/16 v5, 0x2f

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v6, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v0, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_210

    :cond_16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_23

    const/16 v1, 0x50

    :cond_23
    :try_start_23
    new-instance v5, Ljava/net/Socket;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_2c
    .catch Ljava/net/UnknownHostException; {:try_start_23 .. :try_end_2c} :catch_e7
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_108

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "?"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " HTTP/1.1\r\nHost: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\nRange: bytes=0-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x1000

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_91
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v4, v9, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a1} :catch_129

    :try_start_a1
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_14a

    move-result-object v9

    move v5, v2

    move v1, v2

    :goto_a7
    const/16 v4, 0xc00

    if-ge v1, v4, :cond_3b0

    :try_start_ab
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_b8

    array-length v4, v6

    sub-int/2addr v4, v1

    invoke-virtual {v9, v6, v1, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b6} :catch_16f

    move-result v4

    add-int/2addr v1, v4

    :cond_b8
    if-lez v1, :cond_197

    invoke-static {v6, v1}, Lcom/widevine/drm/internal/i;->a([BI)I

    move-result v4

    if-lez v4, :cond_197

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v6, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v10}, Lcom/widevine/drm/internal/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_197

    move v1, v3

    move-object v0, v4

    move v4, v2

    :goto_ce
    :try_start_ce
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d4} :catch_39e

    :goto_d4
    if-nez v1, :cond_16

    invoke-static {v6, v4}, Lcom/widevine/drm/internal/i;->a([BI)I

    move-result v1

    sub-int v0, v4, v1

    if-gtz v1, :cond_1cc

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "No HTTP header (rt:rl)"

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    :goto_e6
    return v0

    :catch_e7
    move-exception v1

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (rt:rl)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto :goto_e6

    :catch_108
    move-exception v1

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new socket IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (rt:rl)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto :goto_e6

    :catch_129
    move-exception v1

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while writing to media server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (rt:rl)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto :goto_e6

    :catch_14a
    move-exception v1

    :try_start_14b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_39b

    :goto_14e
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while retrieving input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (rt:rl)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :catch_16f
    move-exception v1

    :try_start_170
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_176} :catch_3a4

    :goto_176
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while retrieving data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (rt:rl)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :cond_197
    const-wide/16 v10, 0xa

    :try_start_199
    invoke-static {v10, v11}, Lcom/widevine/drm/internal/v;->sleep(J)V
    :try_end_19c
    .catch Ljava/lang/InterruptedException; {:try_start_199 .. :try_end_19c} :catch_1c9

    add-int/lit8 v4, v5, 0xa

    :goto_19e
    const/16 v5, 0x2710

    if-le v4, v5, :cond_3ad

    :try_start_1a2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a8} :catch_3a1

    :goto_1a8
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->LostConnection:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media server taking too long to respond: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (rt:rl)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :catch_1c9
    move-exception v4

    move v4, v5

    goto :goto_19e

    :cond_1cc
    if-gtz v0, :cond_1d8

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "No content (rt:rl)"

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :cond_1d8
    array-length v4, v6

    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1de

    array-length v0, v6

    sub-int/2addr v0, v1

    :cond_1de
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v0, v4, :cond_1e8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :cond_1e8
    invoke-virtual {v7, v6, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_1eb
    :try_start_1eb
    iget-object v1, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v4, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    invoke-virtual {v5}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v1, v4, v5, v6}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1fa
    .catch Lcom/widevine/drm/internal/ad; {:try_start_1eb .. :try_end_1fa} :catch_305

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    const-string v4, ""

    invoke-virtual {v1, v7, v0, v4}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/nio/ByteBuffer;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x3

    if-ge v1, v4, :cond_312

    const-string v0, "Decrypt call Error (rt:rl)"

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :cond_210
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3aa

    sget-object v1, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_230

    sget-object v1, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    sget-object v4, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_29a

    :cond_230
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_29a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_24d
    :try_start_24d
    const-string v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a7

    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_25f
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26d
    .catch Ljava/io/FileNotFoundException; {:try_start_24d .. :try_end_26d} :catch_2ae
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_26d} :catch_2d0

    if-gtz v0, :cond_2f2

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No data present in file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (rt:rl)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :cond_29a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/widevine/drm/internal/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_24d

    :catch_2ae
    move-exception v0

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found (rt:rl)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :catch_2d0
    move-exception v0

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->FileNotPresent:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " read (rt:rl)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :cond_2f2
    array-length v1, v6

    if-le v0, v1, :cond_2f6

    array-length v0, v6

    :cond_2f6
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_300

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :cond_300
    invoke-virtual {v7, v6, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_1eb

    :catch_305
    move-exception v0

    iget-object v1, v0, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/ad;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :cond_312
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v0, v0, v5

    packed-switch v1, :pswitch_data_3b4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decryption Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (rt:rl)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :pswitch_34f
    if-gez v4, :cond_398

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decryption Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (rt:rl)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {p0, v1, v0}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_e6

    :pswitch_37c
    new-instance v0, Lcom/widevine/drm/internal/b;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v3}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    const-string v1, "Content is not encrypted"

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/widevine/drm/internal/b;->a(Z)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    move v0, v2

    goto/16 :goto_e6

    :cond_398
    move v0, v3

    goto/16 :goto_e6

    :catch_39b
    move-exception v1

    goto/16 :goto_14e

    :catch_39e
    move-exception v5

    goto/16 :goto_d4

    :catch_3a1
    move-exception v1

    goto/16 :goto_1a8

    :catch_3a4
    move-exception v1

    goto/16 :goto_176

    :cond_3a7
    move-object v0, v1

    goto/16 :goto_25f

    :cond_3aa
    move-object v1, v0

    goto/16 :goto_24d

    :cond_3ad
    move v5, v4

    goto/16 :goto_a7

    :cond_3b0
    move v4, v1

    move v1, v2

    goto/16 :goto_ce

    :pswitch_data_3b4
    .packed-switch 0x0
        :pswitch_34f
        :pswitch_37c
    .end packed-switch
.end method

.method private a(JJJ)Z
    .registers 16

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->isOnline()Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Lcom/widevine/drm/internal/b;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToDrmServer:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    const-string v1, "Network inaccessible"

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/widevine/drm/internal/b;->a(Z)V

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/widevine/drm/internal/b;->b(JJJ)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    move v0, v7

    :goto_28
    return v0

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    invoke-virtual {v2}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_38
    .catch Lcom/widevine/drm/internal/ad; {:try_start_29 .. :try_end_38} :catch_4b

    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/widevine/drm/internal/HTTPDecrypter;->refreshLicense(JJJ)I

    move-result v0

    invoke-static {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(I)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-eq v0, v1, :cond_70

    move v0, v7

    goto :goto_28

    :catch_4b
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/widevine/drm/internal/b;

    iget-object v2, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    iget-object v3, v1, Lcom/widevine/drm/internal/ad;->a:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v2, v3}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v2, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/widevine/drm/internal/ad;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/widevine/drm/internal/b;->a(Z)V

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/widevine/drm/internal/b;->b(JJJ)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    move v0, v7

    goto :goto_28

    :cond_70
    move v0, v8

    goto :goto_28
.end method


# virtual methods
.method public final run()V
    .registers 8

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/widevine/drm/internal/w;->a:[I

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_168

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected requestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    invoke-virtual {v1}, Lcom/widevine/drm/internal/x;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    :pswitch_2f
    return-void

    :pswitch_30
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Lcom/widevine/drm/internal/b;

    sget-object v1, Lcom/widevine/drm/internal/x;->a:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    goto :goto_2f

    :cond_47
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    const-string v1, "AssetDBWasCorrupted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Lcom/widevine/drm/internal/b;

    sget-object v1, Lcom/widevine/drm/internal/x;->a:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->AssetDBWasCorrupted:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    goto :goto_2f

    :cond_5e
    new-instance v0, Lcom/widevine/drm/internal/b;

    sget-object v1, Lcom/widevine/drm/internal/x;->a:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    goto :goto_2f

    :pswitch_70
    new-instance v0, Lcom/widevine/drm/internal/b;

    sget-object v1, Lcom/widevine/drm/internal/x;->b:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    goto :goto_2f

    :pswitch_7d
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/HTTPDecrypter;->registerAsset(Ljava/lang/String;)I

    goto :goto_2f

    :pswitch_85
    invoke-direct {p0}, Lcom/widevine/drm/internal/v;->a()Z

    goto :goto_2f

    :pswitch_89
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/HTTPDecrypter;->unregisterAsset(Ljava/lang/String;)I

    goto :goto_2f

    :pswitch_91
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->queryLicenses()I

    goto :goto_2f

    :pswitch_97
    iget-wide v0, p0, Lcom/widevine/drm/internal/v;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a9

    iget-wide v0, p0, Lcom/widevine/drm/internal/v;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a9

    iget-wide v0, p0, Lcom/widevine/drm/internal/v;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b6

    :cond_a9
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-wide v1, p0, Lcom/widevine/drm/internal/v;->c:J

    iget-wide v3, p0, Lcom/widevine/drm/internal/v;->d:J

    iget-wide v5, p0, Lcom/widevine/drm/internal/v;->e:J

    invoke-virtual/range {v0 .. v6}, Lcom/widevine/drm/internal/HTTPDecrypter;->queryLicense(JJJ)I

    goto/16 :goto_2f

    :cond_b6
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/HTTPDecrypter;->queryLicense(Ljava/lang/String;)I

    goto/16 :goto_2f

    :pswitch_bf
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->d()V

    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->queryRegisteredAssets()I

    invoke-static {}, Lcom/widevine/drm/internal/s;->a()Lcom/widevine/drm/internal/s;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->a:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {v0, v1, v2}, Lcom/widevine/drm/internal/s;->a(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    goto/16 :goto_2f

    :pswitch_d4
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->e()Lcom/widevine/drm/internal/f;

    move-result-object v0

    if-nez v0, :cond_e8

    new-instance v0, Lcom/widevine/drm/internal/b;

    sget-object v1, Lcom/widevine/drm/internal/x;->k:Lcom/widevine/drm/internal/x;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    goto/16 :goto_2f

    :cond_e8
    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->b()Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->c()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->d()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->e()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/widevine/drm/internal/v;->a(JJJ)Z

    goto/16 :goto_2f

    :cond_106
    invoke-direct {p0}, Lcom/widevine/drm/internal/v;->a()Z

    goto/16 :goto_2f

    :pswitch_10b
    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->d()V

    iget-wide v0, p0, Lcom/widevine/drm/internal/v;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_120

    iget-wide v0, p0, Lcom/widevine/drm/internal/v;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_120

    iget-wide v0, p0, Lcom/widevine/drm/internal/v;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12c

    :cond_120
    iget-wide v1, p0, Lcom/widevine/drm/internal/v;->c:J

    iget-wide v3, p0, Lcom/widevine/drm/internal/v;->d:J

    iget-wide v5, p0, Lcom/widevine/drm/internal/v;->e:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/widevine/drm/internal/v;->a(JJJ)Z

    goto/16 :goto_2f

    :cond_12c
    iget-object v0, p0, Lcom/widevine/drm/internal/v;->f:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v1, p0, Lcom/widevine/drm/internal/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/HTTPDecrypter;->queryRegisteredAsset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(I)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v0

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v0, v1, :cond_2f

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->e()Lcom/widevine/drm/internal/f;

    move-result-object v0

    if-nez v0, :cond_14b

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->NotLicensed:Lcom/widevine/drmapi/android/WVStatus;

    const-string v1, "Unable to retrieve license (rt:r)"

    invoke-direct {p0, v0, v1}, Lcom/widevine/drm/internal/v;->a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_14b
    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->b()Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->c()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->d()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/widevine/drm/internal/f;->e()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/widevine/drm/internal/v;->a(JJJ)Z

    goto/16 :goto_2f

    :cond_163
    invoke-direct {p0}, Lcom/widevine/drm/internal/v;->a()Z

    goto/16 :goto_2f

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_30
        :pswitch_70
        :pswitch_2f
        :pswitch_7d
        :pswitch_85
        :pswitch_89
        :pswitch_91
        :pswitch_97
        :pswitch_bf
        :pswitch_d4
        :pswitch_10b
    .end packed-switch
.end method
