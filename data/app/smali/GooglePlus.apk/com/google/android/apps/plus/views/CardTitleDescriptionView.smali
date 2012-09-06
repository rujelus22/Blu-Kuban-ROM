.class public Lcom/google/android/apps/plus/views/CardTitleDescriptionView;
.super Landroid/view/ViewGroup;
.source "CardTitleDescriptionView.java"


# instance fields
.field private mDateCorner:Landroid/graphics/Point;

.field private mDateTextView:Landroid/widget/TextView;

.field private mDescriptionCorner:Landroid/graphics/Point;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mTitleCorner:Landroid/graphics/Point;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    .line 51
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0d0123

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->addView(Landroid/view/View;)V

    .line 63
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    .line 64
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    const v2, 0x7f0d0124

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->addView(Landroid/view/View;)V

    .line 74
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    .line 75
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    const v2, 0x7f0d0125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 165
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, -0x8000

    const/4 v11, 0x0

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 103
    .local v4, givenWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 104
    .local v3, givenHeight:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 105
    .local v6, heightMode:I
    const/4 v5, 0x0

    .line 108
    .local v5, height:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 111
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 112
    .local v1, dateWidth:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 114
    .local v0, dateHeight:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    sub-int v9, v4, v1

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 115
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iput v11, v8, Landroid/graphics/Point;->y:I

    .line 118
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 122
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 124
    .local v7, titleHeight:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iput v11, v8, Landroid/graphics/Point;->x:I

    .line 125
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iput v11, v8, Landroid/graphics/Point;->y:I

    .line 128
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    sub-int v10, v0, v7

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 129
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateCorner:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    sub-int v10, v7, v0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 132
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleCorner:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v7

    add-int/2addr v5, v8

    .line 134
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9c

    .line 135
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v10, v3, v5

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 139
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 141
    .local v2, descriptionHeight:I
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    iput v11, v8, Landroid/graphics/Point;->x:I

    .line 142
    iget-object v8, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionCorner:Landroid/graphics/Point;

    iput v5, v8, Landroid/graphics/Point;->y:I

    .line 144
    add-int/2addr v5, v2

    .line 147
    .end local v2           #descriptionHeight:I
    :cond_9c
    invoke-static {v4, p1}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->resolveSize(II)I

    move-result v8

    invoke-static {v5, p2}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->setMeasuredDimension(II)V

    .line 149
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .registers 7
    .parameter "title"
    .parameter "date"
    .parameter "description"
    .parameter "ellipsize"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/plus/views/CardTitleDescriptionView;->mDescriptionTextView:Landroid/widget/TextView;

    if-eqz p4, :cond_19

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 98
    return-void

    .line 97
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method
