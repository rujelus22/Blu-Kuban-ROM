.class public abstract Lcom/widevine/drm/internal/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Ljava/net/ServerSocket;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/widevine/drm/internal/HTTPDecrypter;

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:I

.field private j:J

.field private k:Ljava/nio/ByteBuffer;

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_8
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/widevine/drm/internal/o;->b:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/widevine/drm/internal/o;->b:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/widevine/drm/internal/o;->b:Ljava/net/ServerSocket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_75

    iput-object p1, p0, Lcom/widevine/drm/internal/o;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/widevine/drm/internal/o;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/widevine/drm/internal/o;->g:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/widevine/drm/internal/o;->i:I

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/widevine/drm/internal/r;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/o;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/widevine/drm/internal/r;->a(I)Ljava/lang/String;

    invoke-static {v3}, Lcom/widevine/drm/internal/r;->a(I)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drm/internal/o;->b:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drm/internal/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/o;->a:Ljava/lang/String;

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->a()Lcom/widevine/drm/internal/HTTPDecrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/o;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    iput-wide v4, p0, Lcom/widevine/drm/internal/o;->j:J

    iput-boolean v2, p0, Lcom/widevine/drm/internal/o;->e:Z

    iput-wide v4, p0, Lcom/widevine/drm/internal/o;->l:J

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/widevine/drm/internal/o;->m:J

    const/high16 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    return-void

    :catch_75
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server socket error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/widevine/drm/internal/ad;

    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->SystemCallError:Lcom/widevine/drmapi/android/WVStatus;

    invoke-direct {v1, v2, v0}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/String;)J
    .registers 10

    const-wide/16 v0, -0x1

    const-string v2, "[,:\\s\\t]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    const/4 v5, 0x4

    aget-object v5, v2, v5

    const/4 v6, 0x5

    aget-object v6, v2, v6

    const/16 v7, 0xc

    aget-object v2, v2, v7

    const-string v7, "0000000000000000FFFF00000100007F"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2c

    const-string v7, "0100007F"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6c

    :cond_2c
    const-string v3, "0000000000000000FFFF00000100007F"

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "0100007F"

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6c

    :cond_3c
    const/16 v3, 0x3f5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/widevine/drm/internal/o;->b:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6d

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6c

    const/16 v2, 0x10

    :try_start_62
    invoke-static {v4, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_65} :catch_86

    move-result-wide v0

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    :cond_6c
    :goto_6c
    return-wide v0

    :cond_6d
    invoke-virtual {v2, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6c

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6c

    const/16 v2, 0x10

    :try_start_7b
    invoke-static {v6, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_7e} :catch_88

    move-result-wide v0

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    goto :goto_6c

    :catch_86
    move-exception v2

    goto :goto_6c

    :catch_88
    move-exception v2

    goto :goto_6c
.end method

.method protected static a(Ljava/lang/String;[J)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "Range: bytes="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    :goto_b
    return v0

    :cond_c
    add-int/lit8 v2, v2, 0xd

    const/16 v3, 0x2d

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/16 v4, 0xd

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v3, v1, :cond_44

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, p1, v0

    add-int/lit8 v2, v3, 0x1

    if-ge v2, v4, :cond_42

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aget-wide v4, p1, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_42

    aget-wide v4, p1, v1

    cmp-long v0, v2, v4

    if-gez v0, :cond_42

    aput-wide v2, p1, v1

    :cond_42
    :goto_42
    move v0, v1

    goto :goto_b

    :cond_44
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p1, v0

    goto :goto_42
.end method


# virtual methods
.method protected final a()J
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/widevine/drm/internal/o;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v4, v0, v4

    aput v4, v0, v5

    iget-object v1, p0, Lcom/widevine/drm/internal/o;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v1, v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->a([I)V

    aget v1, v0, v4

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    aget v0, v0, v5

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/widevine/drm/internal/o;->j:J

    :cond_23
    iget-wide v0, p0, Lcom/widevine/drm/internal/o;->j:J

    return-wide v0
.end method

.method public final a(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/widevine/drm/internal/b;

    sget-object v1, Lcom/widevine/drm/internal/x;->e:Lcom/widevine/drm/internal/x;

    invoke-direct {v0, v1, p1}, Lcom/widevine/drm/internal/b;-><init>(Lcom/widevine/drm/internal/x;Lcom/widevine/drmapi/android/WVStatus;)V

    iget-object v1, p0, Lcom/widevine/drm/internal/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/widevine/drm/internal/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/widevine/drm/internal/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/widevine/drm/internal/b;->a()V

    return-void
.end method

.method public abstract a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
.end method

.method protected final a([J)V
    .registers 13

    const/4 v10, 0x2

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    aget-wide v1, p1, v7

    shr-long/2addr v1, v9

    and-long/2addr v1, v5

    long-to-int v1, v1

    aput v1, v0, v7

    aget-wide v1, p1, v7

    and-long/2addr v1, v5

    long-to-int v1, v1

    aput v1, v0, v8

    aget-wide v1, p1, v8

    shr-long/2addr v1, v9

    and-long/2addr v1, v5

    long-to-int v1, v1

    aput v1, v0, v10

    const/4 v1, 0x3

    aget-wide v2, p1, v8

    and-long/2addr v2, v5

    long-to-int v2, v2

    aput v2, v0, v1

    iget-object v1, p0, Lcom/widevine/drm/internal/o;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    invoke-virtual {v1, v0}, Lcom/widevine/drm/internal/HTTPDecrypter;->b([I)I

    aget v1, v0, v7

    int-to-long v1, v1

    and-long/2addr v1, v5

    shl-long/2addr v1, v9

    aget v3, v0, v8

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    aput-wide v1, p1, v7

    aget v1, v0, v10

    int-to-long v1, v1

    and-long/2addr v1, v5

    shl-long/2addr v1, v9

    const/4 v3, 0x3

    aget v0, v0, v3

    int-to-long v3, v0

    and-long/2addr v3, v5

    add-long v0, v1, v3

    aput-wide v0, p1, v8

    return-void
.end method

.method protected final b([BI)I
    .registers 13

    const/4 v0, -0x1

    const/high16 v9, -0x100

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget-wide v2, p0, Lcom/widevine/drm/internal/o;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/widevine/drm/internal/o;->l:J

    iget-wide v4, p0, Lcom/widevine/drm/internal/o;->m:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_a6

    new-instance v2, Lcom/widevine/drm/internal/y;

    invoke-direct {v2}, Lcom/widevine/drm/internal/y;-><init>()V

    :try_start_17
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/widevine/drm/internal/y;->a(I)I

    move-result v2

    if-nez v2, :cond_2e

    const/4 v4, 0x1

    sget-object v5, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v6, "serror (21)"

    invoke-virtual {p0, v4, v5, v6}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_2e
    and-int/lit16 v4, v2, 0x3f00

    ushr-int/lit8 v4, v4, 0x8

    rem-int/lit8 v5, v4, 0x5

    if-eq v5, v8, :cond_3e

    const/4 v5, 0x1

    sget-object v6, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v7, "serror (25)"

    invoke-virtual {p0, v5, v6, v7}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_3e
    const v5, 0xff00

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x0

    rem-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v5, 0x0

    rem-int/lit16 v6, v6, 0xff

    const/high16 v7, 0xff

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x10

    add-int/2addr v5, v7

    rem-int/lit16 v5, v5, 0xff

    add-int/2addr v6, v5

    rem-int/lit16 v6, v6, 0xff

    and-int/lit16 v7, v3, 0xff

    add-int/2addr v5, v7

    rem-int/lit16 v5, v5, 0xff

    add-int/2addr v6, v5

    rem-int/lit16 v6, v6, 0xff

    and-int/2addr v3, v9

    ushr-int/lit8 v3, v3, 0x18

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0xff

    add-int v5, v6, v3

    rem-int/lit16 v5, v5, 0xff

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0xff

    add-int v4, v5, v3

    rem-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xff

    and-int v5, v2, v9

    ushr-int/lit8 v5, v5, 0x18

    if-eq v5, v3, :cond_87

    const/4 v3, 0x1

    sget-object v5, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v6, "serror (26)"

    invoke-virtual {p0, v3, v5, v6}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    :cond_87
    and-int/lit16 v2, v2, 0xff

    if-eq v2, v4, :cond_93

    const/4 v2, 0x1

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v4, "serror (27)"

    invoke-virtual {p0, v2, v3, v4}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_93} :catch_b9

    :cond_93
    :goto_93
    iget-wide v2, p0, Lcom/widevine/drm/internal/o;->m:J

    const-wide/16 v4, 0x9f

    cmp-long v2, v2, v4

    if-gez v2, :cond_a2

    iget-wide v2, p0, Lcom/widevine/drm/internal/o;->m:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/widevine/drm/internal/o;->m:J

    :cond_a2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/widevine/drm/internal/o;->l:J

    :cond_a6
    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-gez p2, :cond_f9

    :cond_b8
    :goto_b8
    return v0

    :catch_b9
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v3, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serror (22): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8, v3, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto :goto_93

    :cond_f9
    array-length v2, p1

    if-le p2, v2, :cond_fd

    array-length p2, p1

    :cond_fd
    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p2, v2, :cond_10b

    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    :cond_10b
    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/widevine/drm/internal/o;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    iget-object v3, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/widevine/drm/internal/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Ljava/nio/ByteBuffer;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_b8

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v2, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    aget-object v2, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decrypt: parseResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sparse-switch v3, :sswitch_data_21a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt returned error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (lhp:d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_16a
    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-gt v0, v2, :cond_174

    if-gez v0, :cond_19f

    :cond_174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (lhp:d)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move v0, v1

    :goto_19b
    iput-boolean v1, p0, Lcom/widevine/drm/internal/o;->e:Z

    goto/16 :goto_b8

    :cond_19f
    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/widevine/drm/internal/o;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_19b

    :sswitch_1af
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Unsupported file format (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1b8
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Unsupported data format (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1c1
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->BadMedia:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Decode error (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1ca
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->TamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "serror (23) (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1d3
    iput-boolean v8, p0, Lcom/widevine/drm/internal/o;->e:Z

    iget-object v1, p0, Lcom/widevine/drm/internal/o;->d:Lcom/widevine/drm/internal/HTTPDecrypter;

    sget-object v2, Lcom/widevine/drm/internal/e;->b:Lcom/widevine/drm/internal/e;

    invoke-virtual {v1, v2}, Lcom/widevine/drm/internal/HTTPDecrypter;->a(Lcom/widevine/drm/internal/e;)V

    goto/16 :goto_b8

    :sswitch_1de
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OutOfMemoryError:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Write error (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1e7
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OutOfMemoryError:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Unable to reserve bytes (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1f0
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "End of media"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_1f9
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->LicenseExpired:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_200
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->ClockTamperDetected:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "serror (24) (lhp:d)"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_209
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->HeartbeatError:Lcom/widevine/drmapi/android/WVStatus;

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    :sswitch_210
    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Another playback command has been requested"

    invoke-virtual {p0, v8, v1, v2}, Lcom/widevine/drm/internal/o;->a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    goto/16 :goto_b8

    nop

    :sswitch_data_21a
    .sparse-switch
        0x0 -> :sswitch_16a
        0x1 -> :sswitch_16a
        0x2 -> :sswitch_1af
        0x3 -> :sswitch_1b8
        0x4 -> :sswitch_1c1
        0x5 -> :sswitch_1ca
        0x7 -> :sswitch_1d3
        0x8 -> :sswitch_1e7
        0x9 -> :sswitch_1de
        0x10 -> :sswitch_1f0
        0x64 -> :sswitch_1f9
        0x65 -> :sswitch_200
        0x66 -> :sswitch_209
        0x67 -> :sswitch_209
        0x68 -> :sswitch_209
        0x6a -> :sswitch_210
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Z
    .registers 21

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/proc/net/tcp"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "/proc/net/tcp6"

    aput-object v2, v7, v1

    const-wide/16 v4, -0x1

    const-wide/16 v2, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalHostProxy: mediaPlayerProcessCheck: Pid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", Uid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", port: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/widevine/drm/internal/o;->b:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    :goto_48
    array-length v6, v7

    if-ge v1, v6, :cond_103

    :try_start_4b
    new-instance v8, Ljava/io/RandomAccessFile;

    aget-object v6, v7, v1

    const-string v9, "r"

    invoke-direct {v8, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    :goto_58
    if-eqz v6, :cond_ad

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LocalHostProxy: mediaPlayerProcessCheck: line: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/widevine/drm/internal/o;->a(Ljava/lang/String;)J
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_71} :catch_b3
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_71} :catch_db

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-ltz v6, :cond_12f

    const-wide v11, 0x100000000L

    and-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-eqz v6, :cond_12c

    const-wide v4, 0x100000000L

    xor-long v5, v9, v4

    :goto_8b
    const-wide v11, 0x200000000L

    and-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-eqz v4, :cond_129

    const-wide v2, 0x200000000L

    xor-long/2addr v2, v9

    move-wide v3, v2

    :goto_9e
    :try_start_9e
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_a1} :catch_11d
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_111

    move-result-object v2

    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v2, v16

    move-wide/from16 v18, v5

    move-wide/from16 v4, v18

    move-object v6, v15

    goto :goto_58

    :cond_ad
    :try_start_ad
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b0} :catch_b3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_db

    :goto_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :catch_b3
    move-exception v6

    :goto_b4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    goto :goto_b0

    :catch_db
    move-exception v6

    :goto_dc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    goto :goto_b0

    :cond_103
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_10f

    cmp-long v1, v4, v2

    if-nez v1, :cond_10f

    const/4 v1, 0x1

    :goto_10e
    return v1

    :cond_10f
    const/4 v1, 0x0

    goto :goto_10e

    :catch_111
    move-exception v2

    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v2, v16

    move-wide/from16 v18, v5

    move-wide/from16 v4, v18

    move-object v6, v15

    goto :goto_dc

    :catch_11d
    move-exception v2

    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v2, v16

    move-wide/from16 v18, v5

    move-wide/from16 v4, v18

    move-object v6, v15

    goto :goto_b4

    :cond_129
    move-wide v3, v2

    goto/16 :goto_9e

    :cond_12c
    move-wide v5, v4

    goto/16 :goto_8b

    :cond_12f
    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v5, v17

    move-wide v3, v15

    goto/16 :goto_9e
.end method
