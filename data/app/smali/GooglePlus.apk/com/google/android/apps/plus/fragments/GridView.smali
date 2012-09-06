.class public Lcom/google/android/apps/plus/fragments/GridView;
.super Landroid/widget/GridView;
.source "GridView.java"


# instance fields
.field private final attrsArray:[I

.field private mHorizontalSpacing:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    .line 21
    iput v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->mVerticalSpacing:I

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->attrsArray:[I

    .line 27
    return-void

    .line 22
    nop

    :array_12
    .array-data 0x4
        0x14t 0x1t 0x1t 0x1t
        0x15t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    .line 21
    iput v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->mVerticalSpacing:I

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->attrsArray:[I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/GridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void

    .line 22
    :array_14
    .array-data 0x4
        0x14t 0x1t 0x1t 0x1t
        0x15t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    .line 21
    iput v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->mVerticalSpacing:I

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/GridView;->attrsArray:[I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/GridView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void

    .line 22
    :array_14
    .array-data 0x4
        0x14t 0x1t 0x1t 0x1t
        0x15t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/GridView;->attrsArray:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/GridView;->mVerticalSpacing:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/GridView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 51
    .local v7, resources:Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 52
    .local v8, width:I
    const v9, 0x7f0d0080

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0d0082

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int v4, v9, v10

    .line 54
    .local v4, itemWidth:I
    iget v9, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    add-int/2addr v9, v8

    iget v10, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    add-int/2addr v10, v4

    div-int v5, v9, v10

    .line 55
    .local v5, numItemsInRow:I
    iget v9, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    add-int/2addr v9, v4

    mul-int/2addr v9, v5

    iget v10, p0, Lcom/google/android/apps/plus/fragments/GridView;->mHorizontalSpacing:I

    sub-int v1, v9, v10

    .line 57
    .local v1, exactWidth:I
    if-lez v5, :cond_74

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_74

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/GridView;->getCount()I

    move-result v2

    .line 59
    .local v2, itemCount:I
    const v9, 0x7f0d0083

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f0d0081

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int v3, v9, v10

    .line 62
    .local v3, itemHeight:I
    add-int v9, v2, v5

    add-int/lit8 v9, v9, -0x1

    div-int v6, v9, v5

    .line 63
    .local v6, numLines:I
    mul-int v9, v3, v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/GridView;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/GridView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/apps/plus/fragments/GridView;->mVerticalSpacing:I

    add-int/lit8 v11, v6, -0x1

    mul-int/2addr v10, v11

    add-int v0, v9, v10

    .line 66
    .local v0, exactHeight:I
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-super {p0, v9, v10}, Landroid/widget/GridView;->onMeasure(II)V

    .line 72
    .end local v0           #exactHeight:I
    .end local v2           #itemCount:I
    .end local v3           #itemHeight:I
    .end local v6           #numLines:I
    :goto_73
    return-void

    .line 69
    :cond_74
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-super {p0, v9, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_73
.end method
