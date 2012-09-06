.class public abstract Ln/aM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ln/ab;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Ln/aM;->h()I

    move-result v7

    .line 110
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v8

    .line 111
    if-eqz v7, :cond_e

    if-nez v8, :cond_10

    :cond_e
    move v0, v1

    .line 129
    :cond_f
    :goto_f
    return v0

    .line 114
    :cond_10
    const/4 v2, 0x2

    new-array v9, v2, [Ln/Q;

    .line 115
    invoke-virtual {p1}, Ln/ab;->c()Ln/Q;

    move-result-object v4

    move v6, v1

    .line 116
    :goto_18
    if-ge v6, v7, :cond_37

    .line 117
    invoke-virtual {p0, v6, v9}, Ln/aM;->a(I[Ln/Q;)V

    move v2, v1

    move-object v3, v4

    .line 119
    :goto_1f
    if-ge v2, v8, :cond_33

    .line 120
    invoke-virtual {p1, v2}, Ln/ab;->a(I)Ln/Q;

    move-result-object v5

    .line 121
    aget-object v10, v9, v1

    aget-object v11, v9, v0

    invoke-static {v10, v11, v3, v5}, Ln/S;->b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 119
    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_1f

    .line 116
    :cond_33
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_18

    :cond_37
    move v0, v1

    .line 129
    goto :goto_f
.end method


# virtual methods
.method public abstract a(I)Ln/Q;
.end method

.method public a()Ln/aL;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Ln/aM;->c()Ln/ab;

    move-result-object v0

    invoke-virtual {v0}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    invoke-static {v0}, Ln/aL;->a(Ln/aa;)Ln/aL;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I[Ln/Q;)V
.end method

.method public abstract a(Ln/Q;)Z
.end method

.method public a(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Ln/aM;->a()Ln/aL;

    move-result-object v0

    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/aL;->b(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 81
    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    .line 76
    :goto_11
    invoke-virtual {p1}, Ln/ab;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 77
    invoke-virtual {p1, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v2

    invoke-virtual {p0, v2}, Ln/aM;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 81
    :cond_24
    invoke-direct {p0, p1}, Ln/aM;->c(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_f
.end method

.method public b(Ln/ab;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Ln/aM;->a()Ln/aL;

    move-result-object v1

    invoke-virtual {p1}, Ln/ab;->a()Ln/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/aL;->b(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1, v0}, Ln/ab;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln/aM;->a(Ln/Q;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, v0}, Ln/aM;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/ab;->a(Ln/Q;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, p1}, Ln/aM;->c(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v0, 0x1

    :cond_2a
    return v0
.end method

.method public abstract c()Ln/ab;
.end method

.method public abstract h()I
.end method
