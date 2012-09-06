.class public Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/maps/R$styleable;->MaxWidthForSpinner:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->c:I

    .line 38
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->a:Landroid/view/View;

    .line 44
    const v0, 0x7f100474

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    .line 45
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->a:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, p3, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 76
    sub-int v0, p4, p2

    .line 77
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    .line 79
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 59
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ge v2, v0, :cond_36

    .line 60
    iget v2, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->c:I

    if-le v0, v2, :cond_22

    .line 61
    iget v0, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->c:I

    .line 63
    :cond_22
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->a:Landroid/view/View;

    sub-int v3, v1, v0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/view/View;->measure(II)V

    .line 65
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->b:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v0, p2}, Landroid/view/View;->measure(II)V

    .line 70
    :cond_36
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/TransitActionBarForTabletLayout;->setMeasuredDimension(II)V

    .line 71
    return-void
.end method
