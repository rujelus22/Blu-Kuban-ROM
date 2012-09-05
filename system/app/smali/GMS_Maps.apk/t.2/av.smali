.class public abstract Lt/av;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lt/W;)Z
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/av;->h()I

    move-result v7

    invoke-virtual {p1}, Lt/W;->b()I

    move-result v8

    if-eqz v7, :cond_e

    if-nez v8, :cond_10

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v2, 0x2

    new-array v9, v2, [Lt/L;

    invoke-virtual {p1}, Lt/W;->c()Lt/L;

    move-result-object v4

    move v6, v1

    :goto_18
    if-ge v6, v7, :cond_37

    invoke-virtual {p0, v6, v9}, Lt/av;->a(I[Lt/L;)V

    move v2, v1

    move-object v3, v4

    :goto_1f
    if-ge v2, v8, :cond_33

    invoke-virtual {p1, v2}, Lt/W;->a(I)Lt/L;

    move-result-object v5

    aget-object v10, v9, v1

    aget-object v11, v9, v0

    invoke-static {v10, v11, v3, v5}, Lt/N;->b(Lt/L;Lt/L;Lt/L;Lt/L;)Z

    move-result v3

    if-nez v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_1f

    :cond_33
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_18

    :cond_37
    move v0, v1

    goto :goto_f
.end method


# virtual methods
.method public abstract a(I)Lt/L;
.end method

.method public a()Lt/au;
    .registers 2

    invoke-virtual {p0}, Lt/av;->c()Lt/W;

    move-result-object v0

    invoke-virtual {v0}, Lt/W;->a()Lt/V;

    move-result-object v0

    invoke-static {v0}, Lt/au;->a(Lt/V;)Lt/au;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I[Lt/L;)V
.end method

.method public abstract a(Lt/L;)Z
.end method

.method public a(Lt/W;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/av;->a()Lt/au;

    move-result-object v0

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/au;->b(Lt/W;)Z

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

    invoke-virtual {p0, v2}, Lt/av;->a(Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    invoke-direct {p0, p1}, Lt/av;->c(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_f
.end method

.method public b(Lt/W;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lt/av;->a()Lt/au;

    move-result-object v1

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/au;->b(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt/av;->a(Lt/L;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, v0}, Lt/av;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt/W;->a(Lt/L;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, p1}, Lt/av;->c(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public abstract c()Lt/W;
.end method

.method public abstract h()I
.end method
