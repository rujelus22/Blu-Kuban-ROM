.class public Lcom/sec/dsm/system/DSMTrackingService;
.super Landroid/app/Service;
.source "DSMTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/DSMTrackingService$1;,
        Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;,
        Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;
    }
.end annotation


# static fields
.field private static TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

.field static accuracy:Ljava/lang/String;

.field static altitude:Ljava/lang/String;

.field static course:Ljava/lang/String;

.field static date:Ljava/lang/String;

.field static endTime:Ljava/lang/String;

.field private static gpsData:Lcom/sec/dsm/system/GPSUtil;

.field static interval:Ljava/lang/String;

.field static latitude:Ljava/lang/String;

.field static longitude:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field static mReTrackingStatus:Z

.field static mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

.field static speed:Ljava/lang/String;

.field static startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->interval:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->startTime:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->endTime:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->altitude:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->speed:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->course:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->accuracy:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->date:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/dsm/system/DSMTrackingService;->mReTrackingStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 306
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 35
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpSetTrackingLocation()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$602(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    sput-object p0, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static isCheckedRemoteControl(Landroid/content/Context;)Z
    .registers 8
    .parameter "pcontext"

    .prologue
    const/4 v2, 0x0

    .line 432
    if-nez p0, :cond_4

    .line 454
    :cond_3
    :goto_3
    return v2

    .line 434
    :cond_4
    move-object v1, p0

    .line 435
    .local v1, mContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 436
    .local v2, retState:Z
    if-eqz v1, :cond_3

    .line 439
    :try_start_8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_1c

    move-result v3

    .line 440
    .local v3, state:I
    packed-switch v3, :pswitch_data_22

    .line 448
    const/4 v2, 0x0

    goto :goto_3

    .line 442
    :pswitch_18
    const/4 v2, 0x0

    .line 443
    goto :goto_3

    .line 445
    :pswitch_1a
    const/4 v2, 0x1

    .line 446
    goto :goto_3

    .line 451
    .end local v3           #state:I
    :catch_1c
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 440
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method public static wsMobileTrackingAdpCallLocationLocations()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/DeviceException;
        }
    .end annotation

    .prologue
    .line 411
    sget-object v2, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/dsm/system/DSMTrackingService;->isCheckedRemoteControl(Landroid/content/Context;)Z

    move-result v0

    .line 412
    .local v0, bAMTStatus:Z
    if-eqz v0, :cond_36

    .line 413
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpCheckAccessToken()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 414
    const-string v2, "Samsung Account send AutoSignIn Intent"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 415
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DM_ACCOUNT_SIGNIN_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    sget-object v2, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 428
    .end local v1           #intent:Landroid/content/Intent;
    :goto_28
    const-string v2, "locationLocations end"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 429
    return-void

    .line 419
    :cond_2e
    const-string v2, "14eev3f64b"

    const-string v3, "109E2830E09DB340924B8ABE0D6290C3"

    invoke-static {v2, v3}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpRequestLocationLocations(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 422
    :cond_36
    sget-object v2, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    if-eqz v2, :cond_3f

    .line 423
    sget-object v2, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    invoke-virtual {v2}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->endTimer()V

    .line 425
    :cond_3f
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpStopGPSTracking()V

    .line 426
    const-string v2, "AMT Not Enabled"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public static wsMobileTrackingAdpCheckAccessToken()Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 542
    :try_start_1
    new-instance v0, Lcom/sec/dsm/system/osp/CredentialManager;

    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/dsm/system/osp/CredentialManager;-><init>(Landroid/content/Context;)V

    .line 543
    .local v0, credentialManager:Lcom/sec/dsm/system/osp/CredentialManager;
    const-string v3, "14eev3f64b"

    invoke-virtual {v0, v3}, Lcom/sec/dsm/system/osp/CredentialManager;->containsAccessToken(Ljava/lang/String;)Z

    move-result v2

    .line 544
    .local v2, hasAccessToken:Z
    if-eqz v2, :cond_1b

    .line 545
    const-string v3, "AccessToken is TRUE"

    invoke-static {v3}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 553
    .end local v2           #hasAccessToken:Z
    :goto_1a
    return-object v3

    .line 548
    .restart local v2       #hasAccessToken:Z
    :cond_1b
    const-string v3, "AccessToken is FALSE"

    invoke-static {v3}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 549
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    move-result-object v3

    goto :goto_1a

    .line 551
    .end local v2           #hasAccessToken:Z
    :catch_26
    move-exception v1

    .line 552
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1a
.end method

.method public static wsMobileTrackingAdpCheckDate(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .parameter "szStartDate"
    .parameter "szEndDate"

    .prologue
    const/4 v9, 0x0

    .line 196
    sget v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_DONE:I

    .line 197
    .local v0, bRet:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 200
    .local v1, nCurrentTime:J
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 201
    .local v7, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 202
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 203
    .local v5, nStartDate:J
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 204
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 205
    .local v3, nEndDate:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_3a

    .line 206
    cmp-long v8, v1, v3

    if-gez v8, :cond_32

    .line 207
    sget v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_OK:I

    .line 208
    const-string v8, "TRACKING OPERATION OK"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 217
    :goto_31
    return v0

    .line 210
    :cond_32
    sget v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_DONE:I

    .line 211
    const-string v8, "TRACKING OPERATION DONE"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_31

    .line 214
    :cond_3a
    sget v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_CONTINUE:I

    .line 215
    const-string v8, "TRACKING OPERATION CONTINUE"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public static wsMobileTrackingAdpGetGpsAccuracy()D
    .registers 2

    .prologue
    .line 135
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    iget-wide v0, v0, Lcom/sec/dsm/system/GPSUtil;->mAccuracy:D

    return-wide v0
.end method

.method public static wsMobileTrackingAdpGetGpsAltitude()D
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    iget-wide v0, v0, Lcom/sec/dsm/system/GPSUtil;->mAltitude:D

    return-wide v0
.end method

.method public static wsMobileTrackingAdpGetGpsCourse()D
    .registers 2

    .prologue
    .line 131
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    iget-wide v0, v0, Lcom/sec/dsm/system/GPSUtil;->mBearing:D

    return-wide v0
.end method

.method public static wsMobileTrackingAdpGetGpsLatitude()D
    .registers 2

    .prologue
    .line 115
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    iget-wide v0, v0, Lcom/sec/dsm/system/GPSUtil;->mLatitude:D

    return-wide v0
.end method

.method public static wsMobileTrackingAdpGetGpsLongitude()D
    .registers 2

    .prologue
    .line 119
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    iget-wide v0, v0, Lcom/sec/dsm/system/GPSUtil;->mLongitude:D

    return-wide v0
.end method

.method public static wsMobileTrackingAdpGetGpsSpeed()D
    .registers 2

    .prologue
    .line 127
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    iget-wide v0, v0, Lcom/sec/dsm/system/GPSUtil;->mSpeed:D

    return-wide v0
.end method

.method public static wsMobileTrackingAdpGetGpsValid()Z
    .registers 1

    .prologue
    .line 108
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    if-eqz v0, :cond_b

    .line 109
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    invoke-virtual {v0}, Lcom/sec/dsm/system/GPSUtil;->GetGPSLocation()Z

    move-result v0

    .line 111
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static wsMobileTrackingAdpGetStrTimeData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "szTimeDate"

    .prologue
    .line 221
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    return-object p0
.end method

.method public static wsMobileTrackingAdpOerationTracking()V
    .registers 7

    .prologue
    .line 139
    sget-object v5, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/dsm/system/DSMTrackingService;->isCheckedRemoteControl(Landroid/content/Context;)Z

    move-result v0

    .line 140
    .local v0, bAMTStatus:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMT Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 141
    if-eqz v0, :cond_88

    .line 142
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->interval:Ljava/lang/String;

    .line 143
    .local v3, szInterval:Ljava/lang/String;
    sget-object v4, Lcom/sec/dsm/system/DSMTrackingService;->startTime:Ljava/lang/String;

    .line 144
    .local v4, szStartDate:Ljava/lang/String;
    sget-object v2, Lcom/sec/dsm/system/DSMTrackingService;->endTime:Ljava/lang/String;

    .line 145
    .local v2, szEndDate:Ljava/lang/String;
    if-eqz v3, :cond_2a

    if-eqz v4, :cond_2a

    if-nez v2, :cond_33

    .line 146
    :cond_2a
    const-string v5, "[Error] Data is null "

    invoke-static {v5}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpOperationStop()V

    .line 172
    .end local v2           #szEndDate:Ljava/lang/String;
    .end local v3           #szInterval:Ljava/lang/String;
    .end local v4           #szStartDate:Ljava/lang/String;
    :goto_32
    return-void

    .line 149
    .restart local v2       #szEndDate:Ljava/lang/String;
    .restart local v3       #szInterval:Ljava/lang/String;
    .restart local v4       #szStartDate:Ljava/lang/String;
    :cond_33
    const-string v5, "Start GPS tracking"

    invoke-static {v5}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpStartGPSTracking()V

    .line 151
    sget-object v5, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_62

    .line 152
    sget-object v5, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 153
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "TrackingWakeLock"

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 154
    sget-object v5, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 155
    sget-object v5, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 156
    const-string v5, "wakelock start"

    invoke-static {v5}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 158
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_62
    if-eqz v4, :cond_68

    .line 159
    invoke-static {v4}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetStrTimeData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    :cond_68
    if-eqz v2, :cond_6e

    .line 162
    invoke-static {v2}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetStrTimeData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    :cond_6e
    new-instance v5, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v4, v2}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    .line 165
    const-string v5, "Start mobile tracking timer"

    invoke-static {v5}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 166
    sget-object v5, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    invoke-virtual {v5}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->startTimer()V

    goto :goto_32

    .line 169
    .end local v2           #szEndDate:Ljava/lang/String;
    .end local v3           #szInterval:Ljava/lang/String;
    .end local v4           #szStartDate:Ljava/lang/String;
    :cond_88
    const-string v5, "Please remote control on"

    invoke-static {v5}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpOperationStop()V

    goto :goto_32
.end method

.method public static wsMobileTrackingAdpOperationStop()V
    .registers 1

    .prologue
    .line 185
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    if-eqz v0, :cond_9

    .line 186
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->endTimer()V

    .line 188
    :cond_9
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpStopGPSTracking()V

    .line 189
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_18

    .line 190
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->TrackingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    :cond_18
    return-void
.end method

.method public static wsMobileTrackingAdpRequestLocationLocations(Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .parameter "appID"
    .parameter "appSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/DeviceException;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v9, 0x0

    .line 470
    .local v9, httpEntity:Lorg/apache/http/HttpEntity;
    :try_start_1
    const-string v13, "https://www.ospserver.net/location/location/locations"

    .line 471
    .local v13, requestURI:Ljava/lang/String;
    new-instance v4, Lcom/sec/dsm/system/osp/RestClient;

    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/sec/dsm/system/osp/RestClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .local v4, client:Lcom/sec/dsm/system/osp/RestClient;
    new-instance v12, Lcom/sec/dsm/system/wsMobileTrackingLocation;

    invoke-direct {v12}, Lcom/sec/dsm/system/wsMobileTrackingLocation;-><init>()V

    .line 473
    .local v12, mobileTrackingLocationRequest:Lcom/sec/dsm/system/wsMobileTrackingLocation;
    const/4 v6, 0x0

    .line 474
    .local v6, deviceId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 475
    .local v7, deviceUniqueID:Ljava/lang/String;
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    const-string v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 476
    .local v17, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 477
    const-string v18, "Default"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d2

    .line 478
    const-string v18, "ro.serialno"

    const-string v19, "Default"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-static {v6}, Lcom/sec/dsm/system/osp/DUIDUtil;->getDUIDfromTWID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 483
    :goto_3b
    const-string v11, "1"

    .line 484
    .local v11, locationMethod:Ljava/lang/String;
    invoke-virtual {v12, v7}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setDeviceUniqueID(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v12, v11}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setLocationMethod(Ljava/lang/String;)V

    .line 486
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setLatitude(Ljava/lang/String;)V

    .line 487
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setLongitude(Ljava/lang/String;)V

    .line 488
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->altitude:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setAltitude(Ljava/lang/String;)V

    .line 489
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->speed:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setSpeed(Ljava/lang/String;)V

    .line 490
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->course:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setCourse(Ljava/lang/String;)V

    .line 491
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->accuracy:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setHorizontalAccuracy(Ljava/lang/String;)V

    .line 492
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->date:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->setTimestamp(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v12}, Lcom/sec/dsm/system/wsMobileTrackingLocation;->toXML()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, body:Ljava/lang/String;
    sget-object v18, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->PUT:Lcom/sec/dsm/system/osp/RestClient$HttpMethod;

    sget-object v19, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->ACCESS_TOKEN:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v13, v3, v1}, Lcom/sec/dsm/system/osp/RestClient;->execute(Lcom/sec/dsm/system/osp/RestClient$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 496
    .local v14, response:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 497
    .local v5, content:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 498
    .local v16, statusLine:Lorg/apache/http/StatusLine;
    const/4 v15, 0x0

    .line 499
    .local v15, statusCode:I
    if-eqz v14, :cond_9e

    .line 500
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 501
    if-eqz v9, :cond_94

    .line 502
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 504
    :cond_94
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 505
    if-eqz v16, :cond_9e

    .line 506
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 510
    :cond_9e
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v15, v0, :cond_d8

    .line 511
    const-string v18, "Response is normal"

    invoke-static/range {v18 .. v18}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 512
    if-nez v5, :cond_fa

    .line 513
    new-instance v18, Ljava/lang/Exception;

    const-string v19, "Response content is null."

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_b3
    .catchall {:try_start_1 .. :try_end_b3} :catchall_cb
    .catch Lcom/sec/dsm/system/osp/ErrorResultException; {:try_start_1 .. :try_end_b3} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_106

    .line 523
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #client:Lcom/sec/dsm/system/osp/RestClient;
    .end local v5           #content:Ljava/io/InputStream;
    .end local v6           #deviceId:Ljava/lang/String;
    .end local v7           #deviceUniqueID:Ljava/lang/String;
    .end local v11           #locationMethod:Ljava/lang/String;
    .end local v12           #mobileTrackingLocationRequest:Lcom/sec/dsm/system/wsMobileTrackingLocation;
    .end local v13           #requestURI:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    .end local v16           #statusLine:Lorg/apache/http/StatusLine;
    .end local v17           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_b3
    move-exception v8

    .line 524
    .local v8, e:Lcom/sec/dsm/system/osp/ErrorResultException;
    :try_start_b4
    invoke-virtual {v8}, Lcom/sec/dsm/system/osp/ErrorResultException;->printStackTrace()V

    .line 525
    new-instance v18, Lcom/sec/dsm/system/osp/DeviceException;

    invoke-virtual {v8}, Lcom/sec/dsm/system/osp/ErrorResultException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Lcom/sec/dsm/system/osp/ErrorResultException;->getFaultCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/dsm/system/osp/DeviceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v18
    :try_end_cb
    .catchall {:try_start_b4 .. :try_end_cb} :catchall_cb

    .line 530
    .end local v8           #e:Lcom/sec/dsm/system/osp/ErrorResultException;
    :catchall_cb
    move-exception v18

    if-eqz v9, :cond_d1

    .line 532
    :try_start_ce
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_11d

    .line 535
    :cond_d1
    :goto_d1
    throw v18

    .line 481
    .restart local v4       #client:Lcom/sec/dsm/system/osp/RestClient;
    .restart local v6       #deviceId:Ljava/lang/String;
    .restart local v7       #deviceUniqueID:Ljava/lang/String;
    .restart local v12       #mobileTrackingLocationRequest:Lcom/sec/dsm/system/wsMobileTrackingLocation;
    .restart local v13       #requestURI:Ljava/lang/String;
    .restart local v17       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_d2
    :try_start_d2
    invoke-static {v6}, Lcom/sec/dsm/system/osp/DUIDUtil;->getDUIDfromIMEI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3b

    .line 515
    .restart local v3       #body:Ljava/lang/String;
    .restart local v5       #content:Ljava/io/InputStream;
    .restart local v11       #locationMethod:Ljava/lang/String;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    .restart local v16       #statusLine:Lorg/apache/http/StatusLine;
    :cond_d8
    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v15, v0, :cond_100

    .line 516
    const-string v18, "Samsung Account send AutoSignIn Intent"

    invoke-static/range {v18 .. v18}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 517
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.DM_ACCOUNT_SIGNIN_CHECK"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v10, intent:Landroid/content/Intent;
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    sget-object v18, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fa
    .catchall {:try_start_d2 .. :try_end_fa} :catchall_cb
    .catch Lcom/sec/dsm/system/osp/ErrorResultException; {:try_start_d2 .. :try_end_fa} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_fa} :catch_106

    .line 530
    .end local v10           #intent:Landroid/content/Intent;
    :cond_fa
    :goto_fa
    if-eqz v9, :cond_ff

    .line 532
    :try_start_fc
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_118

    .line 538
    :cond_ff
    :goto_ff
    return-void

    .line 521
    :cond_100
    :try_start_100
    const-string v18, "Location server error"

    invoke-static/range {v18 .. v18}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_100 .. :try_end_105} :catchall_cb
    .catch Lcom/sec/dsm/system/osp/ErrorResultException; {:try_start_100 .. :try_end_105} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_105} :catch_106

    goto :goto_fa

    .line 526
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #client:Lcom/sec/dsm/system/osp/RestClient;
    .end local v5           #content:Ljava/io/InputStream;
    .end local v6           #deviceId:Ljava/lang/String;
    .end local v7           #deviceUniqueID:Ljava/lang/String;
    .end local v11           #locationMethod:Ljava/lang/String;
    .end local v12           #mobileTrackingLocationRequest:Lcom/sec/dsm/system/wsMobileTrackingLocation;
    .end local v13           #requestURI:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    .end local v16           #statusLine:Lorg/apache/http/StatusLine;
    .end local v17           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_106
    move-exception v8

    .line 527
    .local v8, e:Ljava/lang/Exception;
    :try_start_107
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    new-instance v18, Lcom/sec/dsm/system/osp/DeviceException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/sec/dsm/system/osp/DeviceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_118
    .catchall {:try_start_107 .. :try_end_118} :catchall_cb

    .line 533
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v4       #client:Lcom/sec/dsm/system/osp/RestClient;
    .restart local v5       #content:Ljava/io/InputStream;
    .restart local v6       #deviceId:Ljava/lang/String;
    .restart local v7       #deviceUniqueID:Ljava/lang/String;
    .restart local v11       #locationMethod:Ljava/lang/String;
    .restart local v12       #mobileTrackingLocationRequest:Lcom/sec/dsm/system/wsMobileTrackingLocation;
    .restart local v13       #requestURI:Ljava/lang/String;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    .restart local v16       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v17       #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_118
    move-exception v8

    .line 534
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ff

    .line 533
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #client:Lcom/sec/dsm/system/osp/RestClient;
    .end local v5           #content:Ljava/io/InputStream;
    .end local v6           #deviceId:Ljava/lang/String;
    .end local v7           #deviceUniqueID:Ljava/lang/String;
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #locationMethod:Ljava/lang/String;
    .end local v12           #mobileTrackingLocationRequest:Lcom/sec/dsm/system/wsMobileTrackingLocation;
    .end local v13           #requestURI:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    .end local v16           #statusLine:Lorg/apache/http/StatusLine;
    .end local v17           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_11d
    move-exception v8

    .line 534
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1
.end method

.method public static wsMobileTrackingAdpSetReTrackingActive(Z)V
    .registers 3
    .parameter "szStatus"

    .prologue
    .line 175
    sput-boolean p0, Lcom/sec/dsm/system/DSMTrackingService;->mReTrackingStatus:Z

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking1 status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/dsm/system/DSMTrackingService;->mReTrackingStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private static wsMobileTrackingAdpSetTrackingLocation()V
    .registers 8

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 227
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    .line 229
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->altitude:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsSpeed()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->speed:Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsCourse()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->course:Ljava/lang/String;

    .line 232
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpGetGpsAccuracy()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->accuracy:Ljava/lang/String;

    .line 233
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 234
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 235
    .local v1, index:I
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    sget-object v4, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_76

    .line 238
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 239
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x7

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    sput-object v2, Lcom/sec/dsm/system/DSMTrackingService;->latitude:Ljava/lang/String;

    .line 243
    :cond_76
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 244
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 245
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    sget-object v4, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_ac

    .line 248
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 249
    sget-object v3, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x7

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    sput-object v2, Lcom/sec/dsm/system/DSMTrackingService;->longitude:Ljava/lang/String;

    .line 253
    :cond_ac
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    const-string v3, "GMT+0"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 255
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/dsm/system/DSMTrackingService;->date:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public static wsMobileTrackingAdpStartGPSTracking()V
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    if-eqz v0, :cond_b

    .line 97
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    sget-object v1, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/dsm/system/GPSUtil;->DSMstartGPSTracking(Landroid/content/Context;)V

    .line 98
    :cond_b
    return-void
.end method

.method public static wsMobileTrackingAdpStopGPSTracking()V
    .registers 2

    .prologue
    .line 101
    sget-object v1, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    if-eqz v1, :cond_9

    .line 102
    sget-object v1, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    invoke-virtual {v1}, Lcom/sec/dsm/system/GPSUtil;->DSMremoveListener()V

    .line 103
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.dsm.TRACKING_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 84
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 61
    const-string v0, " onCreate begin"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    sput-object p0, Lcom/sec/dsm/system/DSMTrackingService;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/sec/dsm/system/GPSUtil;

    invoke-direct {v0}, Lcom/sec/dsm/system/GPSUtil;-><init>()V

    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->gpsData:Lcom/sec/dsm/system/GPSUtil;

    .line 65
    const-string v0, " onCreate end"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 90
    const-string v0, "onDestory begin"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    const-string v0, "onDestory end"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 70
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->interval:Ljava/lang/String;

    .line 71
    const-string v0, "starttime"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->startTime:Ljava/lang/String;

    .line 72
    const-string v0, "stoptime"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->endTime:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->interval:Ljava/lang/String;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->startTime:Ljava/lang/String;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/sec/dsm/system/DSMTrackingService;->endTime:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 75
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpOerationTracking()V

    .line 79
    :goto_27
    const/4 v0, 0x2

    return v0

    .line 77
    :cond_29
    invoke-static {}, Lcom/sec/dsm/system/DSMTrackingService;->wsMobileTrackingAdpStopGPSTracking()V

    goto :goto_27
.end method
