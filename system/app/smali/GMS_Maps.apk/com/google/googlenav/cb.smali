.class Lcom/google/googlenav/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ca;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ca;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/googlenav/cb;->a:Lcom/google/googlenav/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 400
    iget-object v1, p0, Lcom/google/googlenav/cb;->a:Lcom/google/googlenav/ca;

    monitor-enter v1

    .line 403
    :try_start_3
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 404
    iget-object v2, p0, Lcom/google/googlenav/cb;->a:Lcom/google/googlenav/ca;

    invoke-static {v2}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/ca;)Lcom/google/googlenav/cl;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 405
    iget-object v2, p0, Lcom/google/googlenav/cb;->a:Lcom/google/googlenav/ca;

    new-instance v3, Lcom/google/googlenav/cl;

    iget-object v4, p0, Lcom/google/googlenav/cb;->a:Lcom/google/googlenav/ca;

    invoke-direct {v3, v4}, Lcom/google/googlenav/cl;-><init>(Lcom/google/googlenav/ca;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/ca;Lcom/google/googlenav/cl;)Lcom/google/googlenav/cl;

    .line 408
    :cond_1b
    const/16 v2, 0x54

    const-string v3, "ts"

    const-string v4, "r"

    invoke-static {v2, v3, v4}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/google/googlenav/cb;->a:Lcom/google/googlenav/ca;

    invoke-static {v2}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/ca;)Lcom/google/googlenav/cl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method
