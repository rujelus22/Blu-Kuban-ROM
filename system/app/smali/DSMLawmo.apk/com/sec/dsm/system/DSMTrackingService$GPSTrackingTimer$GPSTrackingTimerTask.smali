.class Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;
.super Ljava/util/TimerTask;
.source "DSMTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPSTrackingTimerTask"
.end annotation


# instance fields
.field private MAX_COUNT:I

.field private mCount:I

.field final synthetic this$0:Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;


# direct methods
.method private constructor <init>(Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;)V
    .registers 3
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 281
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->MAX_COUNT:I

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->mCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;Lcom/sec/dsm/system/DSMTrackingService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;-><init>(Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]=========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsValid()Z

    move-result v0

    .line 287
    .local v0, bGPSVaild:Z
    if-eqz v0, :cond_35

    .line 288
    #calls: Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpSetTrackingLocation()V
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->access$100()V

    .line 290
    :try_start_27
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpCallLocationLocations()V
    :try_end_2a
    .catch Lcom/sec/dsm/system/osp/DeviceException; {:try_start_27 .. :try_end_2a} :catch_30

    .line 294
    :goto_2a
    iget-object v2, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->endTimer()V

    .line 302
    :goto_2f
    return-void

    .line 291
    :catch_30
    move-exception v1

    .line 292
    .local v1, e:Lcom/sec/dsm/system/osp/DeviceException;
    invoke-virtual {v1}, Lcom/sec/dsm/system/osp/DeviceException;->printStackTrace()V

    goto :goto_2a

    .line 297
    .end local v1           #e:Lcom/sec/dsm/system/osp/DeviceException;
    :cond_35
    iget v2, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->mCount:I

    iget v3, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->MAX_COUNT:I

    if-ne v2, v3, :cond_41

    .line 298
    iget-object v2, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->endTimer()V

    goto :goto_2f

    .line 301
    :cond_41
    iget v2, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;->mCount:I

    goto :goto_2f
.end method
