.class public final Lcom/quramsoft/xiv/XIVSlotChecker;
.super Ljava/lang/Object;
.source "XIVSlotChecker.java"


# static fields
.field private static volatile singleton:Lcom/quramsoft/xiv/XIVSlotChecker;


# instance fields
.field mCamera:Lcom/cooliris/media/GridCamera;

.field mDisplayItems:[Lcom/cooliris/media/DisplayItem;

.field mDrawManager:Lcom/cooliris/media/GridDrawManager;

.field mIsInitialized:Z

.field mIsUseCameraCurrentSlot:Z

.field mMaxItemDrawables:I

.field mMaxItemsPerSlot:I

.field private mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

.field mTimerCurrentSlot:I

.field mView:Lcom/cooliris/media/RenderView;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsInitialized:Z

    .line 18
    iput v1, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimerCurrentSlot:I

    .line 19
    iput-boolean v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsUseCameraCurrentSlot:Z

    .line 21
    iput-object v0, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    .line 23
    iput-object v0, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mView:Lcom/cooliris/media/RenderView;

    .line 24
    iput-object v0, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 25
    iput-object v0, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    .line 26
    iput-object v0, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 27
    iput v1, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemsPerSlot:I

    .line 28
    iput v1, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemDrawables:I

    .line 33
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_25

    .line 35
    const-string v0, "XIVSlotChecker"

    const-string v1, "XivSlotChecker created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_25
    return-void
.end method

.method public static destroyInstance()V
    .registers 3

    .prologue
    .line 42
    :try_start_0
    const-class v2, Lcom/quramsoft/xiv/XIVSlotChecker;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_14

    .line 43
    :try_start_3
    sget-object v1, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    if-eqz v1, :cond_f

    .line 45
    sget-object v1, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V

    .line 46
    const/4 v1, 0x0

    sput-object v1, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    .line 42
    :cond_f
    monitor-exit v2

    .line 53
    .local v0, e:Ljava/lang/Throwable;
    :goto_10
    return-void

    .line 42
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14} :catch_14

    .line 49
    :catch_14
    move-exception v0

    .line 51
    .restart local v0       #e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method

.method public static getInstance()Lcom/quramsoft/xiv/XIVSlotChecker;
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    if-nez v0, :cond_13

    .line 60
    const-class v1, Lcom/quramsoft/xiv/XIVSlotChecker;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    if-nez v0, :cond_12

    .line 65
    new-instance v0, Lcom/quramsoft/xiv/XIVSlotChecker;

    invoke-direct {v0}, Lcom/quramsoft/xiv/XIVSlotChecker;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    .line 60
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 69
    :cond_13
    sget-object v0, Lcom/quramsoft/xiv/XIVSlotChecker;->singleton:Lcom/quramsoft/xiv/XIVSlotChecker;

    return-object v0

    .line 60
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public draw()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 111
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_c

    .line 112
    const-string v3, "XIVSlotChecker"

    const-string v4, "draw called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_c
    iget-boolean v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsInitialized:Z

    if-nez v3, :cond_1c

    .line 116
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_1b

    .line 117
    const-string v3, "XIVSlotChecker"

    const-string v4, "draw called, but XIVSlotChecker is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1b
    :goto_1b
    return-void

    .line 122
    :cond_1c
    const/4 v2, -0x1

    .line 123
    .local v2, selectedSlot:I
    iget-boolean v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsUseCameraCurrentSlot:Z

    if-eqz v3, :cond_a7

    .line 124
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v3, v4}, Lcom/quramsoft/xiv/SFUtils;->getCurrentSlot(Lcom/cooliris/media/GridCamera;)I

    move-result v2

    .line 129
    :goto_2b
    if-ne v2, v5, :cond_39

    .line 131
    iget-boolean v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsUseCameraCurrentSlot:Z

    if-eqz v3, :cond_af

    .line 132
    iget-object v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v3}, Lcom/cooliris/media/GridDrawManager;->getSelectedSlot()I

    move-result v2

    .line 136
    :goto_37
    if-eq v2, v5, :cond_1b

    .line 140
    :cond_39
    iget-object v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v3}, Lcom/cooliris/media/GridDrawManager;->getBeginOfBufferedVisibleRange()I

    move-result v3

    sub-int v3, v2, v3

    iget v4, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemsPerSlot:I

    mul-int v1, v3, v4

    .line 141
    .local v1, indexInDrawnArray:I
    if-ltz v1, :cond_c8

    iget v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemDrawables:I

    if-ge v1, v3, :cond_c8

    .line 142
    iget-object v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    aget-object v0, v3, v1

    .line 144
    .local v0, displayItem:Lcom/cooliris/media/DisplayItem;
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_97

    .line 146
    const-string v3, "XIVSlotChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "indexInDrawnArray = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selectedSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", beginOfBufferedVisibleRange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v5}, Lcom/cooliris/media/GridDrawManager;->getBeginOfBufferedVisibleRange()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "XIVSlotChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mMaxItemsPerSlot = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemsPerSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_97
    if-eqz v0, :cond_bb

    .line 152
    const/4 v3, 0x1

    iput v3, v0, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 154
    iget-object v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mView:Lcom/cooliris/media/RenderView;

    if-eqz v3, :cond_1b

    .line 155
    iget-object v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v3}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto/16 :goto_1b

    .line 126
    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v1           #indexInDrawnArray:I
    :cond_a7
    iget-object v3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v3}, Lcom/cooliris/media/GridDrawManager;->getSelectedSlot()I

    move-result v2

    goto/16 :goto_2b

    .line 134
    :cond_af
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v3, v4}, Lcom/quramsoft/xiv/SFUtils;->getCurrentSlot(Lcom/cooliris/media/GridCamera;)I

    move-result v2

    goto/16 :goto_37

    .line 159
    .restart local v0       #displayItem:Lcom/cooliris/media/DisplayItem;
    .restart local v1       #indexInDrawnArray:I
    :cond_bb
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_1b

    .line 160
    const-string v3, "XIVSlotChecker"

    const-string v4, "displayItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 165
    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    :cond_c8
    const-string v3, "XIVSlotChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "indexInDrawnArray is invalid("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b
.end method

.method public setInitInfo(Lcom/cooliris/media/GridDrawManager;Lcom/cooliris/media/GridCamera;[Lcom/cooliris/media/DisplayItem;II)V
    .registers 7
    .parameter "drawManager"
    .parameter "camera"
    .parameter "displayItems"
    .parameter "maxItemsPerSlot"
    .parameter "maxItemDrawables"

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsInitialized:Z

    .line 75
    iput-object p1, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    .line 76
    iput-object p2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 77
    iput-object p3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 78
    iput p4, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemsPerSlot:I

    .line 79
    iput p5, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mMaxItemDrawables:I

    .line 80
    return-void
.end method

.method public setSlotInfo(Lcom/cooliris/media/RenderView;IZ)V
    .registers 10
    .parameter "view"
    .parameter "selectedSlot"
    .parameter "isUseCameraCurrentSlot"

    .prologue
    .line 84
    iget-boolean v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsInitialized:Z

    if-nez v2, :cond_5

    .line 107
    :cond_4
    :goto_4
    return-void

    .line 87
    :cond_5
    iget v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimerCurrentSlot:I

    if-eq p2, v2, :cond_4

    .line 89
    sget-boolean v2, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v2, :cond_21

    .line 91
    const-string v2, "XIVSlotChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setSlotInfo :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_21
    iput-boolean p3, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mIsUseCameraCurrentSlot:Z

    .line 95
    iput p2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimerCurrentSlot:I

    .line 96
    iput-object p1, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mView:Lcom/cooliris/media/RenderView;

    .line 97
    iget-object v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    if-eqz v2, :cond_30

    .line 98
    iget-object v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    invoke-virtual {v2}, Lcom/quramsoft/xiv/XIVTimeoutTimer;->cancel()V

    .line 100
    :cond_30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    .line 101
    new-instance v2, Lcom/quramsoft/xiv/XIVTimeoutTimer;

    invoke-direct {v2}, Lcom/quramsoft/xiv/XIVTimeoutTimer;-><init>()V

    iput-object v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    .line 103
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/quramsoft/xiv/SFUtils;->getAnimationDuration()F

    move-result v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const-wide/16 v4, 0x96

    add-long v0, v2, v4

    .line 105
    .local v0, delay:J
    iget-object v2, p0, Lcom/quramsoft/xiv/XIVSlotChecker;->mTimeoutTimer:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    invoke-virtual {v2, v0, v1}, Lcom/quramsoft/xiv/XIVTimeoutTimer;->start(J)V

    goto :goto_4
.end method
