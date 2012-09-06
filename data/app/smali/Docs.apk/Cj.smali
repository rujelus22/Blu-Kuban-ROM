.class public LCj;
.super Ljava/lang/Object;
.source "FastMath.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .registers 5
    .parameter

    .prologue
    .line 30
    const/high16 v0, 0x4b80

    mul-float/2addr v0, p0

    float-to-long v0, v0

    .line 31
    const-wide/32 v2, 0x800000

    add-long/2addr v0, v2

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
