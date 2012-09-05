.class public Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "ViscousFluidInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static k1MinusExpNeg1:F

.field private static kExpNeg1:F

.field private static kViscousFluidScale:F


# instance fields
.field private mViscousFluidNormalize:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    const/high16 v0, 0x4100

    sput v0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->kViscousFluidScale:F

    .line 14
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->kExpNeg1:F

    .line 16
    const/high16 v0, 0x3f80

    sget v1, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->kExpNeg1:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->k1MinusExpNeg1:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f80

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->mViscousFluidNormalize:F

    .line 25
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->getInterpolation(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->mViscousFluidNormalize:F

    .line 26
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6
    .parameter "in"

    .prologue
    const/high16 v3, 0x3f80

    .line 37
    sget v0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->kViscousFluidScale:F

    mul-float/2addr p1, v0

    .line 39
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_17

    .line 40
    neg-float v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v3, v0

    sub-float/2addr p1, v0

    .line 44
    :goto_13
    iget v0, p0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->mViscousFluidNormalize:F

    mul-float/2addr v0, p1

    return v0

    .line 42
    :cond_17
    sget v0, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->kExpNeg1:F

    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sget v2, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;->k1MinusExpNeg1:F

    mul-float/2addr v1, v2

    add-float p1, v0, v1

    goto :goto_13
.end method
