.class public final Lcom/android/facelock/ProcessingThread;
.super Landroid/os/HandlerThread;
.source "ProcessingThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/facelock/ProcessingThread$1;
    }
.end annotation


# static fields
.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private CONFIDENCE_MULTIPLY_FACTOR:F

.field mFirstNonBlackFrameTime:J

.field private mHandler:Landroid/os/Handler;

.field mInitialBlackScreen:Z

.field private mIsFirstFrame:Z

.field private mNumBlackFrames:I

.field private mRotation:I

.field private final mServiceHandler:Landroid/os/Handler;

.field private mTooClose:Z

.field private mTries:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/facelock/ProcessingThread;->mLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .parameter "name"
    .parameter "serviceHandler"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    iput v1, p0, Lcom/android/facelock/ProcessingThread;->mRotation:I

    .line 38
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/facelock/ProcessingThread;->CONFIDENCE_MULTIPLY_FACTOR:F

    .line 39
    iput v1, p0, Lcom/android/facelock/ProcessingThread;->mNumBlackFrames:I

    .line 41
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/facelock/ProcessingThread;->mTries:[I

    .line 44
    iput-boolean v1, p0, Lcom/android/facelock/ProcessingThread;->mTooClose:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/facelock/ProcessingThread;->mInitialBlackScreen:Z

    .line 51
    iput-object p2, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mTries:[I

    aput v1, v0, v1

    .line 53
    iput-boolean v2, p0, Lcom/android/facelock/ProcessingThread;->mIsFirstFrame:Z

    .line 54
    return-void
.end method

.method private compareImage([BII)V
    .registers 15
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/ProcessingThread;->mIsFirstFrame:Z

    .line 87
    iget-boolean v0, p0, Lcom/android/facelock/ProcessingThread;->mInitialBlackScreen:Z

    if-eqz v0, :cond_31

    .line 91
    invoke-static {p1, p2, p3}, Lcom/android/facelockutil/FaceLockUtil;->unlockIsBlackScreen([BII)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 92
    iget v0, p0, Lcom/android/facelock/ProcessingThread;->mNumBlackFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/facelock/ProcessingThread;->mNumBlackFrames:I

    .line 93
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/facelock/ProcessingThread;->mNumBlackFrames:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 95
    .local v6, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    .end local v6           #msg:Landroid/os/Message;
    :goto_22
    return-void

    .line 102
    :cond_23
    iget v0, p0, Lcom/android/facelock/ProcessingThread;->mNumBlackFrames:I

    invoke-static {v0}, Lcom/android/facelock/EventLogTags;->writeFacelockBlackFrames(I)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/ProcessingThread;->mInitialBlackScreen:Z

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/facelock/ProcessingThread;->mFirstNonBlackFrameTime:J

    .line 109
    :cond_31
    iget-boolean v0, p0, Lcom/android/facelock/ProcessingThread;->mTooClose:Z

    if-eqz v0, :cond_3c

    .line 110
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 118
    :cond_3c
    const/4 v0, 0x1

    new-array v5, v0, [F

    .line 119
    .local v5, confidence:[F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 120
    .local v8, startTime:J
    sget-object v10, Lcom/android/facelock/ProcessingThread;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 121
    :try_start_46
    iget-object v3, p0, Lcom/android/facelock/ProcessingThread;->mTries:[I

    iget v4, p0, Lcom/android/facelock/ProcessingThread;->mRotation:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/facelockutil/FaceLockUtil;->unlockCompareFace([BII[II[F)Lcom/android/facelockutil/FaceLockUtil$CompareState;

    move-result-object v7

    .line 122
    .local v7, result:Lcom/android/facelockutil/FaceLockUtil$CompareState;
    monitor-exit v10
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_6c

    .line 130
    sget-object v0, Lcom/android/facelock/ProcessingThread$1;->$SwitchMap$com$android$facelockutil$FaceLockUtil$CompareState:[I

    invoke-virtual {v7}, Lcom/android/facelockutil/FaceLockUtil$CompareState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b8

    .line 155
    const-string v0, "ProcessingThread"

    const-string v1, "Invalid return value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 122
    .end local v7           #result:Lcom/android/facelockutil/FaceLockUtil$CompareState;
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v10
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0

    .line 132
    .restart local v7       #result:Lcom/android/facelockutil/FaceLockUtil$CompareState;
    :pswitch_6f
    const/4 v0, 0x0

    aget v0, v5, v0

    iget v1, p0, Lcom/android/facelock/ProcessingThread;->CONFIDENCE_MULTIPLY_FACTOR:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/facelock/EventLogTags;->writeFacelockSuccess(I)V

    .line 134
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 137
    :pswitch_80
    const/4 v0, 0x0

    aget v0, v5, v0

    iget v1, p0, Lcom/android/facelock/ProcessingThread;->CONFIDENCE_MULTIPLY_FACTOR:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/facelock/EventLogTags;->writeFacelockFail(I)V

    .line 138
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 141
    :pswitch_91
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 144
    :pswitch_98
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockNoFace()V

    .line 145
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 148
    :pswitch_a2
    invoke-static {}, Lcom/android/facelock/EventLogTags;->writeFacelockNoTemplate()V

    .line 149
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_22

    .line 152
    :pswitch_ae
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_22

    .line 130
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_80
        :pswitch_91
        :pswitch_98
        :pswitch_a2
        :pswitch_ae
    .end packed-switch
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/facelock/ProcessingThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_6
    return v0

    .line 64
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/facelock/ProcessingThread;->compareImage([BII)V

    .line 69
    const/4 v0, 0x1

    goto :goto_6

    .line 62
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public setRotation(I)V
    .registers 2
    .parameter "rotation"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/facelock/ProcessingThread;->mRotation:I

    .line 75
    return-void
.end method

.method public setTooClose(Z)V
    .registers 2
    .parameter "tooClose"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/facelock/ProcessingThread;->mTooClose:Z

    .line 80
    return-void
.end method

.method public declared-synchronized waitUntilReady()V
    .registers 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/facelock/ProcessingThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/facelock/ProcessingThread;->mHandler:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
