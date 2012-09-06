.class final Lcom/google/android/youtube/app/remote/k;
.super Lcom/google/android/youtube/athome/app/common/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/e;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/e;)V
    .registers 2
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0}, Lcom/google/android/youtube/athome/app/common/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/k;-><init>(Lcom/google/android/youtube/app/remote/e;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 474
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/athome/app/common/i;->a(ILandroid/support/place/rpc/RpcContext;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/remote/e;->b(Lcom/google/android/youtube/app/remote/e;I)I

    .line 476
    return-void
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;Landroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/athome/app/common/i;->a(Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;Landroid/support/place/rpc/RpcContext;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;)V

    .line 470
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 486
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/athome/app/common/i;->a(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/e;->e(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/athome/app/common/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/youtube/athome/app/common/k;->a(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public final b(ILandroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/athome/app/common/i;->b(ILandroid/support/place/rpc/RpcContext;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/e;->d(Lcom/google/android/youtube/app/remote/e;)Lcom/google/android/youtube/athome/app/common/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/youtube/athome/app/common/l;->a(I)V

    .line 482
    return-void
.end method

.method public final onConnected(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 450
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 451
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 452
    return-void
.end method

.method public final onDisconnected()V
    .registers 3

    .prologue
    .line 456
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 457
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->a:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/al;)V

    .line 458
    return-void
.end method

.method public final onError(Landroid/support/place/rpc/RpcError;)V
    .registers 4
    .parameter

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RPC error while listening to the player events: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/k;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/e;->c(Lcom/google/android/youtube/app/remote/e;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/place/rpc/RpcErrorHandler;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 464
    return-void
.end method
