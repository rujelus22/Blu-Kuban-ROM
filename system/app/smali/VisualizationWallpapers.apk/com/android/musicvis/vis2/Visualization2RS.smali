.class Lcom/android/musicvis/vis2/Visualization2RS;
.super Lcom/android/musicvis/GenericWaveRS;
.source "Visualization2RS.java"


# direct methods
.method constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    const v0, 0x7f020003

    invoke-direct {p0, p1, p2, v0}, Lcom/android/musicvis/GenericWaveRS;-><init>(III)V

    .line 30
    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcom/android/musicvis/AudioCapture;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/musicvis/AudioCapture;-><init>(II)V

    iput-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 37
    :cond_e
    invoke-super {p0}, Lcom/android/musicvis/GenericWaveRS;->start()V

    .line 38
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/musicvis/GenericWaveRS;->stop()V

    .line 43
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_f

    .line 44
    iget-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->release()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 47
    :cond_f
    return-void
.end method

.method public update()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, len:I
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v4, :cond_11

    .line 53
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v4, v5, v5}, Lcom/android/musicvis/AudioCapture;->getFormattedData(II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    .line 54
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    array-length v2, v4

    .line 57
    :cond_11
    if-nez v2, :cond_21

    .line 58
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v4, v4, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    if-nez v4, :cond_20

    .line 59
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iput v5, v4, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    .line 61
    invoke-virtual {p0}, Lcom/android/musicvis/vis2/Visualization2RS;->updateWorldState()V

    .line 81
    :cond_20
    :goto_20
    return-void

    .line 66
    :cond_21
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    array-length v4, v4

    div-int/lit8 v3, v4, 0x8

    .line 67
    .local v3, outlen:I
    if-le v2, v3, :cond_29

    move v2, v3

    .line 69
    :cond_29
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    iget v4, v4, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    if-eqz v4, :cond_37

    .line 70
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mWorldState:Lcom/android/musicvis/GenericWaveRS$WorldState;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/musicvis/GenericWaveRS$WorldState;->idle:I

    .line 72
    invoke-virtual {p0}, Lcom/android/musicvis/vis2/Visualization2RS;->updateWorldState()V

    .line 75
    :cond_37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_38
    if-ge v1, v2, :cond_54

    .line 76
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mVizData:[I

    aget v0, v4, v1

    .line 77
    .local v0, amp:I
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x1

    int-to-float v6, v0

    aput v6, v4, v5

    .line 78
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x5

    neg-int v6, v0

    int-to-float v6, v6

    aput v6, v4, v5

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 80
    .end local v0           #amp:I
    :cond_54
    iget-object v4, p0, Lcom/android/musicvis/GenericWaveRS;->mPointAlloc:Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/musicvis/GenericWaveRS;->mPointData:[F

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V

    goto :goto_20
.end method
