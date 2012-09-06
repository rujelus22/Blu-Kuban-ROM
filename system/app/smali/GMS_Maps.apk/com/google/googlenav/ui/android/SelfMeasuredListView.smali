.class public Lcom/google/googlenav/ui/android/SelfMeasuredListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lcom/google/googlenav/ui/android/ax;

    if-eqz v1, :cond_22

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 35
    check-cast v0, Lcom/google/googlenav/ui/android/ax;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ax;->a(I)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 39
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 40
    return-void
.end method
