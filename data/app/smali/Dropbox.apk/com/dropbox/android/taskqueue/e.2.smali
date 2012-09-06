.class final Lcom/dropbox/android/taskqueue/e;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ldbxyzptlk/p/D;)V
    .registers 3
    .parameter

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/e;->a:Ljava/lang/ref/WeakReference;

    .line 528
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/D;

    .line 533
    if-eqz v0, :cond_d

    .line 534
    invoke-interface {v0}, Ldbxyzptlk/p/D;->a()V

    .line 536
    :cond_d
    return-void
.end method
