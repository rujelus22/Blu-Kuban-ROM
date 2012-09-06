.class final Lcom/google/android/ytremote/backend/browserchannel/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/browserchannel/i;

.field private final synthetic b:Lcom/google/android/ytremote/backend/model/a;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/i;Ljava/lang/String;Lcom/google/android/ytremote/backend/model/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iput-object p3, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->b:Lcom/google/android/ytremote/backend/model/a;

    .line 253
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->b(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Lcom/google/android/ytremote/backend/browserchannel/i;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 259
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->b(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->c(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    .line 263
    :cond_1f
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->d(Lcom/google/android/ytremote/backend/browserchannel/i;)Lcom/google/android/ytremote/backend/browserchannel/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->b:Lcom/google/android/ytremote/backend/model/a;

    invoke-interface {v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/c;->a(Lcom/google/android/ytremote/backend/model/a;)Lcom/google/android/ytremote/backend/browserchannel/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Lcom/google/android/ytremote/backend/browserchannel/a;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->e(Lcom/google/android/ytremote/backend/browserchannel/i;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 267
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->f(Lcom/google/android/ytremote/backend/browserchannel/i;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_57

    .line 271
    :cond_48
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0, v3}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    .line 272
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v0}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 274
    return-void

    .line 270
    :catchall_57
    move-exception v0

    .line 271
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1, v3}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;Z)V

    .line 272
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/j;->a:Lcom/google/android/ytremote/backend/browserchannel/i;

    invoke-static {v1}, Lcom/google/android/ytremote/backend/browserchannel/i;->a(Lcom/google/android/ytremote/backend/browserchannel/i;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 273
    throw v0
.end method
