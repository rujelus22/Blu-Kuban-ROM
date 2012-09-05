.class public Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;
.super Ljava/util/TimerTask;
.source "WCCities2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TimoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;


# direct methods
.method protected constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V
    .registers 2
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 913
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->TAG:Ljava/lang/String;

    const-string v1, "DelayTimerTask_external -> Location update Fail:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->removeNetworkLocationListener()V

    .line 915
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 916
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 917
    const-string v2, "Source"

    const-class v3, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 919
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/dualclock/WCCities2;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 920
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$TimoutTask;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities2;->removeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->access$600(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V

    .line 921
    return-void
.end method
