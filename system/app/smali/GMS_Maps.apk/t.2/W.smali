.class public abstract Lt/W;
.super Ljava/lang/Object;

# interfaces
.implements Lt/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lt/W;)Z
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lt/W;->b()I

    move-result v8

    invoke-virtual {p1}, Lt/W;->b()I

    move-result v9

    if-eqz v8, :cond_d

    if-nez v9, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lt/W;->c()Lt/L;

    move-result-object v1

    invoke-virtual {p1}, Lt/W;->c()Lt/L;

    move-result-object v3

    move v5, v0

    move-object v6, v1

    :goto_18
    if-ge v5, v8, :cond_d

    invoke-virtual {p0, v5}, Lt/W;->a(I)Lt/L;

    move-result-object v7

    move v1, v0

    move-object v2, v3

    :goto_20
    if-ge v1, v9, :cond_32

    invoke-virtual {p1, v1}, Lt/W;->a(I)Lt/L;

    move-result-object v4

    invoke-static {v6, v7, v2, v4}, Lt/N;->b(Lt/L;Lt/L;Lt/L;Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v0, 0x1

    goto :goto_d

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    goto :goto_20

    :cond_32
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v6, v7

    goto :goto_18
.end method


# virtual methods
.method public abstract a(I)Lt/L;
.end method

.method public a()Lt/V;
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lt/W;->a(I)Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v2

    invoke-virtual {p0, v1}, Lt/W;->a(I)Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v1

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_15
    invoke-virtual {p0}, Lt/W;->b()I

    move-result v5

    if-ge v0, v5, :cond_4e

    invoke-virtual {p0, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v5

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v5

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v5

    invoke-virtual {v5}, Lt/L;->g()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v5

    invoke-virtual {v5}, Lt/L;->g()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_4e
    new-instance v0, Lt/V;

    new-instance v5, Lt/L;

    invoke-direct {v5, v4, v2}, Lt/L;-><init>(II)V

    new-instance v2, Lt/L;

    invoke-direct {v2, v3, v1}, Lt/L;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v0
.end method

.method public abstract a(Lt/L;)Z
.end method

.method public a(Lt/W;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lt/W;->a()Lt/V;

    move-result-object v1

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/V;->a(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt/W;->a(Lt/L;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt/W;->a(Lt/L;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, p1}, Lt/W;->c(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public abstract b()I
.end method

.method public b(Lt/W;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/W;->a()Lt/V;

    move-result-object v0

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/V;->a(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    :goto_11
    invoke-virtual {p1}, Lt/W;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {p1, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v2

    invoke-virtual {p0, v2}, Lt/W;->a(Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    invoke-direct {p0, p1}, Lt/W;->c(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_f
.end method

.method public c()Lt/L;
    .registers 2

    invoke-virtual {p0}, Lt/W;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v0

    return-object v0
.end method
