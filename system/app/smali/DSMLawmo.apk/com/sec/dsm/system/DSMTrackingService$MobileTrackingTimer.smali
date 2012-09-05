.class Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;
.super Ljava/lang/Object;
.source "DSMTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMTrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileTrackingTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;
    }
.end annotation


# instance fields
.field private mEndDate:Ljava/lang/String;

.field private mInterval:I

.field private mIntervalTimer:Ljava/util/Timer;

.field private mStartDate:Ljava/lang/String;

.field private mTrackingTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "interval"
    .parameter "startdate"
    .parameter "enddate"

    .prologue
    .line 313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer$MobileTrackingTimerTask;-><init>(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;Lcom/sec/dsm/system/DSMTrackingService$1;)V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mTrackingTimerTask:Ljava/util/TimerTask;

    .line 315
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mIntervalTimer:Ljava/util/Timer;

    .line 316
    iput p1, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mInterval:I

    .line 317
    iput-object p2, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mStartDate:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mEndDate:Ljava/lang/String;

    .line 321
    return-void
.end method

.method static synthetic access$300(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 306
    iget v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mInterval:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mStartDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mEndDate:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public endTimer()V
    .registers 2

    .prologue
    .line 353
    const-string v0, "TrackingTimer cancel"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mIntervalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 355
    iget-object v0, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mTrackingTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 356
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/dsm/system/DSMTrackingService;->mobileTrackingTimer:Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;

    .line 357
    return-void
.end method

.method public startTimer()V
    .registers 14

    .prologue
    .line 325
    iget v8, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mInterval:I

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v3, v8, 0x3e8

    .line 327
    .local v3, nInterval:I
    const/4 v1, 0x0

    .line 329
    .local v1, dStartDate:Ljava/util/Date;
    :try_start_7
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 330
    .local v7, time:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mStartDate:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 331
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 335
    .local v5, tStartDate:J
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, cDateFormat:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 337
    .local v4, tDateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 340
    iget-object v8, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mIntervalTimer:Ljava/util/Timer;

    iget-object v9, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mTrackingTimerTask:Ljava/util/TimerTask;

    int-to-long v10, v3

    invoke-virtual {v8, v9, v1, v10, v11}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_3d
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_3d} :catch_50
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_3d} :catch_55

    .line 350
    .end local v0           #cDateFormat:Ljava/lang/String;
    .end local v4           #tDateFormat:Ljava/text/SimpleDateFormat;
    .end local v5           #tStartDate:J
    .end local v7           #time:Landroid/text/format/Time;
    :goto_3d
    return-void

    .line 342
    :catch_3e
    move-exception v2

    .line 343
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 344
    iget-object v8, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mIntervalTimer:Ljava/util/Timer;

    iget-object v9, p0, Lcom/sec/dsm/system/DSMTrackingService$MobileTrackingTimer;->mTrackingTimerTask:Ljava/util/TimerTask;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    int-to-long v11, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    goto :goto_3d

    .line 345
    .end local v2           #e:Ljava/text/ParseException;
    :catch_50
    move-exception v2

    .line 346
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3d

    .line 347
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_55
    move-exception v2

    .line 348
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3d
.end method
