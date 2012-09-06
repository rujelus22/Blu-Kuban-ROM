.class final Lcom/google/android/youtube/core/player/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/aj;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/TvControllerOverlay;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/TvControllerOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/TvControllerOverlay;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/ax;-><init>(Lcom/google/android/youtube/core/player/TvControllerOverlay;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->k()V

    .line 325
    :cond_11
    return-void
.end method

.method public final a(D)V
    .registers 9
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 329
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 330
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/o;->o()V

    .line 331
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c(Lcom/google/android/youtube/core/player/TvControllerOverlay;)I

    move-result v3

    const-wide v4, 0x40d3880000000000L

    mul-double/2addr v0, v4

    double-to-int v0, v0

    sub-int v0, v3, v0

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/player/o;->a(I)V

    .line 333
    :cond_2f
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 369
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->o()V

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/o;->a(I)V

    .line 372
    :cond_1a
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->i()V

    .line 365
    :cond_11
    return-void
.end method

.method public final b(D)V
    .registers 9
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 355
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 356
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/o;->o()V

    .line 357
    iget-object v2, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->c(Lcom/google/android/youtube/core/player/TvControllerOverlay;)I

    move-result v3

    const-wide v4, 0x40d3880000000000L

    mul-double/2addr v0, v4

    double-to-int v0, v0

    add-int/2addr v0, v3

    invoke-interface {v2, v0}, Lcom/google/android/youtube/core/player/o;->a(I)V

    .line 359
    :cond_2e
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    :cond_8
    :goto_8
    return-void

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 340
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->j()V

    goto :goto_8
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->a(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 351
    :cond_8
    :goto_8
    return-void

    .line 348
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->j()V

    goto :goto_8
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ax;->a:Lcom/google/android/youtube/core/player/TvControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/TvControllerOverlay;->b(Lcom/google/android/youtube/core/player/TvControllerOverlay;)Lcom/google/android/youtube/core/player/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/o;->f()V

    .line 378
    :cond_11
    return-void
.end method
