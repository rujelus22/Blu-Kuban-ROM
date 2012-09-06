.class Lcom/google/googlenav/prefetch/android/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/s;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    monitor-enter v1

    .line 151
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    check-cast p2, Lcom/google/googlenav/prefetch/android/i;

    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/i;->a()Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;)LaD/h;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/s;->b(Lcom/google/googlenav/prefetch/android/s;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/s;->c(Lcom/google/googlenav/prefetch/android/s;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v2}, Lcom/google/googlenav/prefetch/android/s;->b(Lcom/google/googlenav/prefetch/android/s;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v3}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;)LaD/h;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/prefetch/android/s;->b(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    .line 158
    :goto_37
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;Lcom/google/googlenav/prefetch/android/y;)Lcom/google/googlenav/prefetch/android/y;

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;LaD/h;)LaD/h;

    .line 161
    :cond_43
    monitor-exit v1

    .line 162
    return-void

    .line 156
    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v2}, Lcom/google/googlenav/prefetch/android/s;->b(Lcom/google/googlenav/prefetch/android/s;)Lcom/google/googlenav/prefetch/android/y;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    invoke-static {v3}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;)LaD/h;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V

    goto :goto_37

    .line 161
    :catchall_57
    move-exception v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/t;->a:Lcom/google/googlenav/prefetch/android/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/s;->a(Lcom/google/googlenav/prefetch/android/s;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 171
    return-void
.end method
