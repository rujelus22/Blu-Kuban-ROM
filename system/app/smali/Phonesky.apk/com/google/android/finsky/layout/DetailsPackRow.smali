.class public Lcom/google/android/finsky/layout/DetailsPackRow;
.super Landroid/widget/LinearLayout;
.source "DetailsPackRow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, maxChildHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsPackRow;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsPackRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 35
    :cond_1a
    if-lez v1, :cond_25

    .line 36
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 39
    :cond_25
    return-void
.end method
