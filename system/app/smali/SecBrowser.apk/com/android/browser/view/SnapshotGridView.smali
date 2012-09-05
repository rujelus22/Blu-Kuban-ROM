.class public Lcom/android/browser/view/SnapshotGridView;
.super Landroid/widget/GridView;
.source "SnapshotGridView.java"


# instance fields
.field private mColWidth:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/android/browser/view/SnapshotGridView;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/android/browser/view/SnapshotGridView;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-object p1, p0, Lcom/android/browser/view/SnapshotGridView;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 50
    .local v2, widthSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 52
    .local v1, widthMode:I
    if-lez v2, :cond_33

    iget v3, p0, Lcom/android/browser/view/SnapshotGridView;->mColWidth:I

    if-lez v3, :cond_33

    .line 53
    iget v3, p0, Lcom/android/browser/view/SnapshotGridView;->mColWidth:I

    div-int v0, v2, v3

    .line 54
    .local v0, numCols:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/SnapshotGridView;->mColWidth:I

    mul-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 59
    iget-object v3, p0, Lcom/android/browser/view/SnapshotGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/browser/view/SnapshotGridView;->setNumColumns(I)V

    .line 62
    .end local v0           #numCols:I
    :cond_33
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 63
    return-void
.end method

.method public setColumnWidth(I)V
    .registers 2
    .parameter "columnWidth"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/browser/view/SnapshotGridView;->mColWidth:I

    .line 68
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 69
    return-void
.end method
