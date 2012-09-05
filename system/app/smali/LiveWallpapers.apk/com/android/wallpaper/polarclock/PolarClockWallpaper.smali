.class public Lcom/android/wallpaper/polarclock/PolarClockWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "PolarClockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;,
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;,
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;,
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;

    .line 271
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 2

    .prologue
    .line 280
    new-instance v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;-><init>(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 277
    return-void
.end method
