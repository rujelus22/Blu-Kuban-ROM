.class public Lcom/sec/android/app/camera/CeStateIdle;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateIdle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateIdle"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .registers 4
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 33
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 62
    const-string v0, "CeStateIdle"

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

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 71
    :goto_1f
    return-void

    .line 65
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_1f

    .line 68
    :pswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted()V

    goto :goto_1f

    .line 63
    :pswitch_data_30
    .packed-switch 0x7
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .registers 7
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    const-string v0, "CeStateIdle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandleRequest - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_7c

    .line 54
    const-string v0, "CeStateIdle"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v1, v2

    .line 58
    :goto_34
    return v1

    .line 39
    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartEngineAsync()V

    goto :goto_34

    .line 42
    :sswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    goto :goto_34

    .line 45
    :sswitch_4f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_6b

    move v0, v1

    :goto_60
    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraEngine;->doSwitchCameraSync(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_34

    :cond_6b
    move v0, v2

    .line 45
    goto :goto_60

    .line 49
    :sswitch_6d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateIdle;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_34

    .line 37
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_35
        0xd -> :sswitch_3d
        0x14 -> :sswitch_4f
        0x17 -> :sswitch_6d
    .end sparse-switch
.end method
