.class public Lcom/sec/android/app/camera/CeStateInitialized;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateInitialized.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateInitialized"


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
    .line 37
    const-string v0, "CeStateInitialized"

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

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_64

    .line 69
    :cond_1f
    :goto_1f
    return-void

    .line 40
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 43
    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 47
    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted()V

    goto :goto_1f

    .line 51
    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 55
    :sswitch_40
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 61
    :sswitch_53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 66
    :sswitch_5b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 38
    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_20
        0x2 -> :sswitch_40
        0x3 -> :sswitch_28
        0x4 -> :sswitch_53
        0x7 -> :sswitch_30
        0x8 -> :sswitch_38
        0x65 -> :sswitch_5b
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .registers 6
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string v0, "CeStateInitialized"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_162

    .line 143
    const-string v0, "CeStateInitialized"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 146
    const/4 v0, 0x0

    :goto_33
    return v0

    .line 75
    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 77
    goto :goto_33

    .line 79
    :sswitch_44
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    move v0, v2

    .line 80
    goto :goto_33

    .line 82
    :sswitch_4d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doAutoFocusAsync()V

    move v0, v2

    .line 83
    goto :goto_33

    .line 85
    :sswitch_56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTakePictureAsync()V

    move v0, v2

    .line 86
    goto :goto_33

    .line 88
    :sswitch_5f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doSetParametersSync(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 90
    goto :goto_33

    .line 92
    :sswitch_73
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 94
    goto :goto_33

    .line 96
    :sswitch_87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doPostInitSync()V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 98
    goto :goto_33

    .line 100
    :sswitch_97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doSetAllParamsSync()V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 102
    goto :goto_33

    .line 104
    :sswitch_a7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v2

    .line 105
    goto/16 :goto_33

    .line 107
    :sswitch_bb
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doShowReviewScreenSync()V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 109
    goto/16 :goto_33

    .line 111
    :sswitch_cc
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHideReviewScreenSync()V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 113
    goto/16 :goto_33

    .line 115
    :sswitch_dd
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 117
    goto/16 :goto_33

    .line 119
    :sswitch_ee
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine;->doShutterTimerAsync(I)V

    move v0, v2

    .line 120
    goto/16 :goto_33

    .line 123
    :sswitch_102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doPrepareVideoRecordingAsync()V

    move v0, v2

    .line 124
    goto/16 :goto_33

    .line 126
    :sswitch_10e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    move v0, v2

    .line 128
    goto/16 :goto_33

    .line 130
    :sswitch_122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 133
    goto/16 :goto_33

    .line 135
    :sswitch_13d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doWaitForSurfaceAsync()V

    move v0, v2

    .line 136
    goto/16 :goto_33

    .line 138
    :sswitch_149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->doLaunchGallerySync(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 140
    goto/16 :goto_33

    .line 73
    :sswitch_data_162
    .sparse-switch
        0x1 -> :sswitch_34
        0x2 -> :sswitch_87
        0x3 -> :sswitch_44
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_56
        0x7 -> :sswitch_73
        0x8 -> :sswitch_5f
        0x9 -> :sswitch_ee
        0xa -> :sswitch_97
        0xd -> :sswitch_a7
        0x15 -> :sswitch_bb
        0x16 -> :sswitch_cc
        0x17 -> :sswitch_dd
        0x19 -> :sswitch_149
        0x65 -> :sswitch_102
        0x66 -> :sswitch_10e
        0x69 -> :sswitch_122
        0x6b -> :sswitch_13d
    .end sparse-switch
.end method
