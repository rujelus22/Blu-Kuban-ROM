.class Lcom/google/ads/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/s;

.field final synthetic b:Lcom/google/ads/AdRequest;

.field final synthetic c:Lcom/google/ads/u;


# direct methods
.method constructor <init>(Lcom/google/ads/u;Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/ads/v;->c:Lcom/google/ads/u;

    iput-object p2, p0, Lcom/google/ads/v;->a:Lcom/google/ads/s;

    iput-object p3, p0, Lcom/google/ads/v;->b:Lcom/google/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/v;->c:Lcom/google/ads/u;

    iget-object v1, p0, Lcom/google/ads/v;->a:Lcom/google/ads/s;

    iget-object v2, p0, Lcom/google/ads/v;->b:Lcom/google/ads/AdRequest;

    invoke-static {v0, v1, v2}, Lcom/google/ads/u;->a(Lcom/google/ads/u;Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V

    iget-object v0, p0, Lcom/google/ads/v;->c:Lcom/google/ads/u;

    invoke-static {v0}, Lcom/google/ads/u;->a(Lcom/google/ads/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/google/ads/v;->c:Lcom/google/ads/u;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/ads/u;->a(Lcom/google/ads/u;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v0
.end method
