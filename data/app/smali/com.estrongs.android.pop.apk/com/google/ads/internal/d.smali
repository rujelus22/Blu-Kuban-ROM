.class Lcom/google/ads/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/internal/d;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/d;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/internal/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    if-nez v0, :cond_10

    const-string v0, "The video must be gone, so cancelling the timeupdate task."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {v0}, Lcom/google/ads/internal/a;->f()V

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f
.end method
