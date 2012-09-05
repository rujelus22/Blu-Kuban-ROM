.class public Lcom/sec/android/app/dlna/playback/VirtualRenderer;
.super Ljava/lang/Object;
.source "VirtualRenderer.java"

# interfaces
.implements Lcom/samsung/upnp/event/EventListener;
.implements Lcom/sec/android/app/dlna/playback/IVirtualRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/playback/VirtualRenderer$1;,
        Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;,
        Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private connectedState:Ljava/lang/String;

.field private connectedUuid:Ljava/lang/String;

.field currentPosition:I

.field currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

.field positionThread:Ljava/lang/Thread;

.field private renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

.field private rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

.field stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

.field statePaused:Lcom/sec/android/app/dlna/playback/IRenderer;

.field statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

.field stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

.field stateTransitioning:Lcom/sec/android/app/dlna/playback/IRenderer;

.field transportThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "VirtualRenderer."

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->CLASS_NAME:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateNothing;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateNothing;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 36
    new-instance v0, Lcom/sec/android/app/dlna/playback/StatePaused;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StatePaused;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->statePaused:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 38
    new-instance v0, Lcom/sec/android/app/dlna/playback/StatePlaying;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StatePlaying;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 40
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateStoped;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateStoped;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 42
    new-instance v0, Lcom/sec/android/app/dlna/playback/StateTransitioning;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/playback/StateTransitioning;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateTransitioning:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    .line 304
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedUuid:Ljava/lang/String;

    .line 305
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedState:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->transportThread:Ljava/lang/Thread;

    .line 391
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->positionThread:Ljava/lang/Thread;

    .line 51
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addEventListener(Lcom/samsung/upnp/event/EventListener;)Z

    .line 52
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/playback/VirtualRenderer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->changeState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/playback/VirtualRenderer;)Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    return-object v0
.end method

.method private changeState(Ljava/lang/String;)V
    .registers 3
    .parameter "stateName"

    .prologue
    .line 448
    const-string v0, "STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 461
    :cond_d
    :goto_d
    return-void

    .line 450
    :cond_e
    const-string v0, "TRANSITIONING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateTransitioning:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_d

    .line 452
    :cond_1c
    const-string v0, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->statePlaying:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_d

    .line 454
    :cond_2a
    const-string v0, "PAUSED_PLAYBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->statePaused:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_d

    .line 456
    :cond_38
    const-string v0, "NO_MEDIA_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_d

    .line 458
    :cond_46
    const-string v0, "NOTHING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_d
.end method

.method private getStateName(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 464
    packed-switch p1, :pswitch_data_16

    .line 476
    const-string v0, "-__-;"

    :goto_5
    return-object v0

    .line 466
    :pswitch_6
    const-string v0, "NOTHING"

    goto :goto_5

    .line 468
    :pswitch_9
    const-string v0, "PAUSED"

    goto :goto_5

    .line 470
    :pswitch_c
    const-string v0, "PLAYING"

    goto :goto_5

    .line 472
    :pswitch_f
    const-string v0, "STOPPED"

    goto :goto_5

    .line 474
    :pswitch_12
    const-string v0, "TRANSITIONING"

    goto :goto_5

    .line 464
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
    .line 442
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    if-eqz v0, :cond_a

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;->notifyRendererPropertyChangedEvent(I)V

    .line 445
    :cond_a
    return-void
.end method

.method private switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    if-eq v0, v1, :cond_45

    .line 434
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualRenderer.switchState From "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    .line 437
    invoke-direct {p0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyStateChanged()V

    .line 439
    :cond_45
    return-void
.end method


# virtual methods
.method public addRendererControlListener(Lcom/sec/android/app/dlna/playback/IRendererControlListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 62
    return-void
.end method

.method public addRendererPropertyListener(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
    .registers 2
    .parameter "renderPropertyChangedListener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    .line 81
    return-void
.end method

.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "uuid"
    .parameter "seq"
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 308
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    .line 337
    :cond_f
    :goto_f
    return-void

    .line 311
    :cond_10
    const-string v1, "TransportState"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 312
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualRenderer.TransportState value : "

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

    .line 314
    const-string v1, "STOPPED"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedState:Ljava/lang/String;

    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 315
    const-string v1, "DLNA"

    const-string v2, "VirtualRenderer.unexpected STOP from un-used DMR!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualRenderer.connectedUuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedUuid:Ljava/lang/String;

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

    goto :goto_f

    .line 318
    :cond_80
    const-string v1, "PLAYING"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 319
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedUuid:Ljava/lang/String;

    .line 320
    iput-object p5, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedState:Ljava/lang/String;

    .line 321
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualRenderer.update connectedUuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_a6
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 329
    .local v0, player:Lcom/samsung/api/DeviceItem;
    if-eqz v0, :cond_f

    .line 330
    invoke-direct {p0, p5}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->changeState(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 325
    .end local v0           #player:Lcom/samsung/api/DeviceItem;
    :cond_b5
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualRenderer.connectedUuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->connectedUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 332
    :cond_d0
    const-string v1, "AVTransportURI"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 333
    const-string v1, "DLNA"

    const-string v2, "VirtualRenderer.AVTransportURI changed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 334
    :cond_e1
    const-string v1, "AVTransportURIMetaData"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 335
    const-string v1, "DLNA"

    const-string v2, "VirtualRenderer.AVTransportURIMetaData changed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentPosition:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v0

    return v0
.end method

.method public gotoNotingState()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->stateNothing:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V

    .line 342
    return-void
.end method

.method protected notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    .registers 4
    .parameter "result"
    .parameter "e"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/dlna/playback/IRendererControlListener;->rendererControlResultReceived(ILcom/samsung/api/DMCAPIException;)V

    .line 147
    :cond_9
    return-void
.end method

.method public removeRendererControlListener()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->rendererControlListener:Lcom/sec/android/app/dlna/playback/IRendererControlListener;

    .line 71
    return-void
.end method

.method public removeRendererPropertyListener()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->renderPropertyChangedListener:Lcom/sec/android/app/dlna/playback/RendererPropertyChangedListener;

    .line 90
    return-void
.end method

.method public requestPause()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 154
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestPause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPause()V

    .line 157
    const/16 v2, 0xc8

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_39
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 159
    const/4 v1, 0x1

    .line 163
    :goto_3a
    return v1

    .line 160
    :catch_3b
    move-exception v0

    .line 161
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0xc9

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 162
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_3a
.end method

.method public requestPlay()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 168
    const/4 v3, 0x1

    .line 169
    .local v3, tryCount:I
    const/4 v2, 0x5

    .line 170
    .local v2, maxTryCount:I
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v1, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    .line 172
    .local v1, error:Lcom/samsung/api/DMCAPIException;
    :goto_8
    const/4 v5, 0x5

    if-ge v3, v5, :cond_70

    .line 174
    :try_start_b
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v7}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestPlay "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v5}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPlay()V

    .line 177
    const/16 v5, 0x64

    new-instance v6, Lcom/samsung/api/DMCAPIException;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_43
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_b .. :try_end_43} :catch_45

    .line 179
    const/4 v4, 0x1

    .line 189
    :goto_44
    return v4

    .line 180
    :catch_45
    move-exception v0

    .line 181
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VR Play action #"

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

    .line 183
    move-object v1, v0

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 188
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :cond_70
    const/16 v5, 0x65

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_44
.end method

.method public requestResume()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 194
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestPlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestPlay()V

    .line 197
    const/16 v2, 0x320

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_39
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 199
    const/4 v1, 0x1

    .line 203
    :goto_3a
    return v1

    .line 200
    :catch_3b
    move-exception v0

    .line 201
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x321

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 202
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_3a
.end method

.method public requestSeek(I)Z
    .registers 7
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 209
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestSeek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2, p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestSeek(I)V

    .line 212
    const/16 v2, 0x1f4

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_39
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 214
    const/4 v1, 0x1

    .line 218
    :goto_3a
    return v1

    .line 215
    :catch_3b
    move-exception v0

    .line 216
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const/16 v2, 0x1f5

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 217
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_3a
.end method

.method public requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z
    .registers 10
    .parameter "userSelectedItem"

    .prologue
    const/4 v4, 0x0

    .line 270
    const/4 v3, 0x1

    .line 271
    .local v3, tryCount:I
    const/4 v2, 0x5

    .line 272
    .local v2, maxTryCount:I
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v1, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    .line 274
    .local v1, error:Lcom/samsung/api/DMCAPIException;
    :goto_8
    const/4 v5, 0x5

    if-ge v3, v5, :cond_ae

    .line 276
    if-eqz p1, :cond_4f

    .line 277
    :try_start_d
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v7}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

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

    .line 282
    :goto_3d
    iget-object v5, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v5, p1}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestSetAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 283
    const/16 v5, 0x258

    new-instance v6, Lcom/samsung/api/DMCAPIException;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 285
    const/4 v4, 0x1

    .line 301
    :goto_4e
    return v4

    .line 280
    :cond_4f
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v7}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestSetAvt : Item = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_d .. :try_end_77} :catch_78

    goto :goto_3d

    .line 286
    :catch_78
    move-exception v0

    .line 287
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VR SerAVT action #"

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

    .line 289
    move-object v1, v0

    .line 292
    const-wide/16 v5, 0x1f4

    :try_start_a2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a5} :catch_a9

    .line 297
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 293
    .restart local v0       #e:Lcom/samsung/api/DMCAPIException;
    :catch_a9
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a5

    .line 300
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_ae
    const/16 v5, 0x259

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_4e
.end method

.method public requestStop()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 224
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestStop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestStop()V

    .line 227
    const/16 v2, 0x12c

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_39
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 229
    const/4 v1, 0x1

    .line 235
    :goto_3a
    return v1

    .line 230
    :catch_3b
    move-exception v0

    .line 232
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    const-string v2, "DLNA"

    const-string v3, "STOP FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v2, 0x12d

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    .line 234
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_3a
.end method

.method public requestVolumeDown()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 256
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestVolumeDown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestVolumeDown()V

    .line 259
    const/16 v2, 0x2bc

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_39
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 261
    const/4 v1, 0x1

    .line 265
    :goto_3a
    return v1

    .line 262
    :catch_3b
    move-exception v0

    .line 263
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 264
    const/16 v2, 0x2bd

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_3a
.end method

.method public requestVolumeUp()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 241
    :try_start_1
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v4}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestVolumeUp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v2}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestVolumeUp()V

    .line 244
    const/16 v2, 0x2bc

    new-instance v3, Lcom/samsung/api/DMCAPIException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V
    :try_end_39
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 246
    const/4 v1, 0x1

    .line 250
    :goto_3a
    return v1

    .line 247
    :catch_3b
    move-exception v0

    .line 248
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    .line 249
    const/16 v2, 0x2bd

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_3a
.end method

.method public startRenderer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 106
    const-string v0, "DLNA"

    const-string v1, "start VR renderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualRenderer$PositionThread;-><init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;Lcom/sec/android/app/dlna/playback/VirtualRenderer$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->positionThread:Ljava/lang/Thread;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->positionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/playback/VirtualRenderer$TransportThread;-><init>(Lcom/sec/android/app/dlna/playback/VirtualRenderer;Lcom/sec/android/app/dlna/playback/VirtualRenderer$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->transportThread:Ljava/lang/Thread;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->transportThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public stopRenderer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->positionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    .line 98
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->positionThread:Ljava/lang/Thread;

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->transportThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 101
    iput-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualRenderer;->transportThread:Ljava/lang/Thread;

    .line 103
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 481
    const-string v0, "VirtualRenderer"

    return-object v0
.end method
