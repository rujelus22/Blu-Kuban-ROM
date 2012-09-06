.class final Landroid/support/v4/content/a;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Landroid/support/v4/content/AsyncTaskLoader;

.field private e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/content/a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/a;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/a;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/content/a;->e:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    iget-object v1, p0, Landroid/support/v4/content/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/a;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 73
    iget-object v0, p0, Landroid/support/v4/content/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void

    .line 73
    :catchall_d
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroid/support/v4/content/a;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 63
    iget-object v0, p0, Landroid/support/v4/content/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    return-void

    .line 63
    :catchall_b
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/content/a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/a;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/a;->b:Z

    .line 80
    iget-object v0, p0, Landroid/support/v4/content/a;->c:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 81
    return-void
.end method
