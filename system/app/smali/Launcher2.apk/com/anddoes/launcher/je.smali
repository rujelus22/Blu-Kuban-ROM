.class public final Lcom/anddoes/launcher/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 1947
    sub-float v0, p1, v2

    .line 1948
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
