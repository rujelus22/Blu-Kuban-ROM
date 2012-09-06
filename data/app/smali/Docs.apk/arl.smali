.class public Larl;
.super Ljava/lang/Object;
.source "UiConfigurationOptions.java"


# instance fields
.field private a:I

.field private a:Z

.field private b:I

.field private c:I


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Larl;->a:I

    if-eqz v0, :cond_7

    .line 77
    iget v0, p0, Larl;->a:I

    .line 79
    :goto_6
    return v0

    :cond_7
    sget v0, Lare;->gf_header_background:I

    goto :goto_6
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Larl;->a:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Larl;->b:I

    if-eqz v0, :cond_7

    .line 88
    iget v0, p0, Larl;->b:I

    .line 90
    :goto_6
    return v0

    :cond_7
    const v0, 0x10800a5

    goto :goto_6
.end method

.method public c()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Larl;->c:I

    return v0
.end method
