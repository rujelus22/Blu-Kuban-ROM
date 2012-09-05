.class Lcom/google/googlenav/prefetch/android/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/l;

    check-cast p2, Lcom/google/googlenav/prefetch/android/f;

    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/f;->a()Lcom/google/googlenav/prefetch/android/PrefetcherService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/l;->a(Lcom/google/googlenav/prefetch/android/l;Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/m;->a:Lcom/google/googlenav/prefetch/android/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/l;->a(Lcom/google/googlenav/prefetch/android/l;Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-void
.end method
