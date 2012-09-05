.class Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;
.super Ljava/util/TimerTask;
.source "MyCurrentLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->getLastLocation(Landroid/os/Handler;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

.field final synthetic val$isDetectingTimeLimit:Z


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iput-boolean p2, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->val$isDetectingTimeLimit:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 635
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->isGetLocation()Z

    move-result v1

    if-ne v2, v1, :cond_36

    .line 644
    :cond_9
    :goto_9
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->val$isDetectingTimeLimit:Z

    if-eqz v1, :cond_30

    .line 647
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->timeoutHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->timeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 649
    const-string v1, ""

    const-string v2, "MCL DetingTMLT"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 656
    .end local v0           #msg:Landroid/os/Message;
    :cond_30
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->removeLocationListener()V

    .line 657
    return-void

    .line 639
    :cond_36
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->getCencelFlag()I

    move-result v1

    if-ne v2, v1, :cond_9

    .line 641
    const-string v1, ""

    const-string v2, "MCL getLLoc@cnclFlag:1"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->performCurrentLocation(Landroid/os/Handler;)V

    goto :goto_9
.end method
