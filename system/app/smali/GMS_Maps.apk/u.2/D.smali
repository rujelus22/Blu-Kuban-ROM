.class public Lu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lu/d;->a:F

    .line 24
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 31
    :goto_5
    return v0

    :cond_6
    const-wide/high16 v0, 0x3ff0

    const/high16 v2, 0x3f80

    iget v3, p0, Lu/d;->a:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_5
.end method
