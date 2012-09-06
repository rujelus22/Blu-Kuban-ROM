.class public Lcom/google/android/apps/unveil/env/PixelUtils;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPix(FLandroid/content/Context;)I
    .registers 4
    .parameter "dip"
    .parameter "context"

    .prologue
    .line 26
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getDensity(Landroid/content/Context;)F
    .registers 3
    .parameter "context"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 15
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public static inchToPix(FLandroid/content/Context;)I
    .registers 4
    .parameter "inch"
    .parameter "context"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static pixToDip(FLandroid/content/Context;)I
    .registers 4
    .parameter "pix"
    .parameter "context"

    .prologue
    .line 22
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    div-float v0, p0, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static pixToInch(FLandroid/content/Context;)F
    .registers 4
    .parameter "pix"
    .parameter "context"

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->getDensity(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    div-float v0, p0, v0

    return v0
.end method
