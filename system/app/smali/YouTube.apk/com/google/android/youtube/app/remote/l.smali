.class final Lcom/google/android/youtube/app/remote/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/e;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/e;)V
    .registers 2
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/l;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/e;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/l;-><init>(Lcom/google/android/youtube/app/remote/e;)V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/support/place/rpc/RpcError;)V
    .registers 4
    .parameter

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RPC error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/l;->a:Lcom/google/android/youtube/app/remote/e;

    sget-object v1, Lcom/google/android/youtube/app/remote/am;->a:Lcom/google/android/youtube/app/remote/al;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/al;)V

    .line 442
    return-void
.end method
