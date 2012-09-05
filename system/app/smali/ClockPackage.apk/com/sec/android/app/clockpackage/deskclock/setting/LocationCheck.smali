.class public Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;
.super Ljava/lang/Object;
.source "LocationCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;,
        Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;
    }
.end annotation


# static fields
.field static final DEBUG_ENG:Z

.field private static volatile mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mChangeShownValue:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLatitude:D

.field private mLocationCheckCallBack:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;

.field private mLongitude:D

.field private mMyLocationListener:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;

.field private mMyLocationManager:Landroid/location/LocationManager;

.field private mMyLocationManager2:Landroid/location/LocationManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mProviderHandler:Landroid/os/Handler;

.field providerRunnable:Ljava/lang/Runnable;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->DEBUG_ENG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLocationCheckCallBack:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)D
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)D
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLongitude:D

    return-wide p1
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 362
    return-void
.end method

.method public locationFree()V
    .registers 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_b

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationListener:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 426
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationManager2:Landroid/location/LocationManager;

    if-eqz v1, :cond_16

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationManager2:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationListener:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 431
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_21

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mProviderHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2c

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mProviderHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->providerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_3f

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 448
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->finalize()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_46

    .line 454
    :goto_42
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLocationCheck:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    .line 455
    return-void

    .line 449
    :catch_46
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "LocationCheck"

    const-string v2, "LocationCheck Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_42
.end method

.method public setAlertDialg()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_5

    .line 283
    :goto_4
    return-void

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mChangeShownValue:Z

    if-nez v0, :cond_1a

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mChangeShownValue:Z

    goto :goto_4

    .line 280
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mChangeShownValue:Z

    goto :goto_4
.end method

.method public stopLocationListener()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationListener:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationManager2:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mMyLocationListener:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 142
    return-void
.end method
