.class public Lcom/quramsoft/xiv/AnimatorSingle;
.super Ljava/lang/Object;
.source "AnimatorSingle.java"


# instance fields
.field private mAvailableLast:I

.field private mDuration:F

.field private mEnd:F

.field private mIsStarted:Z

.field private mLastDT:[F

.field private mLastDX:[F

.field private mLastT:F

.field private mLastTimeAvailable:Z

.field private mLastTimeTemp:F

.field private mLastX:F

.field private mStart:F

.field private mStartT:F

.field private mTiming:I

.field private mV:F

.field private mVelocityExaggeration:F

.field private mVelocityLimit:Z

.field private mVelocitySmoothing:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mVelocitySmoothing:I

    .line 18
    iput v2, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    .line 19
    iput-boolean v2, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeAvailable:Z

    .line 20
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDT:[F

    .line 21
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDX:[F

    .line 24
    iput v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mV:F

    .line 26
    iput-boolean v2, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mIsStarted:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mVelocityLimit:Z

    .line 29
    iput v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    .line 30
    iput v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    .line 31
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mDuration:F

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mTiming:I

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mVelocityExaggeration:F

    .line 37
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_37

    .line 39
    const-string v0, "AnimatorSingle"

    const-string v1, "AnimatorSingle created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_37
    return-void
.end method


# virtual methods
.method public getSpeed()F
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mV:F

    return v0
.end method

.method public getX()F
    .registers 14

    .prologue
    const/high16 v12, 0x3fe0

    const/high16 v11, 0x3f40

    const/high16 v10, 0x4040

    const/high16 v9, 0x3f80

    .line 163
    iget-boolean v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mIsStarted:Z

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/quramsoft/xiv/AnimatorSingle;->start()V

    .line 164
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-float v5, v5

    const v6, 0x3a83126f

    mul-float v0, v5, v6

    .line 165
    .local v0, cur:F
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStartT:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mDuration:F

    div-float v2, v5, v6

    .line 167
    .local v2, t:F
    sget-boolean v5, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v5, :cond_47

    .line 169
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeTemp:F

    sub-float v5, v2, v5

    float-to-double v5, v5

    const-wide v7, 0x3fb999999999999aL

    cmpl-double v5, v5, v7

    if-lez v5, :cond_47

    .line 170
    const-string v5, "AnimatorSingle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Dropping Frame = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_47
    iput v2, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeTemp:F

    .line 174
    cmpl-float v5, v2, v9

    if-lez v5, :cond_5a

    .line 176
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mIsStarted:Z

    .line 178
    invoke-static {}, Lcom/quramsoft/xiv/XIVSlotChecker;->getInstance()Lcom/quramsoft/xiv/XIVSlotChecker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quramsoft/xiv/XIVSlotChecker;->draw()V

    .line 180
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    .line 210
    :goto_59
    return v5

    .line 185
    :cond_5a
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mTiming:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_67

    .line 189
    neg-float v5, v2

    mul-float/2addr v5, v2

    mul-float/2addr v5, v11

    mul-float v6, v12, v2

    add-float v2, v5, v6

    .line 191
    :cond_67
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mTiming:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_cd

    .line 192
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mV:F

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mDuration:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v12

    div-float/2addr v6, v10

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mVelocityExaggeration:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 197
    .local v3, x2:F
    :goto_7b
    iget-boolean v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mVelocityLimit:Z

    if-eqz v5, :cond_a2

    .line 200
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_e1

    const/4 v1, 0x0

    .line 202
    .local v1, dd:F
    :goto_8c
    cmpl-float v5, v1, v11

    if-lez v5, :cond_92

    const/high16 v1, 0x3f40

    .line 203
    :cond_92
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_98

    const/4 v1, 0x0

    .line 204
    :cond_98
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    mul-float/2addr v5, v1

    sub-float v6, v9, v1

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 206
    .end local v1           #dd:F
    :cond_a2
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mTiming:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_ed

    .line 207
    iget v4, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    .line 210
    .local v4, x3:F
    :goto_aa
    sub-float v5, v9, v2

    sub-float v6, v9, v2

    mul-float/2addr v5, v6

    sub-float v6, v9, v2

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    mul-float/2addr v5, v6

    .line 211
    sub-float v6, v9, v2

    mul-float/2addr v6, v10

    sub-float v7, v9, v2

    mul-float/2addr v6, v7

    mul-float/2addr v6, v2

    mul-float/2addr v6, v3

    .line 210
    add-float/2addr v5, v6

    .line 212
    sub-float v6, v9, v2

    mul-float/2addr v6, v10

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v4

    .line 210
    add-float/2addr v5, v6

    .line 213
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    mul-float/2addr v6, v7

    .line 210
    add-float/2addr v5, v6

    goto :goto_59

    .line 193
    .end local v3           #x2:F
    .end local v4           #x3:F
    :cond_cd
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mTiming:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_d6

    .line 194
    iget v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    .restart local v3       #x2:F
    goto :goto_7b

    .line 196
    .end local v3           #x2:F
    :cond_d6
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float v3, v5, v6

    .restart local v3       #x2:F
    goto :goto_7b

    .line 201
    :cond_e1
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    sub-float/2addr v6, v7

    div-float v1, v5, v6

    .restart local v1       #dd:F
    goto :goto_8c

    .line 209
    .end local v1           #dd:F
    :cond_ed
    iget v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    iget v7, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float v4, v5, v6

    .restart local v4       #x3:F
    goto :goto_aa
.end method

.method public isRunning()Z
    .registers 4

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, isStarted:Z
    const-class v2, Lcom/quramsoft/xiv/AnimatorSingle;

    monitor-enter v2

    .line 221
    :try_start_4
    iget-boolean v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mIsStarted:Z

    .line 220
    monitor-exit v2

    .line 223
    return v0

    .line 220
    :catchall_8
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public queueDelta(F)V
    .registers 5
    .parameter "deltaX"

    .prologue
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float v0, v1, v2

    .line 115
    .local v0, time:F
    iget-boolean v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeAvailable:Z

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastT:F

    sub-float v1, v0, v1

    invoke-virtual {p0, p1, v1}, Lcom/quramsoft/xiv/AnimatorSingle;->queueDelta(FF)V

    .line 116
    :cond_15
    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastT:F

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeAvailable:Z

    .line 118
    return-void
.end method

.method public queueDelta(FF)V
    .registers 11
    .parameter "deltaX"
    .parameter "deltaT"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 74
    move v1, p1

    .line 75
    .local v1, dxSum:F
    move v0, p2

    .line 77
    .local v0, dtSum:F
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_3c

    .line 79
    const-string v3, "AnimatorSingle"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "queueDelta : deltaX = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deltaT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v3, "AnimatorSingle"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "queueDelta : mAvailableLast = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_3c
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3d
    iget v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mVelocitySmoothing:I

    if-lt v2, v3, :cond_be

    .line 93
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDX:[F

    aput p1, v3, v7

    .line 94
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDT:[F

    aput p2, v3, v7

    .line 95
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDX:[F

    aget v3, v3, v7

    add-float/2addr v1, v3

    .line 96
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDT:[F

    aget v3, v3, v7

    add-float/2addr v0, v3

    .line 97
    iget v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    .line 99
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_b5

    .line 101
    const-string v3, "AnimatorSingle"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "queued: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v3, "AnimatorSingle"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "queued: dxSum = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dtSum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v5, "AnimatorSingle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "queued: mV = "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmpl-float v3, v0, v4

    if-lez v3, :cond_e4

    div-float v3, v1, v0

    :goto_aa
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_b5
    cmpl-float v3, v0, v4

    if-lez v3, :cond_e6

    div-float v3, v1, v0

    iput v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mV:F

    .line 111
    :goto_bd
    return-void

    .line 85
    :cond_be
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDX:[F

    iget-object v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDX:[F

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    aput v5, v3, v2

    .line 86
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDT:[F

    iget-object v5, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDT:[F

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    aput v5, v3, v2

    .line 87
    iget v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    if-ge v2, v3, :cond_e0

    .line 89
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDX:[F

    aget v3, v3, v2

    add-float/2addr v1, v3

    .line 90
    iget-object v3, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastDT:[F

    aget v3, v3, v2

    add-float/2addr v0, v3

    .line 83
    :cond_e0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3d

    :cond_e4
    move v3, v4

    .line 103
    goto :goto_aa

    .line 107
    :cond_e6
    iput v4, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mV:F

    goto :goto_bd
.end method

.method public queueLast()V
    .registers 4

    .prologue
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float v0, v1, v2

    .line 134
    .local v0, time:F
    iget v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastT:F

    sub-float v1, v0, v1

    const v2, 0x3dcccccd

    cmpl-float v1, v1, v2

    if-lez v1, :cond_19

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/quramsoft/xiv/AnimatorSingle;->queueDelta(F)V

    .line 136
    :cond_19
    return-void
.end method

.method public queuePos(F)V
    .registers 5
    .parameter "p"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3a83126f

    mul-float v0, v1, v2

    .line 123
    .local v0, time:F
    iget v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    if-lez v1, :cond_15

    .line 124
    iget v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastX:F

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/quramsoft/xiv/AnimatorSingle;->queueDelta(F)V

    .line 126
    :cond_15
    iput p1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastX:F

    .line 127
    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastT:F

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeAvailable:Z

    .line 129
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mAvailableLast:I

    .line 67
    iput-boolean v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mIsStarted:Z

    .line 68
    iput-boolean v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeAvailable:Z

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mV:F

    .line 71
    return-void
.end method

.method public setAnimationCurve(I)V
    .registers 2
    .parameter "curveType"

    .prologue
    .line 55
    iput p1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mTiming:I

    return-void
.end method

.method public setDuration(F)V
    .registers 2
    .parameter "dt"

    .prologue
    .line 54
    iput p1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mDuration:F

    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 141
    const-class v1, Lcom/quramsoft/xiv/AnimatorSingle;

    monitor-enter v1

    .line 142
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mIsStarted:Z

    .line 141
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    .line 145
    iget-boolean v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeAvailable:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastT:F

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStartT:F

    .line 147
    :goto_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mLastTimeTemp:F

    .line 148
    return-void

    .line 141
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 146
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStartT:F

    goto :goto_f
.end method

.method public start(FF)V
    .registers 3
    .parameter "startX"
    .parameter "endX"

    .prologue
    .line 151
    iput p1, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mStart:F

    .line 152
    iput p2, p0, Lcom/quramsoft/xiv/AnimatorSingle;->mEnd:F

    .line 153
    invoke-virtual {p0}, Lcom/quramsoft/xiv/AnimatorSingle;->start()V

    .line 154
    return-void
.end method
