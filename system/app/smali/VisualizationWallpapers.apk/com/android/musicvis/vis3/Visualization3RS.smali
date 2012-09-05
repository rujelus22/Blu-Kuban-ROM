.class Lcom/android/musicvis/vis3/Visualization3RS;
.super Lcom/android/musicvis/GenericWaveRS;
.source "Visualization3RS.java"


# instance fields
.field lastOffset:F

.field private mAnalyzer:[S


# direct methods
.method constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    const v0, 0x7f020006

    invoke-direct {p0, p1, p2, v0}, Lcom/android/musicvis/GenericWaveRS;-><init>(III)V

    .line 41
    const/16 v0, 0x200

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/musicvis/vis3/Visualization3RS;->mAnalyzer:[S

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/musicvis/vis3/Visualization3RS;->lastOffset:F

    .line 48
    return-void
.end method


# virtual methods
.method public setOffset(FFII)V
    .registers 8
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    const/high16 v2, 0x43b4

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/musicvis/GenericWaveRS$WorldState;->yRotation:F

    .line 53
    invoke-virtual {p0}, Lcom/android/musicvis/vis3/Visualization3RS;->updateWorldState()V

    .line 54
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-nez v0, :cond_e

    .line 59
    new-instance v0, Lcom/android/musicvis/AudioCapture;

    const/4 v1, 0x1

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Lcom/android/musicvis/AudioCapture;-><init>(II)V

    iput-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 61
    :cond_e
    invoke-super {p0}, Lcom/android/musicvis/GenericWaveRS;->start()V

    .line 62
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/musicvis/GenericWaveRS;->stop()V

    .line 67
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 71
    :cond_f
    return-void
.end method

.method public update()V
    .registers 16

    .prologue
    const/4 v13, 0x1

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, len:I
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v12, :cond_13

    .line 78
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v12, v13, v13}, Lcom/android/musicvis/AudioCapture;->getFormattedData(II)[I

    move-result-object v12

    iput-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    .line 81
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    array-length v12, v12

    div-int/lit8 v2, v12, 0x2

    .line 83
    :cond_13
    if-nez v2, :cond_23

    .line 84
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v12, v12, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    if-nez v12, :cond_22

    .line 85
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iput v13, v12, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    .line 86
    invoke-virtual {p0}, Lcom/android/musicvis/vis3/Visualization3RS;->updateWorldState()V

    .line 133
    :cond_22
    :goto_22
    return-void

    .line 91
    :cond_23
    div-int/lit8 v2, v2, 0x2

    .line 93
    iget-object v12, p0, Lcom/android/musicvis/vis3/Visualization3RS;->mAnalyzer:[S

    array-length v12, v12

    if-le v2, v12, :cond_2d

    iget-object v12, p0, Lcom/android/musicvis/vis3/Visualization3RS;->mAnalyzer:[S

    array-length v2, v12

    .line 95
    :cond_2d
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v12, v12, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    if-eqz v12, :cond_3b

    .line 96
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    .line 97
    invoke-virtual {p0}, Lcom/android/musicvis/vis3/Visualization3RS;->updateWorldState()V

    .line 100
    :cond_3b
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3c
    add-int/lit8 v12, v2, -0x1

    if-ge v1, v12, :cond_6d

    .line 101
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    mul-int/lit8 v13, v1, 0x2

    aget v9, v12, v13

    .line 102
    .local v9, val1:I
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    mul-int/lit8 v13, v1, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v10, v12, v13

    .line 103
    .local v10, val2:I
    mul-int v12, v9, v9

    mul-int v13, v10, v10

    add-int v8, v12, v13

    .line 104
    .local v8, val:I
    div-int/lit8 v12, v1, 0x10

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v8

    int-to-short v3, v12

    .line 105
    .local v3, newval:S
    iget-object v12, p0, Lcom/android/musicvis/vis3/Visualization3RS;->mAnalyzer:[S

    aget-short v4, v12, v1

    .line 106
    .local v4, oldval:S
    add-int/lit16 v12, v4, -0x320

    if-lt v3, v12, :cond_69

    .line 111
    :goto_62
    iget-object v12, p0, Lcom/android/musicvis/vis3/Visualization3RS;->mAnalyzer:[S

    aput-short v3, v12, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 109
    :cond_69
    add-int/lit16 v12, v4, -0x320

    int-to-short v3, v12

    goto :goto_62

    .line 115
    .end local v3           #newval:S
    .end local v4           #oldval:S
    .end local v8           #val:I
    .end local v9           #val1:I
    .end local v10           #val2:I
    :cond_6d
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    array-length v12, v12

    div-int/lit8 v5, v12, 0x8

    .line 116
    .local v5, outlen:I
    iget v12, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    if-le v12, v5, :cond_b3

    move v11, v5

    .line 117
    .local v11, width:I
    :goto_77
    sub-int v12, v5, v11

    div-int/lit8 v6, v12, 0x2

    .line 119
    .local v6, skip:I
    const/4 v7, 0x0

    .line 120
    .local v7, srcidx:I
    const/4 v0, 0x0

    .line 121
    .local v0, cnt:I
    const/4 v1, 0x0

    :goto_7e
    if-ge v1, v11, :cond_b6

    .line 122
    iget-object v12, p0, Lcom/android/musicvis/vis3/Visualization3RS;->mAnalyzer:[S

    aget-short v12, v12, v7

    div-int/lit8 v12, v12, 0x8

    int-to-float v8, v12

    .line 123
    .local v8, val:F
    const/high16 v12, 0x3f80

    cmpg-float v12, v8, v12

    if-gez v12, :cond_95

    const/high16 v12, -0x4080

    cmpl-float v12, v8, v12

    if-lez v12, :cond_95

    const/high16 v8, 0x3f80

    .line 124
    :cond_95
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    add-int v13, v1, v6

    mul-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x1

    aput v8, v12, v13

    .line 125
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    add-int v13, v1, v6

    mul-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x5

    neg-float v14, v8

    aput v14, v12, v13

    .line 126
    add-int/2addr v0, v2

    .line 127
    if-le v0, v11, :cond_b0

    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    sub-int/2addr v0, v11

    .line 121
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 116
    .end local v0           #cnt:I
    .end local v6           #skip:I
    .end local v7           #srcidx:I
    .end local v8           #val:F
    .end local v11           #width:I
    :cond_b3
    iget v11, p0, Lcom/android/musicvis/RenderScriptScene;->mWidth:I

    goto :goto_77

    .line 132
    .restart local v0       #cnt:I
    .restart local v6       #skip:I
    .restart local v7       #srcidx:I
    .restart local v11       #width:I
    :cond_b6
    iget-object v12, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    iget-object v13, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    invoke-virtual {v12, v13}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V

    goto/16 :goto_22
.end method
