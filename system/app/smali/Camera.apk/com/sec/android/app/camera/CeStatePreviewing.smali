.class public Lcom/sec/android/app/camera/CeStatePreviewing;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStatePreviewing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStatePreviewing"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .registers 4
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 135
    const-string v0, "CeStatePreviewing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_64

    .line 164
    :cond_1f
    :goto_1f
    return-void

    .line 138
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 141
    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 144
    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted()V

    goto :goto_1f

    .line 147
    :sswitch_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 150
    :sswitch_43
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 153
    :sswitch_4b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 156
    :sswitch_53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 161
    :sswitch_5b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 136
    nop

    :sswitch_data_64
    .sparse-switch
        0x2 -> :sswitch_20
        0x4 -> :sswitch_2b
        0x5 -> :sswitch_3b
        0x6 -> :sswitch_43
        0x7 -> :sswitch_33
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_53
        0x65 -> :sswitch_5b
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .registers 7
    .parameter "request"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 37
    const-string v0, "CeStatePreviewing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_1b4

    .line 128
    const-string v0, "CeStatePreviewing"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 131
    const/4 v0, 0x0

    :goto_34
    return v0

    .line 40
    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewDummySync()V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 42
    goto :goto_34

    .line 44
    :sswitch_45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 46
    goto :goto_34

    .line 48
    :sswitch_55
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 51
    goto :goto_34

    .line 53
    :sswitch_6c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doAutoFocusAsync()V

    move v0, v1

    .line 54
    goto :goto_34

    .line 56
    :sswitch_75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->doSetParametersSync(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 58
    goto :goto_34

    .line 60
    :sswitch_89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 62
    goto :goto_34

    .line 64
    :sswitch_9d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->doShutterTimerAsync(I)V

    move v0, v1

    .line 65
    goto :goto_34

    .line 67
    :sswitch_b0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doSetAllParamsSync()V

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 69
    goto/16 :goto_34

    .line 71
    :sswitch_c1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartSmileDetectionAsync()V

    move v0, v1

    .line 72
    goto/16 :goto_34

    .line 74
    :sswitch_cb
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopSmileDetectionSync()V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 76
    goto/16 :goto_34

    .line 78
    :sswitch_dc
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v1

    .line 79
    goto/16 :goto_34

    .line 81
    :sswitch_f0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPanoramaAsync()V

    move v0, v1

    .line 82
    goto/16 :goto_34

    .line 84
    :sswitch_fa
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPanoramaSync()V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 86
    goto/16 :goto_34

    .line 88
    :sswitch_10b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartActionShotSync()V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 90
    goto/16 :goto_34

    .line 92
    :sswitch_11c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopActionShotSync()V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 94
    goto/16 :goto_34

    .line 96
    :sswitch_12d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doShowReviewScreenSync()V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 98
    goto/16 :goto_34

    .line 100
    :sswitch_13e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHideReviewScreenSync()V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 102
    goto/16 :goto_34

    .line 104
    :sswitch_14f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 106
    goto/16 :goto_34

    .line 110
    :sswitch_160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doPrepareVideoRecordingAsync()V

    move v0, v1

    .line 111
    goto/16 :goto_34

    .line 113
    :sswitch_16c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    move v0, v1

    .line 115
    goto/16 :goto_34

    .line 117
    :sswitch_180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 120
    goto/16 :goto_34

    .line 122
    :sswitch_19a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 125
    goto/16 :goto_34

    .line 38
    :sswitch_data_1b4
    .sparse-switch
        0x1 -> :sswitch_55
        0x4 -> :sswitch_45
        0x5 -> :sswitch_6c
        0x7 -> :sswitch_89
        0x8 -> :sswitch_75
        0x9 -> :sswitch_9d
        0xa -> :sswitch_b0
        0xb -> :sswitch_c1
        0xc -> :sswitch_cb
        0xd -> :sswitch_dc
        0x10 -> :sswitch_f0
        0x11 -> :sswitch_fa
        0x12 -> :sswitch_10b
        0x13 -> :sswitch_11c
        0x15 -> :sswitch_12d
        0x16 -> :sswitch_13e
        0x17 -> :sswitch_14f
        0x18 -> :sswitch_35
        0x65 -> :sswitch_160
        0x66 -> :sswitch_16c
        0x69 -> :sswitch_180
        0x6a -> :sswitch_19a
    .end sparse-switch
.end method
