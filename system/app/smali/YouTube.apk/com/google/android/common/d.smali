.class final Lcom/google/android/common/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 370
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/common/f;->c()I

    move-result v2

    .line 371
    :goto_14
    if-le v2, v0, :cond_19

    :goto_16
    return v0

    :cond_17
    move v2, v1

    .line 370
    goto :goto_14

    :cond_19
    move v0, v1

    .line 371
    goto :goto_16
.end method

.method private b()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/common/f;->c()I

    move-result v2

    .line 376
    :goto_14
    if-le v2, v0, :cond_19

    :goto_16
    return v0

    :cond_17
    move v2, v1

    .line 375
    goto :goto_14

    :cond_19
    move v0, v1

    .line 376
    goto :goto_16
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;I)I

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->c(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 417
    :cond_b
    :goto_b
    return v2

    .line 388
    :cond_c
    cmpl-float v0, p3, v3

    if-eqz v0, :cond_b

    .line 392
    cmpl-float v0, p3, v3

    if-lez v0, :cond_1a

    invoke-direct {p0}, Lcom/google/android/common/d;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 394
    :cond_1a
    cmpg-float v0, p3, v3

    if-gez v0, :cond_24

    invoke-direct {p0}, Lcom/google/android/common/d;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    :cond_24
    cmpg-float v0, p3, v3

    if-gez v0, :cond_42

    move v0, v1

    .line 404
    :goto_29
    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v4}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_39

    move v2, v1

    .line 406
    :cond_39
    if-eq v0, v2, :cond_44

    .line 407
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->d(Lcom/google/android/common/SwipeySwitcher;)V

    :goto_40
    move v2, v1

    .line 417
    goto :goto_b

    :cond_42
    move v0, v2

    .line 403
    goto :goto_29

    .line 409
    :cond_44
    if-eqz v0, :cond_51

    .line 410
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->e(Lcom/google/android/common/SwipeySwitcher;)V

    .line 415
    :goto_4b
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Z)V

    goto :goto_40

    .line 412
    :cond_51
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->f(Lcom/google/android/common/SwipeySwitcher;)V

    goto :goto_4b
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->c(Lcom/google/android/common/SwipeySwitcher;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 467
    :goto_c
    return v0

    .line 430
    :cond_d
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v0

    float-to-int v3, p3

    add-int/2addr v0, v3

    .line 432
    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_60

    invoke-direct {p0}, Lcom/google/android/common/d;->a()Z

    move-result v3

    if-nez v3, :cond_60

    .line 433
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 438
    :cond_29
    :goto_29
    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 440
    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v3}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/common/f;->c()I

    move-result v3

    if-ne v3, v5, :cond_5e

    .line 457
    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    .line 458
    if-ge v0, v3, :cond_75

    iget-object v4, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v4}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v4

    aget-object v4, v4, v1

    instance-of v4, v4, Lcom/google/android/common/l;

    if-eqz v4, :cond_75

    move v1, v2

    .line 463
    :cond_57
    :goto_57
    if-eqz v1, :cond_5e

    .line 464
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->h(Lcom/google/android/common/SwipeySwitcher;)V

    :cond_5e
    move v0, v2

    .line 467
    goto :goto_c

    .line 434
    :cond_60
    iget-object v3, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v3}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_29

    invoke-direct {p0}, Lcom/google/android/common/d;->b()Z

    move-result v3

    if-nez v3, :cond_29

    .line 435
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    goto :goto_29

    .line 460
    :cond_75
    if-le v0, v3, :cond_57

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/google/android/common/l;

    if-eqz v0, :cond_57

    move v1, v2

    .line 461
    goto :goto_57
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method
