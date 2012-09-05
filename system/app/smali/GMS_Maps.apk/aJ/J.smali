.class public LaJ/J;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field private b:Lam/b;

.field private c:Lam/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, LaJ/J;->a:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[B)Z
    .registers 7

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p2

    add-int/2addr v2, p1

    if-ge v0, v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    move v0, v1

    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_16

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v1, 0x1

    goto :goto_6
.end method

.method private static b([B)Lam/b;
    .registers 5

    sget-object v0, LaJ/J;->a:[B

    array-length v0, v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lar/e;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    if-gez v1, :cond_20

    invoke-static {v0}, Lak/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_20
    add-int v1, v3, v2

    new-instance v1, Lam/b;

    sget-object v2, LbD/gy;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v0}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method private e()Lam/b;
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, LaJ/J;->c:Lam/b;

    if-nez v0, :cond_19

    iget-object v0, p0, LaJ/J;->b:Lam/b;

    if-eqz v0, :cond_19

    iget-object v0, p0, LaJ/J;->b:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, LaJ/J;->b:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaJ/J;->c:Lam/b;

    :cond_19
    iget-object v0, p0, LaJ/J;->c:Lam/b;

    return-object v0
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, LaJ/J;->b:Lam/b;

    return-object v0
.end method

.method public a([B)[B
    .registers 6

    const/4 v1, 0x0

    sget-object v0, LaJ/J;->a:[B

    invoke-static {p1, v1, v0}, LaJ/J;->a([BI[B)Z

    move-result v0

    if-eqz v0, :cond_28

    :try_start_9
    invoke-static {p1}, LaJ/J;->b([B)Lam/b;

    move-result-object v0

    iput-object v0, p0, LaJ/J;->b:Lam/b;

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/J;->c:Lam/b;

    sget-object v0, LaJ/J;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, LaJ/J;->b:Lam/b;

    invoke-virtual {v1}, Lam/b;->d()I

    move-result v1

    add-int/2addr v1, v0

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_29

    const/4 v2, 0x0

    :try_start_23
    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_30

    move-object p1, v0

    :cond_28
    :goto_28
    return-object p1

    :catch_29
    move-exception v0

    :goto_2a
    const-string v1, "IOException reading map tile info"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :catch_30
    move-exception v1

    move-object p1, v0

    move-object v0, v1

    goto :goto_2a
.end method

.method public b()[Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, LaJ/J;->e()Lam/b;

    move-result-object v2

    if-nez v2, :cond_b

    new-array v0, v1, [Ljava/lang/String;

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    :goto_11
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v5, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public c()[Ljava/lang/String;
    .registers 7

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, LaJ/J;->e()Lam/b;

    move-result-object v2

    if-nez v2, :cond_b

    new-array v0, v1, [Ljava/lang/String;

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    :goto_11
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v5, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public d()I
    .registers 5

    const/4 v3, 0x3

    const/4 v0, -0x1

    invoke-direct {p0}, LaJ/J;->e()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v3}, Lam/b;->d(I)I

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "year=0"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method
