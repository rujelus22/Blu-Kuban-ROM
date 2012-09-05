.class public Laf/o;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lam/b;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;J)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;J)Lam/b;
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LM/d;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Lam/b;->b(IJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lam/b;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lam/b;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lam/b;->e(I)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method

.method public static a(Lam/b;Ljava/util/Set;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lam/b;->l(I)I

    move v0, v1

    :goto_7
    invoke-virtual {p0, v4}, Lam/b;->l(I)I

    move-result v3

    if-ge v0, v3, :cond_23

    invoke-virtual {p0, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3, v2}, Lam/b;->d(I)I

    move-result v3

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v1, v2

    :cond_23
    return v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static a([BLjava/util/Set;)Z
    .registers 13

    const-wide/16 v6, 0x8

    const-wide/16 v9, 0x2

    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Laf/m;->c()Z

    move-result v1

    if-nez v1, :cond_60

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_24

    :cond_23
    :goto_23
    return v0

    :cond_24
    move v1, v0

    :goto_25
    if-ge v1, v3, :cond_23

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v0, 0x1

    goto :goto_23

    :cond_37
    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_23

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-nez v4, :cond_23

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-nez v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_60
    new-instance v1, Lam/b;

    sget-object v2, LbD/hB;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, p0}, Lam/b;->a([B)Lam/b;

    invoke-static {v1, p1}, Laf/o;->a(Lam/b;Ljava/util/Set;)Z
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6d} :catch_6f

    move-result v0

    goto :goto_23

    :catch_6f
    move-exception v1

    const-string v2, "REQUEST"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
