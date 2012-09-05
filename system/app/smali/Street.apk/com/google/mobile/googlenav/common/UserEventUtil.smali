.class public Lcom/google/mobile/googlenav/common/UserEventUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static userEventLogContainsEventType([BLjava/util/Set;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v4, 0x8

    const-wide/16 v9, 0x2

    const/4 v8, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v8

    :goto_1e
    return v0

    :cond_1f
    move v2, v8

    :goto_20
    if-ge v2, v0, :cond_69

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v0, 0x1

    goto :goto_1e

    :cond_32
    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_3e

    move v0, v8

    goto :goto_1e

    :cond_3e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4e

    move v0, v8

    goto :goto_1e

    :cond_4e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/io/DataInputStream;->skip(J)J
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_56} :catch_61

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5e

    move v0, v8

    goto :goto_1e

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :catch_61
    move-exception v0

    const-string v1, "REQUEST"

    invoke-static {v1, v0}, Lcom/google/mobile/googlenav/common/ExceptionReporter;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v8

    goto :goto_1e

    :cond_69
    move v0, v8

    goto :goto_1e
.end method
