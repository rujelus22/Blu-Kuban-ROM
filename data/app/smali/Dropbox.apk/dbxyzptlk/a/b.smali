.class final Ldbxyzptlk/a/b;
.super Ldbxyzptlk/a/k;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Object;

.field b:Z

.field final synthetic c:Ldbxyzptlk/a/a;

.field private e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ldbxyzptlk/a/a;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Ldbxyzptlk/a/b;->c:Ldbxyzptlk/a/a;

    invoke-direct {p0}, Ldbxyzptlk/a/k;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ldbxyzptlk/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldbxyzptlk/a/b;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Ldbxyzptlk/a/b;->c:Ldbxyzptlk/a/a;

    invoke-virtual {v0}, Ldbxyzptlk/a/a;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/a/b;->a:Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Ldbxyzptlk/a/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected final a()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/a/b;->c:Ldbxyzptlk/a/a;

    iget-object v1, p0, Ldbxyzptlk/a/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ldbxyzptlk/a/a;->a(Ldbxyzptlk/a/b;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 73
    iget-object v0, p0, Ldbxyzptlk/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    return-void

    .line 73
    :catchall_d
    move-exception v0

    iget-object v1, p0, Ldbxyzptlk/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/a/b;->c:Ldbxyzptlk/a/a;

    invoke-virtual {v0, p0, p1}, Ldbxyzptlk/a/a;->b(Ldbxyzptlk/a/b;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 63
    iget-object v0, p0, Ldbxyzptlk/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    return-void

    .line 63
    :catchall_b
    move-exception v0

    iget-object v1, p0, Ldbxyzptlk/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/a/b;->b:Z

    .line 80
    iget-object v0, p0, Ldbxyzptlk/a/b;->c:Ldbxyzptlk/a/a;

    invoke-virtual {v0}, Ldbxyzptlk/a/a;->c()V

    .line 81
    return-void
.end method
