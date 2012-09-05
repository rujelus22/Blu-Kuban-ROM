.class Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;
.super Lcom/infraware/office/util/EvMessageTimerTask;
.source "EvBaseGestureProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageInfoTask"
.end annotation


# instance fields
.field protected final mAnimInterval:J

.field protected final mInfoInterval:J

.field protected final mMinusRatio:F

.field protected final mScrollBarInterval:J

.field mStartTime:J

.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;J)V
    .registers 6
    .parameter
    .parameter "startTime"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 462
    invoke-direct {p0}, Lcom/infraware/office/util/EvMessageTimerTask;-><init>()V

    .line 455
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->mInfoInterval:J

    .line 456
    const-wide/16 v0, 0x28a

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->mScrollBarInterval:J

    .line 457
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->mAnimInterval:J

    .line 458
    const v0, 0x3f933333

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->mMinusRatio:F

    .line 463
    iput-wide p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->mStartTime:J

    .line 464
    const/16 v0, 0xe6

    iput v0, p1, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarAlpha:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const-wide/16 v5, 0x28a

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->mStartTime:J

    sub-long v7, v0, v2

    .line 469
    .local v7, diffTime:J
    cmp-long v0, v7, v5

    if-ltz v0, :cond_34

    .line 470
    const-wide/16 v0, 0x5dc

    cmp-long v0, v7, v0

    if-ltz v0, :cond_35

    .line 471
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iput v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarAlpha:I

    .line 472
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    if-eqz v0, :cond_2b

    .line 473
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 474
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iput-object v10, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    .line 476
    :cond_2b
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iput-boolean v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mbScrollbar:Z

    .line 478
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, v4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->setPageInfoType(I)V

    .line 503
    :cond_34
    :goto_34
    return-void

    .line 480
    :cond_35
    cmp-long v0, v7, v5

    if-lez v0, :cond_6f

    const-wide/16 v0, 0x352

    cmp-long v0, v7, v0

    if-gez v0, :cond_6f

    .line 481
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    const/high16 v1, 0x4366

    sub-long v2, v7, v5

    long-to-float v2, v2

    const v3, 0x3f933333

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarAlpha:I

    .line 483
    :try_start_4e
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_5b} :catch_5c

    goto :goto_34

    .line 484
    :catch_5c
    move-exception v9

    .line 485
    .local v9, e:Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    if-eqz v0, :cond_34

    .line 486
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 487
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iput-object v10, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    goto :goto_34

    .line 492
    .end local v9           #e:Ljava/lang/NullPointerException;
    :cond_6f
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iput v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mScrollBarAlpha:I

    .line 494
    :try_start_73
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I
    :try_end_80
    .catch Ljava/lang/NullPointerException; {:try_start_73 .. :try_end_80} :catch_81

    goto :goto_34

    .line 495
    :catch_81
    move-exception v9

    .line 496
    .restart local v9       #e:Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    if-eqz v0, :cond_34

    .line 497
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    invoke-virtual {v0}, Lcom/infraware/office/util/EvMessageTimer;->cancel()V

    .line 498
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoTask;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iput-object v10, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoTimer:Lcom/infraware/office/util/EvMessageTimer;

    goto :goto_34
.end method
