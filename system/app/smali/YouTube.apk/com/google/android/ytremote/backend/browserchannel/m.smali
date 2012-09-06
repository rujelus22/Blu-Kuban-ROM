.class final Lcom/google/android/ytremote/backend/browserchannel/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/i;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/i;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .registers 5

    .prologue
    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/p;->a()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 571
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is older than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/ytremote/backend/browserchannel/p;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string v2, " ms. Dropping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->m(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/ytremote/backend/browserchannel/p;->b:Ljava/util/List;

    sget-object v2, Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;->CANCELED:Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/util/List;Lcom/google/android/ytremote/backend/logic/CloudService$OnSendMessageResult$SendMessageResult;)V
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_89

    .line 583
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->f(Lcom/google/android/ytremote/backend/browserchannel/i;)V

    .line 585
    const/4 v0, 0x0

    return-object v0

    .line 577
    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/ytremote/backend/browserchannel/p;->c:Lcom/google/android/ytremote/backend/model/Method;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v2}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/ytremote/backend/browserchannel/p;->d:Lcom/google/android/ytremote/backend/model/Params;

    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v3}, Lcom/google/android/ytremote/backend/browserchannel/i;->l(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/p;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/ytremote/backend/browserchannel/p;->b:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;Ljava/util/List;)V

    .line 578
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->n(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 579
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->n(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_88
    .catchall {:try_start_59 .. :try_end_88} :catchall_89

    goto :goto_52

    .line 582
    :catchall_89
    move-exception v0

    .line 583
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/m;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->f(Lcom/google/android/ytremote/backend/browserchannel/i;)V

    .line 584
    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/ytremote/backend/browserchannel/m;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
