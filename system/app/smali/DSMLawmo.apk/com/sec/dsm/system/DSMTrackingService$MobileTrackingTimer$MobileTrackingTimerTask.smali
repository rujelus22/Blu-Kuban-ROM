.class Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;
.super Ljava/util/TimerTask;
.source "DSMTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileTrackingTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;


# direct methods
.method private constructor <init>(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;Lcom/sec/dsm/system/DSMTrackingService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;-><init>(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 362
    const-string v14, "=========[ MobileTrackingTimerTask Running ]=========="

    invoke-static {v14}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 364
    .local v6, nCurrentTime:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    #getter for: Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mInterval:I
    invoke-static {v14}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->access$300(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v10, v14, 0x3e8

    .line 365
    .local v10, tInterval:I
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 366
    .local v13, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    #getter for: Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mStartDate:Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->access$400(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 367
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 368
    .local v11, tStartDate:J
    sub-long v8, v6, v11

    .line 369
    .local v8, nSyncTime:J
    int-to-long v14, v10

    rem-long v14, v8, v14

    const-wide/16 v16, 0x3e8

    cmp-long v14, v14, v16

    if-lez v14, :cond_3a

    .line 406
    :cond_39
    :goto_39
    return-void

    .line 373
    :cond_3a
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpSetReTrackingActive(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    #getter for: Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mStartDate:Ljava/lang/String;
    invoke-static {v14}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->access$400(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    #getter for: Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mEndDate:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->access$500(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpCheckDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 378
    .local v5, nCheckDate:I
    sget v14, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_OK:I

    if-ne v5, v14, :cond_7b

    .line 379
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsValid()Z

    move-result v2

    .line 380
    .local v2, bGPSVaild:Z
    if-eqz v2, :cond_68

    .line 381
    #calls: Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpSetTrackingLocation()V
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->access$100()V

    .line 383
    :try_start_5f
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpCallLocationLocations()V
    :try_end_62
    .catch Lcom/sec/dsm/system/osp/DeviceException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_39

    .line 384
    :catch_63
    move-exception v3

    .line 385
    .local v3, e:Lcom/sec/dsm/system/osp/DeviceException;
    invoke-virtual {v3}, Lcom/sec/dsm/system/osp/DeviceException;->printStackTrace()V

    goto :goto_39

    .line 389
    .end local v3           #e:Lcom/sec/dsm/system/osp/DeviceException;
    :cond_68
    const-string v14, "GPS Not Valid. GPS Restart"

    invoke-static {v14}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpStartGPSTracking()V

    .line 391
    const/16 v1, 0x1388

    .line 392
    .local v1, GPS_GET_INTERVAL:I
    new-instance v4, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;

    invoke-direct {v4, v1}, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;-><init>(I)V

    .line 393
    .local v4, gpsTimer:Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;
    invoke-virtual {v4}, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->startTimer()V

    goto :goto_39

    .line 395
    .end local v1           #GPS_GET_INTERVAL:I
    .end local v2           #bGPSVaild:Z
    .end local v4           #gpsTimer:Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;
    :cond_7b
    sget v14, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_DONE:I

    if-ne v5, v14, :cond_9b

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;->this$0:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    invoke-virtual {v14}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->endTimer()V

    .line 397
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpStopGPSTracking()V

    .line 398
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->access$600()Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    if-eqz v14, :cond_39

    .line 399
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->access$600()Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 400
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/sec/dsm/system/DSMTrackingService;->access$602(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto :goto_39

    .line 404
    :cond_9b
    const-string v14, "MobileTrackingTimerTask Running Continue"

    invoke-static {v14}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_39
.end method
