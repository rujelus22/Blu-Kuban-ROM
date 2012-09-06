.class final Lcom/android/athome/picker/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/athome/picker/b/h;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/support/place/rpc/RpcError;)V
    .registers 5
    .parameter

    .prologue
    .line 1328
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error creating group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Lcom/android/athome/picker/b/h;->a:Lcom/android/athome/picker/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;Z)Z

    .line 1330
    return-void
.end method
