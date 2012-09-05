.class Lcom/google/googlenav/prefetch/android/u;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bn;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public a(Lam/b;Ljava/util/List;Lam/b;J)V
    .registers 9

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/be;->a(Lam/b;B)Lcom/google/googlenav/ah;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/u;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_7
.end method
