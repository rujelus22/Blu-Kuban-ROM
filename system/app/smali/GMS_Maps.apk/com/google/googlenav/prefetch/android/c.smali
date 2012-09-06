.class Lcom/google/googlenav/prefetch/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/h;


# instance fields
.field final synthetic a:LaD/h;

.field final synthetic b:Lcom/google/googlenav/prefetch/android/n;

.field final synthetic c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/h;Lcom/google/googlenav/prefetch/android/n;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/c;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/c;->b:Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/c;->b:Lcom/google/googlenav/prefetch/android/n;

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/n;)Lcom/google/googlenav/prefetch/android/n;

    .line 632
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    invoke-interface {v0, p1}, LaD/h;->a(I)V

    .line 633
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    invoke-interface {v0, p1, p2}, LaD/h;->a(II)V

    .line 610
    return-void
.end method

.method public a(LaD/c;)V
    .registers 3
    .parameter

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    invoke-interface {v0, p1}, LaD/h;->a(LaD/c;)V

    .line 605
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    invoke-interface {v0}, LaD/h;->n()V

    .line 615
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/c;->b:Lcom/google/googlenav/prefetch/android/n;

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/n;)Lcom/google/googlenav/prefetch/android/n;

    .line 620
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    invoke-interface {v0}, LaD/h;->o()V

    .line 621
    return-void
.end method

.method public p()V
    .registers 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/c;->b:Lcom/google/googlenav/prefetch/android/n;

    invoke-static {v0, v1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;Lcom/google/googlenav/prefetch/android/n;)Lcom/google/googlenav/prefetch/android/n;

    .line 626
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/c;->a:LaD/h;

    invoke-interface {v0}, LaD/h;->p()V

    .line 627
    return-void
.end method
