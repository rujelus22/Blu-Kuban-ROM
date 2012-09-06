.class Lcom/google/googlenav/friend/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/f;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:Lcom/google/googlenav/a;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/d;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/android/b;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/a;
    .registers 5

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/d;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 384
    iget-object v0, p0, Lcom/google/googlenav/friend/android/d;->b:Lcom/google/googlenav/a;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    .line 386
    :goto_b
    return-object v0

    .line 385
    :catch_c
    move-exception v0

    .line 386
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Lcom/google/googlenav/F;)V
    .registers 4
    .parameter

    .prologue
    .line 371
    if-eqz p1, :cond_10

    .line 372
    :try_start_2
    new-instance v0, Lcom/google/googlenav/friend/aM;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/aM;-><init>(Lcom/google/googlenav/F;)V

    .line 373
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 374
    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/google/googlenav/friend/android/d;->b:Lcom/google/googlenav/a;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1b

    .line 377
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/friend/android/d;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 379
    return-void

    .line 374
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->D()Lcom/google/googlenav/a;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    move-result-object v0

    goto :goto_e

    .line 377
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/d;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
