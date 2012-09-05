.class Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$2;
.super Ljava/lang/Object;
.source "PolarClockWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$2;->this$1:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$2;->this$1:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    invoke-virtual {v0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->drawFrame()V

    .line 319
    return-void
.end method
