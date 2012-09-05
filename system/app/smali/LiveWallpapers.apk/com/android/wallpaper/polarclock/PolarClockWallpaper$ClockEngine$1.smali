.class Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "PolarClockWallpaper.java"


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
    .line 308
    iput-object p1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$1;->this$1:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 310
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, timeZone:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$1;->this$1:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->access$002(Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 312
    iget-object v1, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine$1;->this$1:Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    invoke-virtual {v1}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;->drawFrame()V

    .line 313
    return-void
.end method
