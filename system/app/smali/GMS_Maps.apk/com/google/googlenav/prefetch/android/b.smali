.class Lcom/google/googlenav/prefetch/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/d;


# instance fields
.field final synthetic a:LaD/h;

.field final synthetic b:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/b;->b:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/b;->a:LaD/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/b;->b:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    .line 575
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/b;->a:LaD/h;

    invoke-interface {v0}, LaD/h;->p()V

    .line 576
    return-void
.end method
