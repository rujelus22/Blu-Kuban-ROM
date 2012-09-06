.class final LW;
.super LZ;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:LV;

.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private a:Ljava/util/concurrent/CountDownLatch;

.field a:Z


# direct methods
.method constructor <init>(LV;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, LW;->a:LV;

    invoke-direct {p0}, LZ;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LW;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LW;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, LW;->a:LV;

    invoke-virtual {v0}, LV;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LW;->a:Ljava/lang/Object;

    .line 53
    iget-object v0, p0, LW;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, LW;->a:LV;

    iget-object v1, p0, LW;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, LV;->a(LW;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 73
    iget-object v0, p0, LW;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    return-void

    .line 73
    :catchall_d
    move-exception v0

    iget-object v1, p0, LW;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected a(Ljava/lang/Object;)V
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
    iget-object v0, p0, LW;->a:LV;

    invoke-virtual {v0, p0, p1}, LV;->b(LW;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 63
    iget-object v0, p0, LW;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    return-void

    .line 63
    :catchall_b
    move-exception v0

    iget-object v1, p0, LW;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, LW;->a:Z

    .line 80
    iget-object v0, p0, LW;->a:LV;

    invoke-virtual {v0}, LV;->b()V

    .line 81
    return-void
.end method
