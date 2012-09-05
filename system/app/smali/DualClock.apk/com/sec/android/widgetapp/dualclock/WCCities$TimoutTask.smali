.class public Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;
.super Ljava/util/TimerTask;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TimoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;


# direct methods
.method protected constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 958
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/WCCities;->TAG:Ljava/lang/String;

    const-string v1, "DelayTimerTask_external -> Location update Fail:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->removeNetworkLocationListener()V

    .line 960
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 962
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 963
    const-string v2, "Source"

    const-class v3, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 966
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v1, v1, Lcom/sec/android/widgetapp/dualclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities;->removeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$600(Lcom/sec/android/widgetapp/dualclock/WCCities;)V

    .line 969
    return-void
.end method
