.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(BB)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    sub-int/2addr v0, v1

    return v0
.end method
