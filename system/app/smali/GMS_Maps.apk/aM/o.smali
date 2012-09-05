.class public LaM/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Lz/g;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:J

.field private e:Lam/b;

.field private f:Lak/m;


# direct methods
.method public constructor <init>(Lak/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaM/o;->f:Lak/m;

    new-instance v0, Lz/g;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, LaM/o;->a:Lz/g;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/o;->b:Ljava/util/Map;

    if-eqz p1, :cond_19

    invoke-direct {p0}, LaM/o;->a()V

    :cond_19
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "star_details_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 10

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/o;->c:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaM/o;->d:J

    new-instance v0, Lam/b;

    sget-object v1, LbC/a;->g:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, LaM/o;->e:Lam/b;

    iget-object v0, p0, LaM/o;->f:Lak/m;

    const-string v1, "star_details_index"

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_6e

    :try_start_1d
    invoke-static {v0}, LaM/o;->b([B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/ByteArrayInputStream;->skip(J)J

    iget-object v0, p0, LaM/o;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    iget-object v0, p0, LaM/o;->e:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_3a
    if-ge v0, v1, :cond_6e

    iget-object v2, p0, LaM/o;->e:Lam/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lam/b;->e(I)J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, LaM/o;->c:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, p0, LaM/o;->d:J

    const-wide/16 v7, 0x1

    add-long v2, v3, v7

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, LaM/o;->d:J
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_62} :catch_65

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :catch_65
    move-exception v0

    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, LaM/o;->c()V

    :cond_6e
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaM/o;->e:Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_25

    iget-object v2, p0, LaM/o;->e:Lam/b;

    invoke-virtual {v2, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v1, p0, LaM/o;->e:Lam/b;

    invoke-virtual {v1, v4, v0}, Lam/b;->g(II)V

    :cond_25
    iget-object v0, p0, LaM/o;->f:Lak/m;

    invoke-interface {v0, p2}, Lak/m;->b(Ljava/lang/String;)Z

    invoke-direct {p0}, LaM/o;->b()V

    return-void

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method static a([B)V
    .registers 7

    const/4 v5, 0x4

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, p0, v5, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v5, :cond_21

    const/16 v3, 0x18

    shr-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    return-void
.end method

.method private b()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_6
    const/4 v2, 0x4

    if-ge v0, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    iget-object v0, p0, LaM/o;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, LaM/o;->a([B)V

    iget-object v1, p0, LaM/o;->f:Lak/m;

    const-string v2, "star_details_index"

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4b

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persistent store write failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_42} :catch_42

    :catch_42
    move-exception v0

    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, LaM/o;->c()V

    :cond_4b
    return-void
.end method

.method private b(Ljava/lang/String;Lam/b;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2b

    :goto_c
    if-eqz v2, :cond_14

    iget-wide v3, p0, LaM/o;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, LaM/o;->a(J)Ljava/lang/String;

    move-result-object v3

    :try_start_1c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_21
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2d

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2b
    move v2, v1

    goto :goto_c

    :cond_2d
    invoke-virtual {p2, v4}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, LaM/o;->a([B)V

    iget-object v4, p0, LaM/o;->f:Lak/m;

    invoke-interface {v4, v1, v3}, Lak/m;->b([BLjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_65

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persistent store write failed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v0

    const-string v1, "PlaceDetailsCache"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v3}, LaM/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    if-eqz v2, :cond_64

    :try_start_67
    iget-object v1, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, LaM/o;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, LaM/o;->d:J

    new-instance v1, Lam/b;

    sget-object v2, LbC/a;->h:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lam/b;->b(IJ)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, p1}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, LaM/o;->e:Lam/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lam/b;->a(ILam/b;)V

    invoke-direct {p0}, LaM/o;->b()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_8f} :catch_5b

    goto :goto_64
.end method

.method static b([B)V
    .registers 8

    const/4 v6, 0x4

    array-length v0, p0

    if-ge v0, v6, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing checksum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, p0, v6, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v6, :cond_36

    aget-byte v3, p0, v0

    const/16 v4, 0x18

    shr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    if-eq v3, v4, :cond_30

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_36
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaM/o;->d:J

    iget-object v0, p0, LaM/o;->e:Lam/b;

    invoke-virtual {v0}, Lam/b;->b()V

    iget-object v0, p0, LaM/o;->f:Lak/m;

    const-string v1, "star_details_"

    invoke-interface {v0, v1}, Lak/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Lam/b;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, LaM/o;->a(J)Ljava/lang/String;

    move-result-object v2

    :try_start_15
    iget-object v0, p0, LaM/o;->f:Lak/m;

    invoke-interface {v0, v2}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/io/IOException;

    const-string v3, "Block not found"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    const-string v3, "PlaceDetailsCache"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v2}, LaM/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_c

    :cond_30
    :try_start_30
    invoke-static {v0}, LaM/o;->b([B)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/io/ByteArrayInputStream;->skip(J)J

    new-instance v0, Lam/b;

    sget-object v4, LbC/a;->a:Lam/e;

    invoke-direct {v0, v4}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v3}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL mismatch: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] != ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_7e} :catch_25
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lam/b;
    .registers 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, LaM/o;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_2c

    if-eqz v0, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, LaM/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    if-nez v0, :cond_c

    iget-object v0, p0, LaM/o;->f:Lak/m;

    if-nez v0, :cond_1e

    move-object v0, v1

    goto :goto_c

    :cond_1e
    invoke-direct {p0, p1}, LaM/o;->e(Ljava/lang/String;)Lam/b;

    move-result-object v0

    if-nez v0, :cond_26

    move-object v0, v1

    goto :goto_c

    :cond_26
    iget-object v1, p0, LaM/o;->a:Lz/g;

    invoke-virtual {v1, p1, v0}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2c

    goto :goto_c

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lam/b;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaM/o;->a:Lz/g;

    invoke-virtual {v0, p1, p2}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LaM/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_21

    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, LaM/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaM/o;->f:Lak/m;

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2}, LaM/o;->b(Ljava/lang/String;Lam/b;)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_21

    goto :goto_12

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, LaM/o;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_27

    if-eqz v0, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    iget-object v0, p0, LaM/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, LaM/o;->f:Lak/m;

    if-eqz v0, :cond_25

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_27

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_c

    :cond_25
    const/4 v0, 0x0

    goto :goto_23

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, LaM/o;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    if-eqz v0, :cond_19

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lam/g;->h(Lam/b;I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_33

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_15
    monitor-exit p0

    return v0

    :cond_17
    move v0, v2

    goto :goto_15

    :cond_19
    :try_start_19
    iget-object v0, p0, LaM/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_15

    :cond_23
    iget-object v0, p0, LaM/o;->f:Lak/m;

    if-eqz v0, :cond_31

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_33

    move-result v0

    if-eqz v0, :cond_31

    :goto_2f
    move v0, v1

    goto :goto_15

    :cond_31
    move v1, v2

    goto :goto_2f

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaM/o;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaM/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaM/o;->f:Lak/m;

    if-eqz v0, :cond_24

    iget-object v0, p0, LaM/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LaM/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LaM/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
