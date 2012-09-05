.class Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;
.super Ljava/lang/Object;
.source "DSMTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMTrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GPSTrackingTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;
    }
.end annotation


# instance fields
.field private mInterval:I

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWaitTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "interval"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer$GPSTrackingTimerTask;-><init>(Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;Lcom/sec/dsm/system/DSMTrackingService$1;)V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 265
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mWaitTimer:Ljava/util/Timer;

    .line 266
    iput p1, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mInterval:I

    .line 267
    return-void
.end method


# virtual methods
.method public endTimer()V
    .registers 2

    .prologue
    .line 275
    const-string v0, "Timer cancel"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mWaitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 277
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 278
    return-void
.end method

.method public startTimer()V
    .registers 6

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mWaitTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mTimerTask:Ljava/util/TimerTask;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget v3, p0, Lcom/sec/dsm/system/DSMTrackingService$GPSTrackingTimer;->mInterval:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 272
    return-void
.end method
