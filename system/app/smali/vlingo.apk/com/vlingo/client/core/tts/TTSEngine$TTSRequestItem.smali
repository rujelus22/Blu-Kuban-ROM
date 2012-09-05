.class final Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "TTSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TTSRequestItem"
.end annotation


# instance fields
.field private onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

.field private request:Lcom/vlingo/client/core/tts/TTSRequest2;

.field private retryCount:I

.field final synthetic this$0:Lcom/vlingo/client/core/tts/TTSEngine;

.field private timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 8
    .parameter
    .parameter "request"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 652
    invoke-static {p2, p0}, Lcom/vlingo/client/core/tts/TTSEngine;->getHttpRequest(Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 654
    invoke-virtual {p2}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 655
    const/4 v1, 0x5

    iput v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->retryCount:I

    .line 659
    :goto_16
    iget v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->retryCount:I

    invoke-virtual {p2}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMsgTimeoutValue()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit16 v0, v1, 0x5dc

    .line 661
    .local v0, timeout:I
    new-instance v1, Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    invoke-direct {v1, p0}, Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;-><init>(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;)V

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    .line 662
    #getter for: Lcom/vlingo/client/core/tts/TTSEngine;->timer:Ljava/util/Timer;
    invoke-static {p1}, Lcom/vlingo/client/core/tts/TTSEngine;->access$700(Lcom/vlingo/client/core/tts/TTSEngine;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 663
    return-void

    .line 657
    .end local v0           #timeout:I
    :cond_31
    const/4 v1, 0x1

    iput v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->retryCount:I

    goto :goto_16
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/tts/TTSEngine$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 641
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;-><init>(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->fetchAudio()V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized cancel(Z)Z
    .registers 3
    .parameter "retry"

    .prologue
    .line 666
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(ZZ)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cancel(ZZ)Z
    .registers 6
    .parameter "retry"
    .parameter "ignore"

    .prologue
    const/4 v0, 0x1

    .line 670
    monitor-enter p0

    if-eqz p1, :cond_16

    .line 671
    :try_start_4
    iget v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->retryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->retryCount:I

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v1, :cond_16

    .line 674
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->fetchAudio()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_4f

    .line 675
    const/4 v0, 0x0

    .line 699
    :cond_14
    :goto_14
    monitor-exit p0

    return v0

    .line 678
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    if-eqz v1, :cond_22

    .line 679
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/HttpRequest;->cancel()V

    .line 680
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 682
    :cond_22
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    if-eqz v1, :cond_2e

    .line 683
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;->cancel()Z

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    .line 686
    :cond_2e
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/core/tts/TTSEngine;->currentItem:Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;
    invoke-static {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->access$802(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;)Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;

    .line 690
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v1, :cond_14

    .line 691
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->setCancelled(Z)V

    .line 692
    if-eqz p2, :cond_52

    .line 693
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    #calls: Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    invoke-static {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->access$900(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 696
    :goto_4b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_4f

    goto :goto_14

    .line 670
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 695
    :cond_52
    :try_start_52
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    iget-object v2, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    #calls: Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    invoke-static {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->access$1000(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_4f

    goto :goto_4b
.end method

.method private declared-synchronized fetchAudio()V
    .registers 3

    .prologue
    .line 707
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setState(Lcom/vlingo/client/core/tts/TTSRequest2$State;)V

    .line 708
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->start()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 709
    monitor-exit p0

    return-void

    .line 707
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isMessageReadback()Z
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 787
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 758
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-nez v0, :cond_7

    .line 766
    :goto_5
    monitor-exit p0

    return-void

    .line 764
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "safereader-readback-failure"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 758
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 10
    .parameter "onDemandRequest"
    .parameter "response"

    .prologue
    .line 717
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_84

    if-nez v4, :cond_7

    .line 755
    :goto_5
    monitor-exit p0

    return-void

    .line 726
    :cond_7
    :try_start_7
    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_84

    .line 727
    :try_start_a
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->getState()Lcom/vlingo/client/core/tts/TTSRequest2$State;

    move-result-object v4

    sget-object v6, Lcom/vlingo/client/core/tts/TTSRequest2$State;->BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    if-ne v4, v6, :cond_1b

    .line 728
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    sget-object v6, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-virtual {v4, v6}, Lcom/vlingo/client/core/tts/TTSRequest2;->setState(Lcom/vlingo/client/core/tts/TTSRequest2$State;)V

    .line 729
    :cond_1b
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_87

    .line 731
    :try_start_1c
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->getState()Lcom/vlingo/client/core/tts/TTSRequest2$State;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    if-ne v4, v5, :cond_93

    .line 732
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsBytes()[B

    move-result-object v0

    .line 733
    .local v0, audioData:[B
    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSEngine;->isErrorResponse([B)Z

    move-result v2

    .line 734
    .local v2, error:Z
    if-nez v2, :cond_8d

    .line 735
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSDemand;->getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v4

    sget-object v5, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->NORMAL:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-ne v4, v5, :cond_62

    .line 736
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v4

    if-eqz v4, :cond_8a

    sget-object v3, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->MESSAGE_READBACK:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    .line 737
    .local v3, type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    :goto_48
    new-instance v1, Lcom/vlingo/client/core/audio/AudioContext;

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    #getter for: Lcom/vlingo/client/core/tts/TTSEngine;->audioListener:Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;
    invoke-static {v5}, Lcom/vlingo/client/core/tts/TTSEngine;->access$1100(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/vlingo/client/core/audio/AudioContext;-><init>(Ljava/lang/Object;Lcom/vlingo/client/core/audio/AudioListener;)V

    .line 738
    .local v1, context:Lcom/vlingo/client/core/audio/AudioContext;
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->playAudio([BLcom/vlingo/client/core/audio/AudioPlayer$AudioType;Lcom/vlingo/client/core/audio/AudioContext;)V

    .line 739
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/tts/TTSRequest2;->setPlaying(Z)V

    .line 743
    .end local v1           #context:Lcom/vlingo/client/core/audio/AudioContext;
    .end local v3           #type:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;
    :cond_62
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSRequest2;->isCacheable()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    #getter for: Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;
    invoke-static {v4}, Lcom/vlingo/client/core/tts/TTSEngine;->access$1200(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSCache;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 744
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    #getter for: Lcom/vlingo/client/core/tts/TTSEngine;->ttsCache:Lcom/vlingo/client/core/tts/TTSCache;
    invoke-static {v4}, Lcom/vlingo/client/core/tts/TTSEngine;->access$1200(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSCache;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-interface {v4, v5, v0}, Lcom/vlingo/client/core/tts/TTSCache;->addToCache(Lcom/vlingo/client/core/tts/TTSRequest2;[B)Z

    .line 746
    :cond_7d
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 747
    invoke-direct {p0, v2}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z
    :try_end_83
    .catchall {:try_start_1c .. :try_end_83} :catchall_84

    goto :goto_5

    .line 717
    .end local v0           #audioData:[B
    .end local v2           #error:Z
    :catchall_84
    move-exception v4

    monitor-exit p0

    throw v4

    .line 729
    :catchall_87
    move-exception v4

    :try_start_88
    monitor-exit v5
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw v4

    .line 736
    .restart local v0       #audioData:[B
    .restart local v2       #error:Z
    :cond_8a
    sget-object v3, Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;->TTS_PROMPT:Lcom/vlingo/client/core/audio/AudioPlayer$AudioType;

    goto :goto_48

    .line 749
    :cond_8d
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(ZZ)Z

    goto/16 :goto_5

    .line 752
    .end local v0           #audioData:[B
    .end local v2           #error:Z
    :cond_93
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 753
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z
    :try_end_9a
    .catchall {:try_start_89 .. :try_end_9a} :catchall_84

    goto/16 :goto_5
.end method

.method public declared-synchronized onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 4
    .parameter "request"

    .prologue
    const/4 v0, 0x1

    .line 772
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2d

    if-nez v1, :cond_8

    .line 781
    :goto_6
    monitor-exit p0

    return v0

    .line 775
    :cond_8
    :try_start_8
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_2d

    .line 776
    :try_start_9
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getState()Lcom/vlingo/client/core/tts/TTSRequest2$State;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    if-ne v0, v1, :cond_1a

    .line 777
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$State;->FETCH_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setState(Lcom/vlingo/client/core/tts/TTSRequest2$State;)V

    .line 778
    :cond_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2a

    .line 780
    :try_start_1b
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "safereader-readback-timeout"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->cancel(Z)Z
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2d

    move-result v0

    goto :goto_6

    .line 778
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 772
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TTSRequestItem: req="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->timeoutTask:Lcom/vlingo/client/core/tts/TTSEngine$TTSTimeoutTask;

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " od="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vlingo/client/core/tts/TTSEngine$TTSRequestItem;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    if-eqz v3, :cond_3d

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3b
    move v0, v2

    goto :goto_1e

    :cond_3d
    move v1, v2

    goto :goto_2c
.end method
