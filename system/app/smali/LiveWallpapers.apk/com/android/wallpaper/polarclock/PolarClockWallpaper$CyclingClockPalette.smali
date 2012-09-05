.class Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;
.super Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
.source "PolarClockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/polarclock/PolarClockWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CyclingClockPalette"
.end annotation


# static fields
.field private static sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;


# instance fields
.field protected mBackgroundColor:I

.field protected mBrightness:F

.field private final mColors:[I

.field protected mId:Ljava/lang/String;

.field protected mSaturation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;-><init>()V

    .line 177
    const/16 v0, 0x2d0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    .line 193
    return-void
.end method

.method private computeIntermediateColors()V
    .registers 8

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    .line 197
    .local v0, colors:[I
    array-length v1, v0

    .line 198
    .local v1, count:I
    const v3, 0x3ab60b61

    .line 199
    .local v3, invCount:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_18

    .line 200
    int-to-float v4, v2

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mSaturation:F

    iget v6, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mBrightness:F

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v4

    aput v4, v0, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 202
    :cond_18
    return-void
.end method

.method public static getFallback()Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    if-nez v0, :cond_29

    .line 183
    new-instance v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    invoke-direct {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;-><init>()V

    sput-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    .line 184
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    const-string v1, "default_c"

    iput-object v1, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mId:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mBackgroundColor:I

    .line 186
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    const v1, 0x3f4ccccd

    iput v1, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mSaturation:F

    .line 187
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    const v1, 0x3f666666

    iput v1, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mBrightness:F

    .line 188
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    invoke-direct {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->computeIntermediateColors()V

    .line 190
    :cond_29
    sget-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    return-object v0
.end method

.method public static parseXmlPaletteTag(Landroid/content/res/XmlResourceParser;)Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    .registers 5
    .parameter "xrp"

    .prologue
    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;

    invoke-direct {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;-><init>()V

    .line 206
    .local v0, pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;
    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mId:Ljava/lang/String;

    .line 208
    const-string v3, "background"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 209
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mBackgroundColor:I

    .line 210
    :cond_1c
    const-string v3, "saturation"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 211
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mSaturation:F

    .line 212
    :cond_2a
    const-string v3, "brightness"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 213
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mBrightness:F

    .line 214
    :cond_38
    iget-object v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mId:Ljava/lang/String;

    if-nez v3, :cond_3e

    move-object v0, v2

    .line 218
    .end local v0           #pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;
    :goto_3d
    return-object v0

    .line 217
    .restart local v0       #pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;
    :cond_3e
    invoke-direct {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->computeIntermediateColors()V

    goto :goto_3d
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mBackgroundColor:I

    return v0
.end method

.method public getDayColor(F)I
    .registers 4
    .parameter "forAngle"

    .prologue
    .line 246
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 247
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    const/high16 v1, 0x4434

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getHourColor(F)I
    .registers 4
    .parameter "forAngle"

    .prologue
    .line 240
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 241
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    const/high16 v1, 0x4434

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteColor(F)I
    .registers 4
    .parameter "forAngle"

    .prologue
    .line 234
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 235
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    const/high16 v1, 0x4434

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getMonthColor(F)I
    .registers 4
    .parameter "forAngle"

    .prologue
    .line 252
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    const/high16 v1, 0x4434

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getSecondColor(F)I
    .registers 4
    .parameter "forAngle"

    .prologue
    .line 228
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->mColors:[I

    const/high16 v1, 0x4434

    mul-float/2addr v1, p1

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method
