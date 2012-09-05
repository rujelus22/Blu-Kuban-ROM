.class public abstract LaR/e;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/googlenav/android/J;

.field protected final b:Lx/aF;

.field protected final c:Landroid/net/wifi/WifiManager$WifiLock;

.field protected final d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field protected final e:Lcom/google/googlenav/prefetch/android/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/J;Lx/aF;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/g;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaR/e;->a:Lcom/google/googlenav/android/J;

    iput-object p2, p0, LaR/e;->b:Lx/aF;

    iput-object p3, p0, LaR/e;->c:Landroid/net/wifi/WifiManager$WifiLock;

    iput-object p4, p0, LaR/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iput-object p5, p0, LaR/e;->e:Lcom/google/googlenav/prefetch/android/g;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public c()Lcom/google/googlenav/prefetch/android/g;
    .registers 2

    iget-object v0, p0, LaR/e;->e:Lcom/google/googlenav/prefetch/android/g;

    return-object v0
.end method
