.class final Ldbxyzptlk/v/D;
.super Ljava/util/TimerTask;
.source "panda.py"


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Ldbxyzptlk/v/C;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/C;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Ldbxyzptlk/v/D;->c:Ldbxyzptlk/v/C;

    iput-object p2, p0, Ldbxyzptlk/v/D;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Ldbxyzptlk/v/D;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 505
    iget-object v0, p0, Ldbxyzptlk/v/D;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_15

    .line 508
    iget-object v1, p0, Ldbxyzptlk/v/D;->c:Ldbxyzptlk/v/C;

    iget-object v1, v1, Ldbxyzptlk/v/C;->c:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Ldbxyzptlk/v/D;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 510
    :cond_15
    return-void
.end method
