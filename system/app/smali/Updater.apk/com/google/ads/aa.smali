.class final Lcom/google/ads/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/w;

.field final synthetic b:Lcom/google/ads/d;

.field final synthetic c:Lcom/google/ads/z;


# direct methods
.method constructor <init>(Lcom/google/ads/z;Lcom/google/ads/w;Lcom/google/ads/d;)V
    .registers 4

    iput-object p1, p0, Lcom/google/ads/aa;->c:Lcom/google/ads/z;

    iput-object p2, p0, Lcom/google/ads/aa;->a:Lcom/google/ads/w;

    iput-object p3, p0, Lcom/google/ads/aa;->b:Lcom/google/ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/aa;->c:Lcom/google/ads/z;

    iget-object v1, p0, Lcom/google/ads/aa;->a:Lcom/google/ads/w;

    iget-object v2, p0, Lcom/google/ads/aa;->b:Lcom/google/ads/d;

    invoke-static {v0, v1, v2}, Lcom/google/ads/z;->a(Lcom/google/ads/z;Lcom/google/ads/w;Lcom/google/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/aa;->c:Lcom/google/ads/z;

    invoke-static {v0}, Lcom/google/ads/z;->a(Lcom/google/ads/z;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/google/ads/aa;->c:Lcom/google/ads/z;

    invoke-static {v0}, Lcom/google/ads/z;->b(Lcom/google/ads/z;)Ljava/lang/Thread;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method
