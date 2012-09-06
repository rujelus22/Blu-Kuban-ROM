.class Lcom/google/googlenav/prefetch/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/c;


# instance fields
.field final synthetic a:LaD/h;

.field final synthetic b:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

.field private volatile c:Z


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/BasePrefetcherService;LaD/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/d;->b:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/d;->a:LaD/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/d;->c:Z

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/d;->c:Z

    .line 645
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/d;->a:LaD/h;

    invoke-interface {v0}, LaD/h;->p()V

    .line 646
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/google/googlenav/prefetch/android/d;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
