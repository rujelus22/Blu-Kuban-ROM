.class Lcom/google/googlenav/prefetch/android/e;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/e;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/e;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->c()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/a;->b()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
