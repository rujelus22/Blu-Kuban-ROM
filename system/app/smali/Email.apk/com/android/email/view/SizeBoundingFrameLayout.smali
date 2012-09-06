.class public Lcom/android/email/view/SizeBoundingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SizeBoundingFrameLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    .line 33
    iput v0, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    .line 33
    iput v0, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/email/view/SizeBoundingFrameLayout;->initFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    .line 33
    iput v0, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/email/view/SizeBoundingFrameLayout;->initFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private initFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 50
    sget-object v1, Lcom/android/email/R$styleable;->SizeBoundingFrameLayout_attributes:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 84
    .local v2, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 85
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 86
    .local v3, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 89
    .local v1, heightSize:I
    iget v4, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    if-ltz v4, :cond_17

    .line 90
    sparse-switch v2, :sswitch_data_42

    .line 101
    :cond_17
    :goto_17
    iget v4, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    if-ltz v4, :cond_1e

    .line 102
    sparse-switch v0, :sswitch_data_4c

    .line 112
    :cond_1e
    :goto_1e
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 114
    return-void

    .line 92
    :sswitch_2a
    iget v4, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 93
    goto :goto_17

    .line 95
    :sswitch_31
    const/high16 v2, -0x8000

    .line 96
    iget v3, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxWidth:I

    goto :goto_17

    .line 104
    :sswitch_36
    iget v4, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    goto :goto_1e

    .line 107
    :sswitch_3d
    const/high16 v0, -0x8000

    .line 108
    iget v1, p0, Lcom/android/email/view/SizeBoundingFrameLayout;->mMaxHeight:I

    goto :goto_1e

    .line 90
    :sswitch_data_42
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_31
    .end sparse-switch

    .line 102
    :sswitch_data_4c
    .sparse-switch
        -0x80000000 -> :sswitch_36
        0x0 -> :sswitch_3d
    .end sparse-switch
.end method
