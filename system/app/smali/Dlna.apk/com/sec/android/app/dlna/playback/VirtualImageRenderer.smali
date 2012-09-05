.class public Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;
.super Ljava/lang/Object;
.source "VirtualImageRenderer.java"

# interfaces
.implements Lcom/samsung/upnp/event/EventListener;
.implements Lcom/sec/android/app/dlna/playback/IVirtualRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private connectedState:Ljava/lang/String;

.field private connectedUuid:Ljava/lang/String;

.field currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

.field handlerThread:Landroid/os/HandlerThread;

.field private renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

.field private rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

.field slideshowHandler:Landroid/os/Handler;

.field private slideshow_delay:I

.field stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

.field statePaused:Lcom/sec/android/app/dlna/playback/IRenderer;

.field statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

.field stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

.field stateTransitioning:Lcom/sec/android/app/dlna/playback/IRenderer;

.field transportThread:Ljava/lang/Thread;

.field private userRequestedStop:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "VirtualImageRenderer."

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->CLASS_NAME:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    .line 26
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateNothing;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateNothing;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 28
    new-instance v0, Lcom/sec/android/app/dlna/playback/StatePaused;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StatePaused;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->statePaused:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 30
    new-instance v0, Lcom/sec/android/app/dlna/playback/StatePlaying;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StatePlaying;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 32
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateStoped;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateStoped;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 34
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateTransitioning;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateTransitioning;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateTransitioning:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    .line 44
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshow_delay:I

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    .line 293
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedState:Ljava/lang/String;

    .line 410
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->transportThread:Ljava/lang/Thread;

    .line 51
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addEventListener(Lcom/samsung/upnp/event/EventListener;)Z

    .line 52
    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Lcom/sec/android/app/dlna/playback/IRenderer;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->changeState(Ljava/lang/String;)V

    return-void
.end method

.method private changeState(Ljava/lang/String;)V
    .registers 4
    .parameter "stateName"

    .prologue
    .line 373
    const-string v0, "STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 375
    const-string v0, "DLNA"

    const-string v1, "(VIR)Stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_14
    :goto_14
    return-void

    .line 376
    :cond_15
    const-string v0, "TRANSITIONING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateTransitioning:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 378
    const-string v0, "DLNA"

    const-string v1, "(VIR)Transitioning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 379
    :cond_2a
    const-string v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 381
    const-string v0, "DLNA"

    const-string v1, "(VIR)Playing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 382
    :cond_3f
    const-string v0, "NO_MEDIA_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_14

    .line 384
    :cond_4d
    const-string v0, "NOTHING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_14
.end method

.method private getStateName(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_16

    .line 406
    const-string v0, "-__-;"

    :goto_5
    return-object v0

    .line 396
    :pswitch_6
    const-string v0, "NOTHING"

    goto :goto_5

    .line 398
    :pswitch_9
    const-string v0, "PAUSED"

    goto :goto_5

    .line 400
    :pswitch_c
    const-string v0, "PLAYING"

    goto :goto_5

    .line 402
    :pswitch_f
    const-string v0, "STOPPED"

    goto :goto_5

    .line 404
    :pswitch_12
    const-string v0, "TRANSITIONING"

    goto :goto_5

    .line 394
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_12
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private notifyStateChanged()V
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    if-eqz v0, :cond_c

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;->notifyRendererPropertyChangedEvent(I)V

    .line 370
    :cond_c
    return-void
.end method

.method private sendSlideshowMessage()V
    .registers 5

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    iget v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshow_delay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 364
    :cond_e
    return-void
.end method

.method private switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    invoke-interface {p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v2

    if-eq v1, v2, :cond_85

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 336
    .local v0, oldState:Lcom/sec/android/app/dlna/playback/IRenderer;
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualImageRenderer.switchState From "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " To "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 340
    iget-boolean v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    if-ne v1, v4, :cond_57

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    if-ne v1, v4, :cond_57

    .line 341
    invoke-direct {p0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyStateChanged()V

    .line 342
    iput-boolean v5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    .line 344
    :cond_57
    invoke-interface {p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_74

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_74

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v1, :cond_73

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->sendSlideshowMessage()V

    .line 359
    .end local v0           #oldState:Lcom/sec/android/app/dlna/playback/IRenderer;
    :cond_73
    :goto_73
    return-void

    .line 350
    .restart local v0       #oldState:Lcom/sec/android/app/dlna/playback/IRenderer;
    :cond_74
    invoke-interface {p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    if-ne v1, v4, :cond_73

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_73

    .line 353
    invoke-direct {p0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->sendSlideshowMessage()V

    goto :goto_73

    .line 355
    .end local v0           #oldState:Lcom/sec/android/app/dlna/playback/IRenderer;
    :cond_85
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    if-ne v1, v4, :cond_73

    iget-boolean v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    if-ne v1, v4, :cond_73

    .line 356
    invoke-direct {p0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyStateChanged()V

    .line 357
    iput-boolean v5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    goto :goto_73
.end method


# virtual methods
.method public addRendererControlListener(Lcom/sec/android/app/dlna/playback/IRendererControlListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 64
    return-void
.end method

.method public addRendererPropertyListener(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
    .registers 2
    .parameter "renderPropertyChangedListener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    .line 72
    return-void
.end method

.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "uuid"
    .parameter "seq"
    .parameter "varName"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 297
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_11

    .line 326
    :cond_10
    :goto_10
    return-void

    .line 300
    :cond_11
    const-string v1, "TransportState"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 301
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualImageRenderer.TransportState value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "STOPPED"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedState:Ljava/lang/String;

    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 304
    const-string v1, "DLNA"

    const-string v2, "VirtualImageRenderer.unexpected STOP from un-used DMR!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualImageRenderer.connectedUuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BUT from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 307
    :cond_81
    const-string v1, "PLAYING"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 308
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    .line 309
    iput-object p5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedState:Ljava/lang/String;

    .line 310
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualImageRenderer.update connectedUuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_a7
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 318
    .local v0, player:Lcom/samsung/api/DeviceItem;
    if-eqz v0, :cond_10

    .line 319
    invoke-direct {p0, p5}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->changeState(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 312
    .end local v0           #player:Lcom/samsung/api/DeviceItem;
    :cond_b6
    iput-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    .line 313
    iput-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedState:Ljava/lang/String;

    .line 314
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualImageRenderer.connectedUuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 321
    :cond_d5
    const-string v1, "AVTransportURI"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 322
    const-string v1, "DLNA"

    const-string v2, "VirtualImageRenderer.AVTransportURI changed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 323
    :cond_e6
    const-string v1, "AVTransportURIMetaData"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 324
    const-string v1, "DLNA"

    const-string v2, "VirtualImageRenderer.AVTransportURIMetaData changed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v0

    return v0
.end method

.method public gotoNotingState()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 331
    return-void
.end method

.method protected notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    .registers 4
    .parameter "result"
    .parameter "e"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/dlna/playback/IRendererControlListener;->rendererControlResultReceived(ILcom/samsung/api/DMCAPIException;)V

    .line 149
    :cond_9
    return-void
.end method

.method public removeRendererControlListener()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 68
    return-void
.end method

.method public removeRendererPropertyListener()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    .line 76
    return-void
.end method

.method public requestPause()Z
    .registers 4

    .prologue
    .line 175
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(VIR) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestPause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    :cond_33
    const/16 v0, 0xc8

    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->statePaused:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public requestPlay()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 153
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(VIR) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestPlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v2, :cond_34

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    :cond_34
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPlay()V

    .line 163
    const/16 v2, 0x64

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_44
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_44} :catch_46

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_45
    return v1

    .line 166
    :catch_46
    move-exception v0

    .line 167
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_45
.end method

.method public requestResume()Z
    .registers 5

    .prologue
    const/16 v3, 0x64

    .line 191
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(VIR) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestPlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v0, :cond_49

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshow_delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    :cond_49
    const/4 v0, 0x1

    return v0
.end method

.method public requestSeek(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 210
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(VIR) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestSeek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v0, 0x1f5

    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z
    .registers 10
    .parameter "userSelectedItem"

    .prologue
    const/4 v4, 0x0

    .line 259
    const/4 v3, 0x1

    .line 260
    .local v3, tryCount:I
    const/4 v2, 0x5

    .line 261
    .local v2, maxTryCount:I
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v1, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    .line 262
    .local v1, error:Lcom/samsung/api/DMCAPIException;
    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v5, :cond_13

    .line 263
    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    :cond_13
    :goto_13
    const/4 v5, 0x5

    if-ge v3, v5, :cond_af

    .line 271
    if-eqz p1, :cond_5a

    .line 272
    :try_start_18
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VIR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v7}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestSetAvt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_48
    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v5, p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 278
    const/16 v5, 0x258

    new-instance v6, Lcom/samsung/api/DMCAPIException;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 280
    const/4 v4, 0x1

    .line 290
    :goto_59
    return v4

    .line 275
    :cond_5a
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VIR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v7}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestSetAvt : Item = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_18 .. :try_end_82} :catch_83

    goto :goto_48

    .line 281
    :catch_83
    move-exception v0

    .line 282
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VIR SerAVT action #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed with error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object v1, v0

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 289
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_af
    const/16 v5, 0x259

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_59
.end method

.method public requestStop()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    :try_start_2
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(VIR) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v5}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requestStop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v3, :cond_35

    .line 221
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_35
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    .line 228
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v3

    if-ne v3, v1, :cond_51

    .line 229
    const/16 v3, 0x12c

    new-instance v4, Lcom/samsung/api/DMCAPIException;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 231
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 242
    :goto_50
    return v1

    .line 233
    :cond_51
    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v3}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestStop()V

    .line 234
    const/16 v3, 0x12c

    new-instance v4, Lcom/samsung/api/DMCAPIException;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_61
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_50

    .line 238
    :catch_62
    move-exception v0

    .line 239
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z

    .line 240
    const/16 v1, 0x12d

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 241
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    move v1, v2

    .line 242
    goto :goto_50
.end method

.method public requestVolumeDown()Z
    .registers 4

    .prologue
    .line 253
    const/16 v0, 0x2bd

    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public requestVolumeUp()Z
    .registers 4

    .prologue
    .line 247
    const/16 v0, 0x2bd

    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public startRenderer()V
    .registers 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$TransportThread;-><init>(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->transportThread:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->transportThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "(VIR)Image Slideshow Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;-><init>(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method public stopRenderer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iput-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->slideshowHandler:Landroid/os/Handler;

    .line 85
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_19

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->handlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->transportThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    .line 91
    iput-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->transportThread:Ljava/lang/Thread;

    .line 93
    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 454
    const-string v0, "VirtualImageRenderer"

    return-object v0
.end method
