.class public Lcom/google/android/finsky/layout/CellWithOverlay;
.super Landroid/widget/RelativeLayout;
.source "CellWithOverlay.java"


# instance fields
.field private mName:Lcom/google/android/finsky/layout/CellTitleOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CellWithOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/CellTitleOverlay;

    iput-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    .line 35
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 56
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    iget-object v1, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->layout(IIII)V

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 43
    .local v2, fullWidth:I
    int-to-float v5, v2

    iget-object v6, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMinWidthPercent()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 44
    .local v4, minOverlayWidth:I
    int-to-float v5, v2

    iget-object v6, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMaxWidthPercent()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 45
    .local v3, maxOverlayWidth:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMeasuredWidth()I

    move-result v0

    .line 47
    .local v0, currOverlayWidth:I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 48
    .local v1, finalOverlayWidth:I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 50
    iget-object v5, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/layout/CellTitleOverlay;->measure(II)V

    .line 52
    return-void
.end method

.method public setOverlayCaption(Ljava/lang/String;)V
    .registers 3
    .parameter "caption"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/CellTitleOverlay;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
