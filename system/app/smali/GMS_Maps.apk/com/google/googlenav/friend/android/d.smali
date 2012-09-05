.class Lcom/google/googlenav/friend/android/d;
.super Ljava/lang/Object;

# interfaces
.implements LaY/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/a;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lcom/google/googlenav/a;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/friend/android/a;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/friend/android/d;->a:Lcom/google/googlenav/friend/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/friend/android/d;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/android/a;Lcom/google/googlenav/friend/android/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/d;-><init>(Lcom/google/googlenav/friend/android/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/a;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/d;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/d;->c:Lcom/google/googlenav/a;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Lcom/google/googlenav/E;)V
    .registers 4

    if-eqz p1, :cond_10

    :try_start_2
    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/google/googlenav/friend/android/d;->c:Lcom/google/googlenav/a;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1b

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/friend/android/d;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_16
    :try_start_16
    invoke-virtual {v0}, Lax/aP;->G()Lcom/google/googlenav/a;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    move-result-object v0

    goto :goto_e

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/d;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
