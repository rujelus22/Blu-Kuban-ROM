.class public Lcom/widevine/drm/internal/i;
.super Lcom/widevine/drm/internal/o;


# instance fields
.field a:I

.field private j:Landroid/net/Uri;

.field private k:Ljava/lang/Thread;

.field private l:Z

.field private m:Lcom/widevine/drmapi/android/WVStatus;

.field private n:Ljava/lang/String;

.field private o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/widevine/drm/internal/ad;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/widevine/drm/internal/o;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/widevine/drm/internal/i;->a:I

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    iput-object v0, p0, Lcom/widevine/drm/internal/i;->m:Lcom/widevine/drmapi/android/WVStatus;

    const-string v0, ""

    iput-object v0, p0, Lcom/widevine/drm/internal/i;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/widevine/drm/internal/i;->o:J

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/widevine/drm/internal/i;->j:Landroid/net/Uri;

    invoke-static {}, Lcom/widevine/drm/internal/HTTPDecrypter;->isOnline()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "Unable to connect to remote server. Device is offline"

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/widevine/drm/internal/ad;

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    const-string v2, "Network inaccessible (hrp:hrp)"

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Lcom/widevine/drm/internal/i;->j:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid host in content url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/widevine/drm/internal/ad;

    sget-object v1, Lcom/widevine/drmapi/android/WVStatus;->CantConnectToMediaServer:Lcom/widevine/drmapi/android/WVStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid host in content url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (hrp:hrp)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/widevine/drm/internal/ad;-><init>(Lcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance v0, Lcom/widevine/drm/internal/j;

    invoke-direct {v0, p0}, Lcom/widevine/drm/internal/j;-><init>(Lcom/widevine/drm/internal/i;)V

    iput-object v0, p0, Lcom/widevine/drm/internal/i;->k:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/widevine/drm/internal/i;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a([BI)I
    .registers 8

    const/16 v5, 0x54

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x48

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    if-ne v1, v5, :cond_1e

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v5, :cond_1e

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1f

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const/4 v1, 0x4

    :goto_20
    add-int/lit8 v2, p1, -0x3

    if-ge v1, v2, :cond_1e

    aget-byte v2, p0, v1

    if-ne v2, v4, :cond_3d

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_3d

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_3d

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_3d

    add-int/lit8 v0, v1, 0x4

    goto :goto_1e

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method static synthetic a(Lcom/widevine/drm/internal/i;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/widevine/drm/internal/i;->j:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/widevine/drm/internal/i;Ljava/lang/String;[J)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0xd

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP remote server response:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "Content-Length: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_70

    add-int/lit8 v2, v0, 0x10

    invoke-virtual {p1, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v6, :cond_70

    iget-wide v0, p0, Lcom/widevine/drm/internal/i;->o:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_39

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/widevine/drm/internal/i;->o:J

    :cond_39
    aget-wide v0, p2, v10

    aget-wide v4, p2, v7

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4b

    invoke-virtual {p0}, Lcom/widevine/drm/internal/i;->a()J

    move-result-wide v0

    :cond_4b
    cmp-long v4, v0, v8

    if-eqz v4, :cond_70

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_70
    const-string v0, "Content-Range: bytes "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_c5

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v6, :cond_c5

    invoke-virtual {p0}, Lcom/widevine/drm/internal/i;->a()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_c5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v2, p2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v2, p2, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/widevine/drm/internal/i;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c5
    return-object p1
.end method

.method static synthetic a(Lcom/widevine/drm/internal/i;[BI[J)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v9, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v5, p2}, Ljava/lang/String;-><init>([BII)V

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

    if-nez v0, :cond_2d

    const-string v0, "HEAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/widevine/drm/internal/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "127.0.0.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Lcom/widevine/drm/internal/i;->a()J

    move-result-wide v0

    cmp-long v3, v0, v7

    if-nez v3, :cond_5a

    iget-wide v0, p0, Lcom/widevine/drm/internal/i;->o:J

    :cond_5a
    aput-wide v7, p3, v5

    cmp-long v3, v0, v7

    if-lez v3, :cond_7b

    sub-long/2addr v0, v9

    aput-wide v0, p3, v6

    :goto_63
    invoke-static {v2, p3}, Lcom/widevine/drm/internal/i;->a(Ljava/lang/String;[J)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    aget-wide v3, p3, v5

    aput-wide v3, v1, v5

    aget-wide v3, p3, v6

    add-long/2addr v3, v9

    aput-wide v3, v1, v6

    invoke-virtual {p0, v1}, Lcom/widevine/drm/internal/i;->a([J)V

    invoke-direct {p0, v2, v0, v1}, Lcom/widevine/drm/internal/i;->a(Ljava/lang/String;Z[J)Ljava/lang/String;

    move-result-object v0

    :goto_7a
    return-object v0

    :cond_7b
    aput-wide v7, p3, v6

    goto :goto_63

    :cond_7e
    const/4 v0, 0x0

    goto :goto_7a
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, -0x1

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*HTTP/\\d.\\d\\s30\\d.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Location:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    :goto_25
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v3, :cond_43

    if-eq v1, v3, :cond_42

    if-ge v2, v1, :cond_43

    :cond_42
    move v1, v2

    :cond_43
    if-ne v1, v3, :cond_49

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_49
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/lang/String;Z[J)Ljava/lang/String;
    .registers 14

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "127.0.0.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_42

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3a

    if-ne v3, v6, :cond_42

    add-int/lit8 v0, v1, 0x1

    move v3, v2

    move v1, v4

    :goto_22
    const/4 v6, 0x5

    if-ge v3, v6, :cond_3e

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3c

    add-int/lit8 v0, v0, 0x1

    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_3c
    move v1, v2

    goto :goto_39

    :cond_3e
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_42
    const-string v1, "HEAD"

    const-string v3, "GET"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/widevine/drm/internal/i;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/widevine/drm/internal/i;->j:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/widevine/drm/internal/i;->j:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_cc

    const-string v0, "Range: bytes="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_c6

    add-int/lit8 v3, v0, 0xd

    const/16 v0, 0xd

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v7, :cond_114

    const-string v0, ""

    aget-wide v6, p3, v4

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_97

    aget-wide v6, p3, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v6, p3, v2

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c4
    move-object v1, v0

    :cond_c5
    :goto_c5
    return-object v1

    :cond_c6
    const-string v0, "HTTP server header malformed - missing termination"

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    goto :goto_c5

    :cond_cc
    aget-wide v5, p3, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_c5

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Range: bytes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v5, p3, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, p3, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c5

    :cond_114
    move-object v0, v1

    goto :goto_c4
.end method

.method static synthetic a(Lcom/widevine/drm/internal/i;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/widevine/drm/internal/i;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/widevine/drm/internal/i;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/widevine/drm/internal/i;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/widevine/drm/internal/i;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/i;->j:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lcom/widevine/drm/internal/i;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/i;->m:Lcom/widevine/drmapi/android/WVStatus;

    return-object v0
.end method

.method static synthetic e(Lcom/widevine/drm/internal/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/i;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ZLcom/widevine/drmapi/android/WVStatus;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/widevine/drm/internal/i;->f:Z

    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->AlreadyPlaying:Lcom/widevine/drmapi/android/WVStatus;

    if-ne p2, v0, :cond_9

    iput-boolean v1, p0, Lcom/widevine/drm/internal/i;->g:Z

    :cond_9
    iput-object p2, p0, Lcom/widevine/drm/internal/i;->m:Lcom/widevine/drmapi/android/WVStatus;

    iput-object p3, p0, Lcom/widevine/drm/internal/i;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/widevine/drm/internal/i;->l:Z

    return-void
.end method
