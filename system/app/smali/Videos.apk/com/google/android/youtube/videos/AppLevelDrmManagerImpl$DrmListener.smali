.class final Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;
.super Ljava/lang/Object;
.source "AppLevelDrmManagerImpl.java"

# interfaces
.implements Lcom/widevine/drmapi/android/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;-><init>(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)Lcom/widevine/drmapi/android/WVStatus;
    .registers 9
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/widevine/drmapi/android/WVEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/widevine/drmapi/android/WVStatus;"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #calls: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->logEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V
    invoke-static {v2, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$1000(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V

    .line 380
    const-string v2, "WVStatusKey"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/widevine/drmapi/android/WVStatus;

    .line 381
    .local v1, status:Lcom/widevine/drmapi/android/WVStatus;
    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->HeartbeatError:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v1, v2, :cond_2f

    .line 383
    iget-object v4, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    const-string v2, "WVAssetPathKey"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    const-string v3, "WVErrorKey"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->parseCgiError(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->notifyHeartbeatError(Ljava/lang/String;I)V

    .line 400
    :goto_2c
    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    return-object v2

    .line 385
    :cond_2f
    sget-object v2, Lcom/widevine/drmapi/android/WVEvent;->Stopped:Lcom/widevine/drmapi/android/WVEvent;

    if-ne p1, v2, :cond_54

    .line 387
    sget-object v0, Lcom/google/android/youtube/videos/DrmManager$StopReason;->Unknown:Lcom/google/android/youtube/videos/DrmManager$StopReason;

    .line 388
    .local v0, reason:Lcom/google/android/youtube/videos/DrmManager$StopReason;
    sget-object v2, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$3;->$SwitchMap$com$widevine$drmapi$android$WVStatus:[I

    invoke-virtual {v1}, Lcom/widevine/drmapi/android/WVStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_64

    .line 396
    :goto_40
    iget-object v3, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    const-string v2, "WVAssetPathKey"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->notifyPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V

    goto :goto_2c

    .line 390
    :pswitch_4e
    sget-object v0, Lcom/google/android/youtube/videos/DrmManager$StopReason;->TamperDetected:Lcom/google/android/youtube/videos/DrmManager$StopReason;

    .line 391
    goto :goto_40

    .line 393
    :pswitch_51
    sget-object v0, Lcom/google/android/youtube/videos/DrmManager$StopReason;->LostConnection:Lcom/google/android/youtube/videos/DrmManager$StopReason;

    goto :goto_40

    .line 398
    .end local v0           #reason:Lcom/google/android/youtube/videos/DrmManager$StopReason;
    :cond_54
    iget-object v2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$DrmListener;->this$0:Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;

    #getter for: Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->pendingResponseQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;->access$1100(Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;

    invoke-direct {v3, p1, p2}, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;-><init>(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 388
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method
