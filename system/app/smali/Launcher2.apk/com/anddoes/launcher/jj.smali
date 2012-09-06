.class final Lcom/anddoes/launcher/jj;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedViewCellLayout;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PagedViewCellLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/anddoes/launcher/jj;->a:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x42c8

    .line 587
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_16

    .line 601
    :cond_15
    :goto_15
    return v0

    .line 591
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_32

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_32

    .line 592
    iget-object v2, p0, Lcom/anddoes/launcher/jj;->a:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-static {v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->a(Lcom/anddoes/launcher/PagedViewCellLayout;)V

    move v0, v1

    .line 593
    goto :goto_15

    .line 594
    :cond_32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    .line 595
    iget-object v2, p0, Lcom/anddoes/launcher/jj;->a:Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-static {v2}, Lcom/anddoes/launcher/PagedViewCellLayout;->b(Lcom/anddoes/launcher/PagedViewCellLayout;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4c} :catch_4e

    move v0, v1

    .line 596
    goto :goto_15

    :catch_4e
    move-exception v1

    goto :goto_15
.end method
