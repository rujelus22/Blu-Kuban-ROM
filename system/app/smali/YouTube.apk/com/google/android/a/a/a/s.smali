.class final Lcom/google/android/a/a/a/s;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/a/a/a/n;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/a/n;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/a/s;->a:Lcom/google/android/a/a/a/n;

    .line 442
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/a/a/a/s;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->m(Lcom/google/android/a/a/a/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    iget-object v0, p0, Lcom/google/android/a/a/a/s;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/s;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1}, Lcom/google/android/a/a/a/n;->n(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/a;)V

    .line 447
    iget-object v0, p0, Lcom/google/android/a/a/a/s;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->o(Lcom/google/android/a/a/a/n;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 448
    return-void
.end method
