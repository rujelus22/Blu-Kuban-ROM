.class public abstract Lnc;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lnc;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lnc;->a:Ljava/lang/String;

    return-object v0
.end method
