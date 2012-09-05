.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;
.super Landroid/os/Handler;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const v3, -0x140b4

    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x13d30

    if-ne v0, v1, :cond_1a

    .line 501
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    if-eqz v0, :cond_19

    .line 503
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 534
    :cond_19
    :goto_19
    return-void

    .line 506
    :cond_1a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5b

    .line 508
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->locHandler:Landroid/os/Handler;

    if-eqz v0, :cond_19

    .line 510
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    if-nez v0, :cond_19

    .line 512
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 513
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$900(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 514
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showConfirmDialog()V

    goto :goto_19

    .line 517
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 518
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 519
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v1, 0x7f09002b

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_19

    .line 524
    :cond_5b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_19

    .line 526
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->hideLoadingDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$800(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 530
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->gps_btn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 532
    :cond_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const v1, 0x7f09002a

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_19
.end method
