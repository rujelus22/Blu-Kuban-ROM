.class public Lcom/anddoes/launcher/SimplePagedView;
.super Lcom/anddoes/launcher/PagedView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/SimplePagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/SimplePagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/SimplePagedView;->U:Z

    invoke-virtual {p0}, Lcom/anddoes/launcher/SimplePagedView;->u()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/SimplePagedView;->ag:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method protected final a_(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    const v5, 0x3f060a92

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 38
    iget v2, p0, Lcom/anddoes/launcher/SimplePagedView;->r:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 39
    iget v0, p0, Lcom/anddoes/launcher/SimplePagedView;->t:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 41
    iget-boolean v0, p0, Lcom/anddoes/launcher/SimplePagedView;->af:Z

    if-eqz v0, :cond_29

    .line 42
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2f

    .line 81
    :cond_28
    :goto_28
    return-void

    .line 46
    :cond_29
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_28

    .line 51
    :cond_2f
    div-float v0, v1, v2

    .line 52
    iget-boolean v3, p0, Lcom/anddoes/launcher/SimplePagedView;->af:Z

    if-eqz v3, :cond_37

    .line 53
    div-float v0, v2, v1

    .line 55
    :cond_37
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 57
    iget v3, p0, Lcom/anddoes/launcher/SimplePagedView;->B:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4b

    iget v2, p0, Lcom/anddoes/launcher/SimplePagedView;->B:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    .line 58
    :cond_4b
    invoke-virtual {p0}, Lcom/anddoes/launcher/SimplePagedView;->C()V

    .line 61
    :cond_4e
    const v1, 0x3f860a92

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_28

    .line 65
    cmpl-float v1, v0, v5

    if-lez v1, :cond_69

    .line 73
    sub-float/2addr v0, v5

    .line 74
    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 75
    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    invoke-super {p0, p1, v0, v7}, Lcom/anddoes/launcher/PagedView;->a(Landroid/view/MotionEvent;FZ)V

    goto :goto_28

    .line 79
    :cond_69
    invoke-super {p0, p1, v6, v7}, Lcom/anddoes/launcher/PagedView;->a(Landroid/view/MotionEvent;FZ)V

    goto :goto_28
.end method

.method public final g()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method
