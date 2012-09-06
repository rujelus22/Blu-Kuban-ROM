.class final Laz/b;
.super LY/b;
.source "SourceFile"


# direct methods
.method constructor <init>(LY/c;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 256
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    .line 257
    if-nez v0, :cond_7

    .line 270
    :cond_6
    :goto_6
    return-void

    .line 262
    :cond_7
    invoke-static {v0}, Laz/a;->a(Laz/a;)Laz/f;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-static {v0}, Laz/a;->b(Laz/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {v0}, Laz/a;->c(Laz/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 265
    :cond_21
    sget-object v0, Lcom/google/googlenav/prefetch/android/g;->c:Lcom/google/googlenav/prefetch/android/g;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;)V

    .line 267
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0}, Laz/a;->d()V

    .line 268
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->f()V

    goto :goto_6
.end method
