.class LalS;
.super LalG;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "LalG",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:LalJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LalJ",
            "<-TI;+TO;>;"
        }
    .end annotation
.end field

.field private a:LalU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LalU",
            "<+TI;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private volatile b:LalU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LalU",
            "<+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(LalJ;LalU;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LalJ",
            "<-TI;+TO;>;",
            "LalU",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 598
    invoke-direct {p0}, LalG;-><init>()V

    .line 592
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, LalS;->a:Ljava/util/concurrent/BlockingQueue;

    .line 594
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    .line 599
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LalJ;

    iput-object v0, p0, LalS;->a:LalJ;

    .line 600
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LalU;

    iput-object v0, p0, LalS;->a:LalU;

    .line 601
    return-void
.end method

.method synthetic constructor <init>(LalJ;LalU;LalP;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, LalS;-><init>(LalJ;LalU;)V

    return-void
.end method

.method static synthetic a(LalS;LalU;)LalU;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, LalS;->b:LalU;

    return-object p1
.end method

.method private a(Ljava/util/concurrent/Future;Z)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 706
    if-eqz p1, :cond_5

    .line 707
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 709
    :cond_5
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4
    .parameter

    .prologue
    .line 693
    invoke-super {p0, p1}, LalG;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 696
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lamc;->a(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, LalS;->a:LalU;

    invoke-direct {p0, v0, p1}, LalS;->a(Ljava/util/concurrent/Future;Z)V

    .line 698
    iget-object v0, p0, LalS;->b:LalU;

    invoke-direct {p0, v0, p1}, LalS;->a(Ljava/util/concurrent/Future;Z)V

    .line 699
    const/4 v0, 0x1

    .line 701
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, LalS;->isDone()Z

    move-result v0

    if-nez v0, :cond_19

    .line 615
    iget-object v0, p0, LalS;->a:LalU;

    .line 616
    if-eqz v0, :cond_d

    .line 617
    invoke-interface {v0}, LalU;->get()Ljava/lang/Object;

    .line 623
    :cond_d
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 630
    iget-object v0, p0, LalS;->b:LalU;

    .line 631
    if-eqz v0, :cond_19

    .line 632
    invoke-interface {v0}, LalU;->get()Ljava/lang/Object;

    .line 635
    :cond_19
    invoke-super {p0}, LalG;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 646
    invoke-virtual {p0}, LalS;->isDone()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 649
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p3, v0, :cond_14

    .line 650
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 651
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 658
    :cond_14
    iget-object v0, p0, LalS;->a:LalU;

    .line 659
    if-eqz v0, :cond_2a

    .line 660
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 661
    invoke-interface {v0, p1, p2, p3}, LalU;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 662
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v0, v3, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 668
    :cond_2a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 669
    iget-object v2, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 670
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 672
    :cond_3c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 679
    iget-object v0, p0, LalS;->b:LalU;

    .line 680
    if-eqz v0, :cond_4e

    .line 681
    invoke-interface {v0, p1, p2, p3}, LalU;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 684
    :cond_4e
    invoke-super {p0, p1, p2, p3}, LalG;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 716
    :try_start_1
    iget-object v0, p0, LalS;->a:LalU;

    invoke-static {v0}, Lamc;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_96
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_6} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_6} :catch_40
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_6} :catch_68
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_6} :catch_88

    move-result-object v0

    .line 729
    :try_start_7
    iget-object v1, p0, LalS;->a:LalJ;

    invoke-interface {v1, v0}, LalJ;->a(Ljava/lang/Object;)LalU;

    move-result-object v1

    iput-object v1, p0, LalS;->b:LalU;

    .line 731
    invoke-virtual {p0}, LalS;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 737
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Lamc;->a(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, LalU;->cancel(Z)Z

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, LalS;->b:LalU;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_96
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_7 .. :try_end_27} :catch_68
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_7a
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_27} :catch_88

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 782
    :goto_30
    return-void

    .line 717
    :catch_31
    move-exception v0

    .line 721
    const/4 v0, 0x0

    :try_start_33
    invoke-virtual {p0, v0}, LalS;->cancel(Z)Z
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_96
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_33 .. :try_end_36} :catch_68
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_7a
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_36} :catch_88

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    .line 723
    :catch_40
    move-exception v0

    .line 725
    :try_start_41
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, LalS;->a(Ljava/lang/Throwable;)Z
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_96
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_41 .. :try_end_48} :catch_68
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_7a
    .catch Ljava/lang/Error; {:try_start_41 .. :try_end_48} :catch_88

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    .line 742
    :cond_52
    :try_start_52
    new-instance v0, LalT;

    invoke-direct {v0, p0, v1}, LalT;-><init>(LalS;LalU;)V

    invoke-static {}, LalX;->a()LalW;

    move-result-object v2

    invoke-interface {v1, v0, v2}, LalU;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_96
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_52 .. :try_end_5e} :catch_68
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_7a
    .catch Ljava/lang/Error; {:try_start_52 .. :try_end_5e} :catch_88

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    .line 765
    :catch_68
    move-exception v0

    .line 767
    :try_start_69
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, LalS;->a(Ljava/lang/Throwable;)Z
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_96

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    .line 768
    :catch_7a
    move-exception v0

    .line 771
    :try_start_7b
    invoke-virtual {p0, v0}, LalS;->a(Ljava/lang/Throwable;)Z
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_96

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    .line 772
    :catch_88
    move-exception v0

    .line 774
    :try_start_89
    invoke-virtual {p0, v0}, LalS;->a(Ljava/lang/Throwable;)Z
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_96

    .line 777
    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v0, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_30

    .line 777
    :catchall_96
    move-exception v0

    iput-object v3, p0, LalS;->a:LalJ;

    .line 778
    iput-object v3, p0, LalS;->a:LalU;

    .line 780
    iget-object v1, p0, LalS;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
