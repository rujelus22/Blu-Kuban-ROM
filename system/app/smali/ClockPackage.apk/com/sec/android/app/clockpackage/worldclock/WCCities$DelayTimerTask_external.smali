.class public Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;
.super Ljava/util/TimerTask;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayTimerTask_external"
.end annotation


# instance fields
.field private mProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "provider"

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1933
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->mProvider:Ljava/lang/String;

    .line 1935
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1942
    const-string v2, "WorldClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DelayTimerTask_external -> Location update Fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->mProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->removeWCCitiesLocationListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1946
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v2, v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1948
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1950
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Source"

    const-string v3, "DelayTimerTask_external"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1954
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v2, v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1956
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$DelayTimerTask_external;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1100(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 1960
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_49
    return-void
.end method
