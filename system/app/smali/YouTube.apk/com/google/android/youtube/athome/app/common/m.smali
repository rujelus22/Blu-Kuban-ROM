.class final Lcom/google/android/youtube/athome/app/common/m;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/athome/app/common/h;

.field private b:Lcom/google/android/youtube/athome/app/common/i;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/athome/app/common/h;Landroid/support/place/connector/Broker;Lcom/google/android/youtube/athome/app/common/i;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/m;->a:Lcom/google/android/youtube/athome/app/common/h;

    .line 420
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 421
    iput-object p3, p0, Lcom/google/android/youtube/athome/app/common/m;->b:Lcom/google/android/youtube/athome/app/common/i;

    .line 422
    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 426
    const-string v1, "onPlayerStateChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 429
    const-string v1, "state"

    sget-object v2, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;

    .line 430
    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/m;->b:Lcom/google/android/youtube/athome/app/common/i;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/youtube/athome/app/common/i;->a(Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;Landroid/support/place/rpc/RpcContext;)V

    .line 450
    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    .line 432
    :cond_1e
    const-string v1, "onVideoProgress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 434
    const-string v1, "currentTime"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/m;->b:Lcom/google/android/youtube/athome/app/common/i;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/youtube/athome/app/common/i;->a(ILandroid/support/place/rpc/RpcContext;)V

    goto :goto_1c

    .line 437
    :cond_32
    const-string v1, "onVolumeChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 439
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/m;->b:Lcom/google/android/youtube/athome/app/common/i;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/youtube/athome/app/common/i;->b(ILandroid/support/place/rpc/RpcContext;)V

    goto :goto_1c

    .line 442
    :cond_46
    const-string v1, "onScreenNameChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 444
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/m;->b:Lcom/google/android/youtube/athome/app/common/i;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/youtube/athome/app/common/i;->a(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1c

    .line 448
    :cond_5a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_1d
.end method
