.class public Lcom/google/android/street/Street;
.super Landroid/app/Activity;
.source "Street.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/Street$DrdListener;
    }
.end annotation


# static fields
.field public static final IN_EMULATOR:Z

.field private static mGlobalStateInitialized:Z

.field private static sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

.field private static final sStartFrameLock:Ljava/lang/Object;

.field private static sStartFrameReason:Ljava/lang/String;

.field private static sStartFrameTimestampMs:J


# instance fields
.field private mActionBarInUse:Z

.field private mDefaultDisplay:Landroid/view/Display;

.field private volatile mDrdNetworkError:I

.field private mHasCompass:Z

.field private mHttpCache:Lcom/google/android/street/HttpCache;

.field private mIsTablet:Z

.field private mLocation:Landroid/location/Location;

.field private mMapZoom:I

.field private mNetworkAvailable:Z

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPanoramaManager:Lcom/google/android/street/PanoramaManager;

.field private mRegisteredForNetworkConnectivity:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStreetView:Lcom/google/android/street/StreetView;

.field protected mTitleText:Landroid/widget/TextView;

.field private timer:Lcom/google/android/street/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/street/Street;->sStartFrameLock:Ljava/lang/Object;

    .line 61
    const-string v0, "Cold start"

    sput-object v0, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/street/Street;->sStartFrameTimestampMs:J

    .line 181
    invoke-static {}, Lcom/google/android/street/Street;->inEmulator()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/street/Street;->IN_EMULATOR:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/Street;->mMapZoom:I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/Street;->timer:Lcom/google/android/street/Timer;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Street;->mHasCompass:Z

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/street/Street;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/street/Street;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/street/Street;)Lcom/google/android/street/StreetView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/street/Street;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/street/Street;->checkNetworkAvailability()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/street/Street;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->onNetworkToggle(Z)V

    return-void
.end method

.method private checkNetworkAvailability()Z
    .registers 2

    .prologue
    .line 1095
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1097
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getLatLonAndOrientation(Z)Ljava/lang/String;
    .registers 6
    .parameter "useNewStyleOrientation"

    .prologue
    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    .line 789
    .local v0, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v0, :cond_38

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbll="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v3}, Lcom/google/android/street/MapPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v2, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView;->getUserOrientation()Lcom/google/android/street/UserOrientation;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 792
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->getOrientation(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getOrientation(Z)Ljava/lang/String;
    .registers 8
    .parameter "useNewStyleOrientation"

    .prologue
    const/high16 v5, 0x4230

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->getUserOrientation()Lcom/google/android/street/UserOrientation;

    move-result-object v2

    .line 802
    .local v2, userOrientation:Lcom/google/android/street/UserOrientation;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&cbp=1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    if-eqz p1, :cond_5d

    .line 805
    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    const/high16 v4, -0x3ccc

    mul-float v0, v3, v4

    .line 806
    .local v0, pitch:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .end local v0           #pitch:F
    :goto_58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 808
    :cond_5d
    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    add-float/2addr v3, v5

    add-float/2addr v3, v5

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_58
.end method

.method private getStateString(Z)Ljava/lang/String;
    .registers 5
    .parameter "useNewStyleOrientation"

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->getLatLonAndOrientation(Z)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, state:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/street/Street;->mMapZoom:I

    if-eqz v1, :cond_21

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/street/Street;->mMapZoom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_21
    return-object v0
.end method

.method private gotoMap()V
    .registers 4

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    .line 1018
    if-eqz v0, :cond_70

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v0}, Lcom/google/android/street/MapPoint;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->getUserOrientation()Lcom/google/android/street/UserOrientation;

    move-result-object v0

    .line 1023
    const/4 v2, 0x0

    .line 1024
    if-eqz v0, :cond_77

    .line 1025
    const-string v2, "?cbp=1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1027
    const-string v2, ",,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1029
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1031
    const/4 v0, 0x1

    .line 1033
    :goto_49
    iget v2, p0, Lcom/google/android/street/Street;->mMapZoom:I

    if-eqz v2, :cond_5e

    .line 1034
    if-nez v0, :cond_71

    .line 1035
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1040
    :goto_54
    const-string v0, "z="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget v0, p0, Lcom/google/android/street/Street;->mMapZoom:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1043
    :cond_5e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1045
    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->startActivity(Landroid/content/Intent;)V

    .line 1047
    :cond_70
    return-void

    .line 1038
    :cond_71
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    :cond_77
    move v0, v2

    goto :goto_49
.end method

.method private static inEmulator()Z
    .registers 2

    .prologue
    .line 299
    const-string v1, "QEMU"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, p:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 909
    const-string v0, "StreetView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public static logEndFrame(Lcom/google/android/street/PanoramaConfig;)V
    .registers 7
    .parameter

    .prologue
    .line 1178
    sget-object v0, Lcom/google/android/street/Street;->sStartFrameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_3
    sget-object v1, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/google/android/street/Street;->sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

    if-eq v1, p0, :cond_3a

    .line 1181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/google/android/street/Street;->sStartFrameTimestampMs:J

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1184
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    .line 1185
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/street/Street;->sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1187
    :cond_3a
    monitor-exit v0

    .line 1188
    return-void

    .line 1187
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public static logI(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 914
    const-string v0, "StreetView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 919
    const-string v0, "StreetView"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    return-void
.end method

.method public static noteStartFrame(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;Lcom/google/android/street/PanoramaConfig;)V

    .line 1141
    return-void
.end method

.method public static noteStartFrame(Ljava/lang/String;Lcom/google/android/street/PanoramaConfig;)V
    .registers 5
    .parameter "reason"
    .parameter "currentPanoramaConfig"

    .prologue
    .line 1159
    sget-object v0, Lcom/google/android/street/Street;->sStartFrameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_3
    sget-object v1, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 1161
    sput-object p0, Lcom/google/android/street/Street;->sStartFrameReason:Ljava/lang/String;

    .line 1162
    sput-object p1, Lcom/google/android/street/Street;->sStartFrameConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/street/Street;->sStartFrameTimestampMs:J

    .line 1165
    :cond_11
    monitor-exit v0

    .line 1166
    return-void

    .line 1165
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private onNetworkToggle(Z)V
    .registers 3
    .parameter "isUp"

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mRegisteredForNetworkConnectivity:Z

    if-eqz v0, :cond_13

    .line 1070
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    if-eq v0, p1, :cond_13

    .line 1071
    iput-boolean p1, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    .line 1075
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    if-eqz v0, :cond_13

    .line 1076
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 1080
    :cond_13
    return-void
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .registers 4
    .parameter "string"

    .prologue
    .line 752
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    move-result-wide v1

    double-to-float v1, v1

    .line 754
    :goto_5
    return v1

    .line 753
    :catch_6
    move-exception v0

    .line 754
    .local v0, n:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private processIntent(Landroid/os/Bundle;)V
    .registers 45
    .parameter "icicle"

    .prologue
    .line 541
    const/16 v36, 0x0

    .line 542
    .local v36, schemeSpecificPart:Ljava/lang/String;
    const/16 v26, 0x0

    .line 543
    .local v26, latLng:Lcom/google/android/street/MapPoint;
    const/16 v32, 0x0

    .line 544
    .local v32, panoID:Ljava/lang/String;
    const/16 v29, 0x0

    .line 545
    .local v29, orientation:Lcom/google/android/street/UserOrientation;
    const/16 v24, 0x0

    .line 546
    .local v24, inputOK:Z
    const/16 v21, 0x0

    .line 547
    .local v21, faceToLatLng:Lcom/google/android/street/MapPoint;
    const/4 v15, 0x0

    .line 548
    .local v15, bNewIntentActionView:Z
    const/16 v16, 0x0

    .line 549
    .local v16, config:Lcom/google/android/street/PanoramaConfig;
    const/4 v13, 0x0

    .line 550
    .local v13, action:Ljava/lang/String;
    const/16 v22, 0x0

    .line 551
    .local v22, hasDrivingDirectionsArrow:Z
    const/high16 v23, -0x4080

    .line 552
    .local v23, incomingRouteYaw:F
    const/high16 v30, -0x4080

    .line 553
    .local v30, outgoingRouteYaw:F
    const/16 v33, 0x0

    .line 555
    .local v33, panoramaTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    move-object v5, v0

    if-eqz v5, :cond_2d

    .line 556
    if-nez p1, :cond_27

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 p1, v0

    .line 559
    :cond_27
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    .line 562
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/street/Street;->getIntent()Landroid/content/Intent;

    move-result-object v25

    .line 563
    .local v25, intent:Landroid/content/Intent;
    if-eqz v25, :cond_83

    .line 564
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/street/Street;->setIntent(Landroid/content/Intent;)V

    .line 566
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 567
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 568
    const/4 v15, 0x1

    .line 569
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 570
    .local v18, data:Landroid/net/Uri;
    const-string v5, "google.streetview"

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 571
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v36

    .line 579
    .end local v18           #data:Landroid/net/Uri;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->hasPanorama()Z

    move-result v5

    if-eqz v5, :cond_90

    if-nez v15, :cond_90

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->reloadPanorama()V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->invalidate()V

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .local v10, config:Lcom/google/android/street/PanoramaConfig;
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .local v9, faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .local v8, orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .local v6, panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .line 748
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .local v7, latLng:Lcom/google/android/street/MapPoint;
    :goto_82
    return-void

    .line 574
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_83
    if-nez p1, :cond_5b

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .line 575
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto :goto_82

    .line 585
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_90
    if-nez p1, :cond_d7

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/street/StreetView;->toggleCompassMode(ZZ)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/street/MapPoint;

    const-wide v39, 0x4042e5ed288ce704L

    const-wide v41, -0x3fa166b851eb851fL

    move-object v0, v7

    move-wide/from16 v1, v39

    move-wide/from16 v3, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/street/MapPoint;-><init>(DD)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->invalidate()V

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .line 596
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto :goto_82

    .line 599
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_d7
    if-nez v36, :cond_308

    if-eqz p1, :cond_308

    const-string v5, "streetview"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_308

    .line 601
    const-string v5, "streetview"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 602
    const-string v5, "panoramaConfig"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_308

    .line 604
    :try_start_fa
    const-string v5, "panoramaConfig"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/google/android/street/PanoramaConfig;
    :try_end_105
    .catch Ljava/lang/ClassCastException; {:try_start_fa .. :try_end_105} :catch_27c

    .line 612
    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    :goto_105
    if-eqz v36, :cond_2fe

    .line 617
    const/16 v11, 0x2c

    .line 618
    .local v11, COMMA:C
    const/16 v12, 0x5f

    .line 620
    .local v12, LEGAL_SEP:C
    const/16 v5, 0x2c

    const/16 v6, 0x5f

    :try_start_10f
    move-object/from16 v0, v36

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v35

    .line 625
    .local v35, s2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://example.com/cb?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 629
    .local v19, data2:Landroid/net/Uri;
    const-string v5, "cbll"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 630
    .local v27, latLngStr:Ljava/lang/String;
    if-eqz v27, :cond_2fa

    .line 631
    const/16 v5, 0x5f

    const/16 v6, 0x2c

    move-object/from16 v0, v27

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/street/MapPoint;->parse(Ljava/lang/String;)Lcom/google/android/street/MapPoint;
    :try_end_14b
    .catch Ljava/lang/NumberFormatException; {:try_start_10f .. :try_end_14b} :catch_2d4

    move-result-object v7

    .line 632
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    if-eqz v7, :cond_150

    .line 634
    const/16 v24, 0x1

    .line 637
    :cond_150
    :goto_150
    :try_start_150
    const-string v5, "panoid"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_158
    .catch Ljava/lang/NumberFormatException; {:try_start_150 .. :try_end_158} :catch_2df

    move-result-object v6

    .line 638
    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    if-eqz v6, :cond_15d

    .line 640
    const/16 v24, 0x1

    .line 646
    :cond_15d
    :try_start_15d
    const-string v5, "cbp"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 647
    .local v31, p:Ljava/lang/String;
    if-eqz v31, :cond_2f6

    .line 648
    const-string v5, "_"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 649
    .local v14, args:[Ljava/lang/String;
    array-length v5, v14

    const/4 v8, 0x4

    if-lt v5, v8, :cond_2f6

    .line 650
    new-instance v8, Lcom/google/android/street/UserOrientation;

    invoke-direct {v8}, Lcom/google/android/street/UserOrientation;-><init>()V
    :try_end_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_17a} :catch_2e8

    .line 654
    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    :try_start_17a
    array-length v5, v14

    const/4 v9, 0x4

    if-ne v5, v9, :cond_281

    .line 656
    const/4 v5, 0x1

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 657
    const/4 v5, 0x2

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 658
    const/4 v5, 0x3

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setZoom(F)V

    .line 677
    .end local v11           #COMMA:C
    .end local v14           #args:[Ljava/lang/String;
    :goto_19c
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Street;->mMapZoom:I

    .line 678
    const-string v5, "mz"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 679
    .local v28, mapZoomValue:Ljava/lang/String;
    if-eqz v28, :cond_1bb

    .line 680
    const/4 v5, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/Street;->mMapZoom:I

    .line 686
    :cond_1bb
    const-string v5, "faceto_ll"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 687
    .local v20, f:Ljava/lang/String;
    if-eqz v20, :cond_2f2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f2

    .line 688
    const/16 v5, 0x5f

    const/16 v9, 0x2c

    move-object/from16 v0, v20

    move v1, v5

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/street/MapPoint;->parse(Ljava/lang/String;)Lcom/google/android/street/MapPoint;
    :try_end_1db
    .catch Ljava/lang/NumberFormatException; {:try_start_17a .. :try_end_1db} :catch_2b4

    move-result-object v9

    .line 694
    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    :goto_1dc
    :try_start_1dc
    const-string v5, "title"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 695
    .local v37, t:Ljava/lang/String;
    if-eqz v37, :cond_1f9

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1f9

    .line 696
    const/16 v5, 0x5f

    const/16 v11, 0x2c

    move-object/from16 v0, v37

    move v1, v5

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v33

    .line 702
    :cond_1f9
    const-string v5, "dir_arrow"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 703
    .local v17, d:Ljava/lang/String;
    if-eqz v17, :cond_227

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_227

    .line 704
    const-string v5, "_"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 705
    .restart local v14       #args:[Ljava/lang/String;
    array-length v5, v14

    const/4 v11, 0x2

    if-ne v5, v11, :cond_227

    .line 706
    const/16 v22, 0x1

    .line 707
    const/4 v5, 0x0

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v23

    .line 708
    const/4 v5, 0x1

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F
    :try_end_226
    .catch Ljava/lang/NumberFormatException; {:try_start_1dc .. :try_end_226} :catch_2ef

    move-result v30

    .line 719
    .end local v14           #args:[Ljava/lang/String;
    .end local v17           #d:Ljava/lang/String;
    .end local v19           #data2:Landroid/net/Uri;
    .end local v20           #f:Ljava/lang/String;
    .end local v27           #latLngStr:Ljava/lang/String;
    .end local v28           #mapZoomValue:Ljava/lang/String;
    .end local v31           #p:Ljava/lang/String;
    .end local v35           #s2:Ljava/lang/String;
    .end local v37           #t:Ljava/lang/String;
    :cond_227
    :goto_227
    if-nez v24, :cond_242

    .line 720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 724
    .end local v12           #LEGAL_SEP:C
    :cond_242
    :goto_242
    if-eqz v24, :cond_2cb

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/google/android/street/StreetView;->toggleCompassMode(ZZ)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 732
    if-eqz v33, :cond_2b9

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/street/StreetView;->setStatusOverride(Ljava/lang/String;)V

    .line 737
    :goto_263
    if-eqz v22, :cond_2c2

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/StreetView;->setDirectionsArrowParams(FF)V

    .line 747
    :goto_272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->invalidate()V

    goto/16 :goto_82

    .line 606
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :catch_27c
    move-exception v5

    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    goto/16 :goto_105

    .line 661
    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v11       #COMMA:C
    .restart local v12       #LEGAL_SEP:C
    .restart local v14       #args:[Ljava/lang/String;
    .restart local v19       #data2:Landroid/net/Uri;
    .restart local v27       #latLngStr:Ljava/lang/String;
    .restart local v31       #p:Ljava/lang/String;
    .restart local v35       #s2:Ljava/lang/String;
    :cond_281
    const/4 v5, 0x1

    :try_start_282
    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 663
    const/4 v5, 0x3

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/street/UserOrientation;->setZoom(F)V

    .line 666
    const/4 v5, 0x4

    aget-object v5, v14, v5

    invoke-static {v5}, Lcom/google/android/street/Street;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v9, -0x3d4c

    const/high16 v11, 0x42b4

    invoke-static {v5, v9, v11}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    .end local v11           #COMMA:C
    move-result v34

    .line 668
    .local v34, pitch:F
    const/high16 v5, 0x42b4

    sub-float v5, v5, v34

    const/high16 v9, 0x4334

    div-float v38, v5, v9

    .line 669
    .local v38, tilt:F
    move-object v0, v8

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/android/street/UserOrientation;->setTilt(F)V
    :try_end_2b2
    .catch Ljava/lang/NumberFormatException; {:try_start_282 .. :try_end_2b2} :catch_2b4

    goto/16 :goto_19c

    .line 713
    .end local v14           #args:[Ljava/lang/String;
    .end local v34           #pitch:F
    .end local v38           #tilt:F
    :catch_2b4
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_227

    .line 735
    .end local v12           #LEGAL_SEP:C
    .end local v19           #data2:Landroid/net/Uri;
    .end local v27           #latLngStr:Ljava/lang/String;
    .end local v31           #p:Ljava/lang/String;
    .end local v35           #s2:Ljava/lang/String;
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->clearStatusOverride()V

    goto :goto_263

    .line 741
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/StreetView;->clearDirectionsArrowParams()V

    goto :goto_272

    .line 744
    :cond_2cb
    const-string v5, "Got a bad Intent. Exiting."

    invoke-static {v5}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/street/Street;->finish()V

    goto :goto_272

    .line 713
    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v11       #COMMA:C
    .restart local v12       #LEGAL_SEP:C
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :catch_2d4
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_227

    .end local v6           #panoID:Ljava/lang/String;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v19       #data2:Landroid/net/Uri;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v27       #latLngStr:Ljava/lang/String;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    .restart local v35       #s2:Ljava/lang/String;
    :catch_2df
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    goto/16 :goto_227

    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    :catch_2e8
    move-exception v5

    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    goto/16 :goto_227

    .end local v11           #COMMA:C
    .restart local v20       #f:Ljava/lang/String;
    .restart local v28       #mapZoomValue:Ljava/lang/String;
    .restart local v31       #p:Ljava/lang/String;
    :catch_2ef
    move-exception v5

    goto/16 :goto_227

    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    :cond_2f2
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_1dc

    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v20           #f:Ljava/lang/String;
    .end local v28           #mapZoomValue:Ljava/lang/String;
    .restart local v11       #COMMA:C
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    :cond_2f6
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    goto/16 :goto_19c

    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v31           #p:Ljava/lang/String;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_2fa
    move-object/from16 v7, v26

    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_150

    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v11           #COMMA:C
    .end local v12           #LEGAL_SEP:C
    .end local v19           #data2:Landroid/net/Uri;
    .end local v27           #latLngStr:Ljava/lang/String;
    .end local v35           #s2:Ljava/lang/String;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    :cond_2fe
    move-object/from16 v9, v21

    .end local v21           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v9       #faceToLatLng:Lcom/google/android/street/MapPoint;
    move-object/from16 v8, v29

    .end local v29           #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v8       #orientation:Lcom/google/android/street/UserOrientation;
    move-object/from16 v6, v32

    .end local v32           #panoID:Ljava/lang/String;
    .restart local v6       #panoID:Ljava/lang/String;
    move-object/from16 v7, v26

    .end local v26           #latLng:Lcom/google/android/street/MapPoint;
    .restart local v7       #latLng:Lcom/google/android/street/MapPoint;
    goto/16 :goto_242

    .end local v6           #panoID:Ljava/lang/String;
    .end local v7           #latLng:Lcom/google/android/street/MapPoint;
    .end local v8           #orientation:Lcom/google/android/street/UserOrientation;
    .end local v9           #faceToLatLng:Lcom/google/android/street/MapPoint;
    .end local v10           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v16       #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v21       #faceToLatLng:Lcom/google/android/street/MapPoint;
    .restart local v26       #latLng:Lcom/google/android/street/MapPoint;
    .restart local v29       #orientation:Lcom/google/android/street/UserOrientation;
    .restart local v32       #panoID:Ljava/lang/String;
    :cond_308
    move-object/from16 v10, v16

    .end local v16           #config:Lcom/google/android/street/PanoramaConfig;
    .restart local v10       #config:Lcom/google/android/street/PanoramaConfig;
    goto/16 :goto_105
.end method

.method private reportInappropriateImage()V
    .registers 5

    .prologue
    .line 1050
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    .line 1051
    .local v1, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v1, :cond_16

    .line 1052
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/street/Street;->getOrientation(Z)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, panoArgs:Ljava/lang/String;
    iget-object v3, v1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/street/StreetUrl;->getReportInappropriateImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, reportUrl:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/street/Street;->showUrl(Ljava/lang/String;)V

    .line 1058
    .end local v0           #panoArgs:Ljava/lang/String;
    .end local v2           #reportUrl:Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private showUrl(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 983
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 986
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_e} :catch_f

    .line 990
    :goto_e
    return-void

    .line 987
    :catch_f
    move-exception v0

    .line 988
    const-string v1, "Could not start activty"

    invoke-static {v1, v0}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method


# virtual methods
.method public getApproximateLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/android/street/Street;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/android/street/Street;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_12

    .line 1211
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/Street;->mDefaultDisplay:Landroid/view/Display;

    .line 1215
    :cond_12
    iget-object v0, p0, Lcom/google/android/street/Street;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .registers 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/android/street/Street;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_e

    .line 1199
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/street/Street;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1202
    :cond_e
    iget-object v0, p0, Lcom/google/android/street/Street;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 364
    const-string v7, "Warm start onCreate()"

    invoke-static {v7}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 365
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 382
    sget-boolean v7, Lcom/google/android/street/Street;->mGlobalStateInitialized:Z

    if-nez v7, :cond_11

    .line 383
    sput-boolean v10, Lcom/google/android/street/Street;->mGlobalStateInitialized:Z

    .line 387
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 388
    .local v1, config:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v7, 0xf

    .line 389
    .local v4, screenLayoutSize:I
    const/4 v7, 0x4

    if-ne v4, v7, :cond_102

    move v2, v10

    .line 390
    .local v2, isTabletLayoutSize:Z
    :goto_21
    invoke-static {}, Lcom/google/mobile/googlenav/android/AndroidBuilds;->isHoneycombSdk()Z

    move-result v7

    if-eqz v7, :cond_105

    if-eqz v2, :cond_105

    move v7, v10

    :goto_2a
    iput-boolean v7, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    .line 391
    invoke-static {}, Lcom/google/mobile/googlenav/android/AndroidBuilds;->isHoneycombSdk()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/street/Street;->mActionBarInUse:Z

    .line 398
    iget-boolean v7, p0, Lcom/google/android/street/Street;->mActionBarInUse:Z

    if-eqz v7, :cond_108

    .line 399
    const/high16 v7, 0x7f06

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->setTheme(I)V

    .line 404
    :goto_3b
    const v7, 0x7f030002

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->setContentView(I)V

    .line 406
    iget-boolean v7, p0, Lcom/google/android/street/Street;->mActionBarInUse:Z

    if-nez v7, :cond_59

    .line 407
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v9, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 409
    const v7, 0x7f080001

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/street/Street;->mTitleText:Landroid/widget/TextView;

    .line 418
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, cacheDirPath:Ljava/lang/String;
    new-instance v7, Lcom/google/android/street/HttpCache;

    const/4 v8, 0x3

    const/16 v9, 0x64

    invoke-direct {v7, v8, v0, v9}, Lcom/google/android/street/HttpCache;-><init>(ILjava/lang/String;I)V

    iput-object v7, p0, Lcom/google/android/street/Street;->mHttpCache:Lcom/google/android/street/HttpCache;

    .line 421
    new-instance v7, Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/Street;->mHttpCache:Lcom/google/android/street/HttpCache;

    invoke-direct {v7, v8}, Lcom/google/android/street/PanoramaManager;-><init>(Lcom/google/android/street/HttpCache;)V

    iput-object v7, p0, Lcom/google/android/street/Street;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    .line 424
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/google/android/street/Street;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 425
    iget-object v7, p0, Lcom/google/android/street/Street;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    new-instance v7, Lcom/google/android/street/Street$1;

    invoke-direct {v7, p0}, Lcom/google/android/street/Street$1;-><init>(Lcom/google/android/street/Street;)V

    iput-object v7, p0, Lcom/google/android/street/Street;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    invoke-direct {p0}, Lcom/google/android/street/Street;->checkNetworkAvailability()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    .line 447
    invoke-static {}, Lcom/google/mobile/googlenav/android/AndroidBuilds;->isGingerbreadSdk()Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 448
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.sensor.compass"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/street/Street;->mHasCompass:Z

    .line 451
    :cond_a1
    const/4 v7, -0x1

    iput v7, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    .line 454
    const-string v7, "location"

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 456
    .local v3, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v7

    const-string v8, "network"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 458
    const-string v7, "network"

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/street/Street;->mLocation:Landroid/location/Location;

    .line 462
    :cond_c0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 463
    .local v5, t0:J
    const-string v7, "StreetView"

    new-instance v8, Lcom/google/android/street/Street$DrdListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/street/Street$DrdListener;-><init>(Lcom/google/android/street/Street;Lcom/google/android/street/Street$1;)V

    invoke-static {p0, v7, v8}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->setupConfigAndDrd(Landroid/content/Context;Ljava/lang/String;Lcom/google/mobile/googlenav/datarequest/DataRequestListener;)V

    .line 470
    const v7, 0x7f080006

    invoke-virtual {p0, v7}, Lcom/google/android/street/Street;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/street/StreetView;

    iput-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    .line 471
    iget-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    iget-object v8, p0, Lcom/google/android/street/Street;->timer:Lcom/google/android/street/Timer;

    invoke-virtual {v7, v8}, Lcom/google/android/street/StreetView;->setTimer(Lcom/google/android/street/Timer;)V

    .line 472
    iget-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    iget-object v8, p0, Lcom/google/android/street/Street;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-boolean v9, p0, Lcom/google/android/street/Street;->mIsTablet:Z

    invoke-virtual {v7, p0, v8, v9}, Lcom/google/android/street/StreetView;->initialize(Lcom/google/android/street/Street;Lcom/google/android/street/PanoramaManager;Z)V

    .line 473
    iget-object v7, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v7}, Lcom/google/android/street/StreetView;->requestFocus()Z

    .line 476
    invoke-static {p0}, Lcom/google/android/street/WhatsNewDialog;->shouldShow(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 477
    invoke-virtual {p0, v10}, Lcom/google/android/street/Street;->showDialog(I)V

    .line 480
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_101

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/street/Street;->processIntent(Landroid/os/Bundle;)V

    .line 504
    :cond_101
    return-void

    .end local v0           #cacheDirPath:Ljava/lang/String;
    .end local v2           #isTabletLayoutSize:Z
    .end local v3           #locationManager:Landroid/location/LocationManager;
    .end local v5           #t0:J
    :cond_102
    move v2, v8

    .line 389
    goto/16 :goto_21

    .restart local v2       #isTabletLayoutSize:Z
    :cond_105
    move v7, v8

    .line 390
    goto/16 :goto_2a

    .line 401
    :cond_108
    invoke-virtual {p0, v9}, Lcom/google/android/street/Street;->requestWindowFeature(I)Z

    goto/16 :goto_3b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 933
    packed-switch p1, :pswitch_data_c

    .line 937
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 935
    :pswitch_5
    new-instance v0, Lcom/google/android/street/WhatsNewDialog;

    invoke-direct {v0, p0}, Lcom/google/android/street/WhatsNewDialog;-><init>(Landroid/content/Context;)V

    goto :goto_4

    .line 933
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/google/android/street/Street;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 925
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mHasCompass:Z

    if-nez v0, :cond_13

    .line 926
    const v0, 0x7f080010

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 928
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 885
    invoke-static {}, Lcom/google/android/common/datarequest/ConfigAndDrdUtil;->cleanupConfigAndDrd()V

    .line 886
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 890
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 996
    .local v0, handled:Z
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v2

    .line 997
    .local v2, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v2, :cond_16

    const/4 v3, 0x1

    move v1, v3

    .line 999
    .local v1, okToAct:Z
    :goto_b
    packed-switch p1, :pswitch_data_26

    .line 1008
    :cond_e
    :goto_e
    if-eqz v0, :cond_20

    .line 1009
    iget-object v3, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v3}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 1013
    :goto_15
    return v0

    .line 997
    .end local v1           #okToAct:Z
    :cond_16
    const/4 v3, 0x0

    move v1, v3

    goto :goto_b

    .line 1001
    .restart local v1       #okToAct:Z
    :pswitch_19
    if-eqz v1, :cond_e

    .line 1002
    invoke-direct {p0}, Lcom/google/android/street/Street;->gotoMap()V

    .line 1003
    const/4 v0, 0x1

    goto :goto_e

    .line 1011
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15

    .line 999
    nop

    :pswitch_data_26
    .packed-switch 0x29
        :pswitch_19
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "newIntent"

    .prologue
    .line 900
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 904
    invoke-virtual {p0, p1}, Lcom/google/android/street/Street;->setIntent(Landroid/content/Intent;)V

    .line 905
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 942
    .line 943
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_2a

    move v0, v3

    .line 946
    :goto_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 948
    if-eqz v0, :cond_7c

    .line 949
    packed-switch v1, :pswitch_data_7e

    .line 966
    :pswitch_14
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mActionBarInUse:Z

    if-eqz v0, :cond_75

    invoke-static {v1}, Lcom/google/android/street/ActionBarUtil;->isHomeId(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 967
    invoke-virtual {p0}, Lcom/google/android/street/Street;->finish()V

    move v0, v3

    .line 974
    :goto_22
    if-eqz v0, :cond_77

    .line 975
    iget-object v1, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v1}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 979
    :goto_29
    return v0

    :cond_2a
    move v0, v2

    .line 944
    goto :goto_b

    .line 951
    :pswitch_2c
    invoke-direct {p0}, Lcom/google/android/street/Street;->gotoMap()V

    move v0, v3

    .line 952
    goto :goto_22

    .line 954
    :pswitch_31
    invoke-direct {p0}, Lcom/google/android/street/Street;->reportInappropriateImage()V

    move v0, v3

    .line 955
    goto :goto_22

    .line 957
    :pswitch_36
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->toggleCompassMode()V

    move v0, v3

    .line 958
    goto :goto_22

    .line 960
    :pswitch_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.google.com/tospage?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/street/Street;->showUrl(Ljava/lang/String;)V

    move v0, v3

    .line 961
    goto :goto_22

    .line 963
    :pswitch_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.google.com/privacy?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/street/Street;->showUrl(Ljava/lang/String;)V

    move v0, v3

    .line 964
    goto :goto_22

    :cond_75
    move v0, v2

    .line 969
    goto :goto_22

    .line 977
    :cond_77
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_29

    :cond_7c
    move v0, v3

    goto :goto_22

    .line 949
    :pswitch_data_7e
    .packed-switch 0x7f08000e
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_14
        :pswitch_3d
        :pswitch_59
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 831
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 835
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->onPause()V

    .line 836
    iget-object v0, p0, Lcom/google/android/street/Street;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/street/Street;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/Street;->mRegisteredForNetworkConnectivity:Z

    .line 838
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 867
    const-string v0, "Warm start onRestart()"

    invoke-static {v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 868
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 873
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 778
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 783
    iput-object p1, p0, Lcom/google/android/street/Street;->mSavedInstanceState:Landroid/os/Bundle;

    .line 784
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 842
    const-string v0, "Warm start onResume()"

    invoke-static {v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 843
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 848
    iget-object v0, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView;->onResume()V

    .line 849
    iget-object v0, p0, Lcom/google/android/street/Street;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/street/Street;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/street/Street;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Street;->mRegisteredForNetworkConnectivity:Z

    .line 852
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/street/Street;->processIntent(Landroid/os/Bundle;)V

    .line 853
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 760
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 764
    iget-object v2, p0, Lcom/google/android/street/Street;->mStreetView:Lcom/google/android/street/StreetView;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView;->getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    .line 765
    .local v1, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    if-eqz v1, :cond_1a

    .line 766
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/street/Street;->getStateString(Z)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, out:Ljava/lang/String;
    const-string v2, "streetview"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v2, "panoramaConfig"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    .end local v0           #out:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 857
    const-string v0, "Warm start onStart()"

    invoke-static {v0}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;)V

    .line 858
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 863
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 877
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 881
    return-void
.end method

.method public reportProgress(I)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 524
    return-void
.end method

.method public reportTransitionProgress(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 529
    const/16 v1, 0x4e20

    if-le p1, v1, :cond_11

    const/4 v1, 0x0

    move v0, v1

    .line 531
    .local v0, visibility:I
    :goto_6
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/google/android/street/Street;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 532
    return-void

    .line 529
    .end local v0           #visibility:I
    :cond_11
    const/16 v1, 0x8

    move v0, v1

    goto :goto_6
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mActionBarInUse:Z

    if-eqz v0, :cond_8

    .line 508
    invoke-static {p0, p1}, Lcom/google/android/street/ActionBarUtil;->setActionBarTitle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 512
    :goto_7
    return-void

    .line 510
    :cond_8
    iget-object v0, p0, Lcom/google/android/street/Street;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public wasNetworkAvailable()Z
    .registers 3

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/google/android/street/Street;->mNetworkAvailable:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/street/Street;->mDrdNetworkError:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
