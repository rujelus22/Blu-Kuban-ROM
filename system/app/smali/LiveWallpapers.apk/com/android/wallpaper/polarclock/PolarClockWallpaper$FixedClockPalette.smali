.class Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;
.super Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
.source "PolarClockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/polarclock/PolarClockWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedClockPalette"
.end annotation


# static fields
.field private static sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;


# instance fields
.field protected mBackgroundColor:I

.field protected mDayColor:I

.field protected mHourColor:I

.field protected mId:Ljava/lang/String;

.field protected mMinuteColor:I

.field protected mMonthColor:I

.field protected mSecondColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->sFallbackPalette:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;-><init>()V

    return-void
.end method

.method public static parseXmlPaletteTag(Landroid/content/res/XmlResourceParser;)Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    .registers 5
    .parameter "xrp"

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;

    invoke-direct {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;-><init>()V

    .line 116
    .local v0, pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;
    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mId:Ljava/lang/String;

    .line 118
    const-string v3, "background"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 119
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mBackgroundColor:I

    .line 120
    :cond_1c
    const-string v3, "second"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 121
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mSecondColor:I

    .line 122
    :cond_2a
    const-string v3, "minute"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 123
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mMinuteColor:I

    .line 124
    :cond_38
    const-string v3, "hour"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 125
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mHourColor:I

    .line 126
    :cond_46
    const-string v3, "day"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 127
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mDayColor:I

    .line 128
    :cond_54
    const-string v3, "month"

    invoke-interface {p0, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 129
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mMonthColor:I

    .line 130
    :cond_62
    iget-object v3, v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mId:Ljava/lang/String;

    if-nez v3, :cond_67

    move-object v0, v2

    .end local v0           #pal:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;
    :cond_67
    return-object v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mBackgroundColor:I

    return v0
.end method

.method public getDayColor(F)I
    .registers 3
    .parameter "forAngle"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mDayColor:I

    return v0
.end method

.method public getHourColor(F)I
    .registers 3
    .parameter "forAngle"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mHourColor:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteColor(F)I
    .registers 3
    .parameter "forAngle"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mMinuteColor:I

    return v0
.end method

.method public getMonthColor(F)I
    .registers 3
    .parameter "forAngle"

    .prologue
    .line 160
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mMonthColor:I

    return v0
.end method

.method public getSecondColor(F)I
    .registers 3
    .parameter "forAngle"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->mSecondColor:I

    return v0
.end method
