.class abstract Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
.super Ljava/lang/Object;
.source "PolarClockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/polarclock/PolarClockWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ClockPalette"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXmlPaletteTag(Landroid/content/res/XmlResourceParser;)Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    .registers 4
    .parameter "xrp"

    .prologue
    .line 61
    const/4 v1, 0x0

    const-string v2, "kind"

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, kind:Ljava/lang/String;
    const-string v1, "cycling"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 63
    invoke-static {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;->parseXmlPaletteTag(Landroid/content/res/XmlResourceParser;)Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    move-result-object v1

    .line 65
    :goto_13
    return-object v1

    :cond_14
    invoke-static {p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;->parseXmlPaletteTag(Landroid/content/res/XmlResourceParser;)Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;

    move-result-object v1

    goto :goto_13
.end method


# virtual methods
.method public abstract getBackgroundColor()I
.end method

.method public abstract getDayColor(F)I
.end method

.method public abstract getHourColor(F)I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMinuteColor(F)I
.end method

.method public abstract getMonthColor(F)I
.end method

.method public abstract getSecondColor(F)I
.end method
