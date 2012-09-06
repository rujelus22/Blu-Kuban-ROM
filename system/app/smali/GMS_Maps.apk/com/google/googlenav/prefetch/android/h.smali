.class Lcom/google/googlenav/prefetch/android/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/h;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/h;-><init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter

    .prologue
    .line 420
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->c()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/p;->b()V

    .line 421
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 422
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/h;->a:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->d()V

    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
