.class public Ld/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ld/J;


# instance fields
.field private final a:Lm/c;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Z

.field private e:Ld/as;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/w;Ljava/lang/Integer;LW/a;Ld/C;Lm/c;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/ar;->d:Z

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ld/e;->a(Ljava/lang/String;Ld/w;)V

    invoke-static {p6}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/ar;->a:Lm/c;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ld/ar;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ld/ar;->b:Landroid/content/Context;

    new-instance v0, Ld/as;

    iget-object v1, p0, Ld/ar;->b:Landroid/content/Context;

    iget-object v3, p0, Ld/ar;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v7, p0, Ld/ar;->a:Lm/c;

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Ld/as;-><init>(Landroid/content/Context;Ld/w;Ljava/util/concurrent/CountDownLatch;LW/a;Ljava/lang/Integer;Ld/C;Lm/c;)V

    iput-object v0, p0, Ld/ar;->e:Ld/as;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Ld/ar;->d:Z

    if-nez v1, :cond_1a

    :goto_6
    const-string v1, "Start should be called only once!"

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/ar;->d:Z

    iget-object v0, p0, Ld/ar;->e:Ld/as;

    invoke-virtual {v0}, Ld/as;->start()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1c

    :try_start_13
    iget-object v0, p0, Ld/ar;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_1f

    :goto_18
    monitor-exit p0

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1f
    move-exception v0

    goto :goto_18
.end method

.method public a(Ld/W;Ld/K;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1e

    move v3, v0

    :goto_5
    if-nez p2, :cond_20

    move v2, v0

    :goto_8
    if-ne v3, v2, :cond_22

    :goto_a
    const-string v1, "config and decision should agree on null"

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/ar;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ld/e;->a(Ljava/lang/String;Ld/W;)V

    iget-object v0, p0, Ld/ar;->e:Ld/as;

    invoke-virtual {v0, p1, p2}, Ld/as;->a(Ld/W;Ld/K;)V

    return-void

    :cond_1e
    move v3, v1

    goto :goto_5

    :cond_20
    move v2, v1

    goto :goto_8

    :cond_22
    move v0, v1

    goto :goto_a
.end method

.method public a(Ljava/util/Set;JILd/K;)V
    .registers 7

    new-instance v0, Ld/ab;

    invoke-direct {v0, p1, p2, p3, p4}, Ld/ab;-><init>(Ljava/util/Set;JI)V

    invoke-virtual {p0, v0, p5}, Ld/ar;->a(Ld/W;Ld/K;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Ld/ar;->e:Ld/as;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld/ar;->e:Ld/as;

    invoke-static {v0}, Ld/as;->a(Ld/as;)V

    :cond_9
    return-void
.end method
