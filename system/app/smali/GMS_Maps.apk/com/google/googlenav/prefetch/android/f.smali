.class public Lcom/google/googlenav/prefetch/android/f;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/f;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/prefetch/android/PrefetcherService;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/f;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-object v0
.end method
