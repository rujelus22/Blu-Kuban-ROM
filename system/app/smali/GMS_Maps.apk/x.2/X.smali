.class final Lx/x;
.super Lx/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0}, Lx/v;-><init>(Lx/z;Lx/w;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(III)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add triangle to immutable empty mesh"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()D
    .registers 3

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-eq p0, p1, :cond_a

    invoke-super {p0, p1}, Lx/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 69
    :cond_a
    :goto_a
    return v0

    .line 65
    :cond_b
    instance-of v2, p1, Lx/v;

    if-nez v2, :cond_11

    move v0, v1

    .line 66
    goto :goto_a

    .line 68
    :cond_11
    check-cast p1, Lx/v;

    .line 69
    invoke-virtual {p1}, Lx/v;->d()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
