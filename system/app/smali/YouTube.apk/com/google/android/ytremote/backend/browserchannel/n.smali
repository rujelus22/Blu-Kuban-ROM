.class final Lcom/google/android/ytremote/backend/browserchannel/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/i;

.field private final synthetic b:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/concurrent/Future;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/n;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/n;->b:Ljava/util/concurrent/Future;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/n;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/n;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " took longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/n;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->o(Lcom/google/android/ytremote/backend/browserchannel/i;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to send. Interrupting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/n;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method
