.class public abstract Ln/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ln/ab;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Ln/ab;->b()I

    move-result v8

    .line 101
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v9

    .line 102
    if-eqz v8, :cond_d

    if-nez v9, :cond_e

    .line 121
    :cond_d
    :goto_d
    return v0

    .line 105
    :cond_e
    invoke-virtual {p0}, Ln/ab;->c()Ln/Q;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Ln/ab;->c()Ln/Q;

    move-result-object v3

    move v5, v0

    move-object v6, v1

    .line 107
    :goto_18
    if-ge v5, v8, :cond_d

    .line 108
    invoke-virtual {p0, v5}, Ln/ab;->a(I)Ln/Q;

    move-result-object v7

    move v1, v0

    move-object v2, v3

    .line 110
    :goto_20
    if-ge v1, v9, :cond_32

    .line 111
    invoke-virtual {p1, v1}, Ln/ab;->a(I)Ln/Q;

    move-result-object v4

    .line 112
    invoke-static {v6, v7, v2, v4}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 115
    const/4 v0, 0x1

    goto :goto_d

    .line 110
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    goto :goto_20

    .line 107
    :cond_32
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v6, v7

    goto :goto_18
.end method


# virtual methods
.method public abstract a(I)Ln/Q;
.end method

.method public a()Ln/aa;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1}, Ln/ab;->a(I)Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    .line 35
    invoke-virtual {p0, v1}, Ln/ab;->a(I)Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v1

    .line 38
    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_15
    invoke-virtual {p0}, Ln/ab;->b()I

    move-result v5

    if-ge v0, v5, :cond_4e

    .line 39
    invoke-virtual {p0, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v5

    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 40
    invoke-virtual {p0, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v5

    invoke-virtual {v5}, Ln/Q;->f()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    invoke-virtual {p0, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v5

    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 42
    invoke-virtual {p0, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v5

    invoke-virtual {v5}, Ln/Q;->g()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 44
    :cond_4e
    new-instance v0, Ln/aa;

    new-instance v5, Ln/Q;

    invoke-direct {v5, v4, v2}, Ln/Q;-><init>(II)V

    new-instance v2, Ln/Q;

    invoke-direct {v2, v3, v1}, Ln/Q;-><init>(II)V

    invoke-direct {v0, v5, v2}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v0
.end method

.method public abstract a(Ln/Q;)Z
.end method

.method public a(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Ln/ab;->a()Ln/aa;

    move-result-object v1

    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/aa;->a(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln/ab;->a(Ln/Q;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/ab;->a(Ln/Q;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, p1}, Ln/ab;->c(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public abstract b()I
.end method

.method public b(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/aa;->a(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 71
    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    .line 66
    :goto_11
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 67
    invoke-virtual {p1, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v2

    invoke-virtual {p0, v2}, Ln/ab;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 71
    :cond_24
    invoke-direct {p0, p1}, Ln/ab;->c(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_f
.end method

.method public c()Ln/Q;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Ln/ab;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v0

    return-object v0
.end method
