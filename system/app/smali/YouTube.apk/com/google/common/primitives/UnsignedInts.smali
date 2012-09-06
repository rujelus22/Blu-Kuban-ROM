.class public final Lcom/google/common/primitives/UnsignedInts;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 64
    xor-int v0, p0, v1

    xor-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    return v0
.end method
