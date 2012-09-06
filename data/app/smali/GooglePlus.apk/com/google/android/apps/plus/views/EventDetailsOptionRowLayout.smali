.class public Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "EventDetailsOptionRowLayout.java"


# static fields
.field private static sDividerHeight:F

.field private static sDividerPaint:Landroid/graphics/Paint;

.field private static sInitialized:Z

.field private static sMinHeight:I

.field private static sMinSideWidth:I

.field private static sPadding:I


# instance fields
.field private mFirst:Z

.field private mLeftView:Landroid/view/View;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRightView:Landroid/view/View;

.field private mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .parameter "title"
    .parameter "description"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->clear()V

    .line 144
    iput-object p3, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    .line 145
    iput-object p4, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->addView(Landroid/view/View;)V

    .line 151
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->addView(Landroid/view/View;)V

    .line 155
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->removeView(Landroid/view/View;)V

    .line 162
    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->removeView(Landroid/view/View;)V

    .line 167
    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    .line 170
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;->clear()V

    .line 171
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    sget-boolean v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sInitialized:Z

    if-nez v2, :cond_4d

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sMinSideWidth:I

    .line 60
    const v2, 0x7f0d011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sMinHeight:I

    .line 63
    const v2, 0x7f0d0103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sPadding:I

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerPaint:Landroid/graphics/Paint;

    .line 67
    sget-object v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerPaint:Landroid/graphics/Paint;

    const v3, 0x7f0a013e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    sget-object v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerPaint:Landroid/graphics/Paint;

    const v3, 0x7f0d0105

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    sget-object v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerHeight:F

    .line 73
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sInitialized:Z

    .line 76
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_4d
    new-instance v2, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    .line 77
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->addView(Landroid/view/View;)V

    .line 79
    sget-object v2, Lcom/google/android/apps/plus/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setWillNotDraw(Z)V

    .line 84
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mFirst:Z

    if-eqz v0, :cond_10

    .line 176
    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mMeasuredWidth:I

    int-to-float v3, v0

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    :cond_10
    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mMeasuredHeight:I

    int-to-float v0, v0

    sget v2, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerHeight:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 180
    .local v6, bottomY:I
    int-to-float v2, v6

    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mMeasuredWidth:I

    int-to-float v3, v0

    int-to-float v4, v6

    sget-object v5, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, -0x8000

    const/4 v11, 0x0

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 93
    .local v7, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    .local v0, height:I
    const/4 v5, 0x0

    .line 96
    .local v5, runningHeight:I
    move v6, v7

    .line 98
    .local v6, runningWidth:I
    iget-boolean v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mFirst:Z

    if-eqz v9, :cond_16

    .line 99
    int-to-float v9, v5

    sget v10, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerHeight:F

    add-float/2addr v9, v10

    float-to-int v5, v9

    .line 102
    :cond_16
    const/4 v8, 0x0

    .line 104
    .local v8, workingLeft:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    if-eqz v9, :cond_3d

    .line 105
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    invoke-static {v9, v7, v12, v11, v11}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->measure(Landroid/view/View;IIII)V

    .line 106
    sget v9, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sPadding:I

    mul-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    sget v10, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sMinSideWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 107
    .local v1, leftWidth:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    invoke-static {v9, v11, v5}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setCorner(Landroid/view/View;II)V

    .line 108
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    invoke-static {v9, v1, v11}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setCenterBounds(Landroid/view/View;II)V

    .line 110
    add-int/2addr v8, v1

    .line 111
    sub-int/2addr v6, v1

    .line 114
    .end local v1           #leftWidth:I
    :cond_3d
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    if-eqz v9, :cond_64

    .line 115
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    invoke-static {v9, v6, v12, v11, v11}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->measure(Landroid/view/View;IIII)V

    .line 117
    sget v9, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sPadding:I

    mul-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    sget v10, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sMinSideWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 118
    .local v3, rightWidth:I
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    sub-int v10, v7, v3

    invoke-static {v9, v10, v5}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setCorner(Landroid/view/View;II)V

    .line 119
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    invoke-static {v9, v3, v11}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setCenterBounds(Landroid/view/View;II)V

    .line 120
    sub-int/2addr v6, v3

    .line 123
    .end local v3           #rightWidth:I
    :cond_64
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    invoke-static {v9, v6, v12, v0, v11}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->measure(Landroid/view/View;IIII)V

    .line 124
    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    invoke-static {v9, v8, v5}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setCorner(Landroid/view/View;II)V

    .line 126
    const/4 v9, 0x3

    new-array v2, v9, [Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mRightView:Landroid/view/View;

    aput-object v9, v2, v11

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mLeftView:Landroid/view/View;

    aput-object v10, v2, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mText:Lcom/google/android/apps/plus/views/EventDetailsOptionTitleDescription;

    aput-object v10, v2, v9

    .line 127
    .local v2, participatingViews:[Landroid/view/View;
    sget v9, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sMinHeight:I

    invoke-static {v2}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->getMaxHeight([Landroid/view/View;)I

    move-result v10

    sget v11, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sPadding:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 128
    .local v4, rowHeight:I
    invoke-static {v4, v2}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->verticallyCenter(I[Landroid/view/View;)V

    .line 130
    add-int/2addr v5, v4

    .line 131
    int-to-float v9, v5

    sget v10, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->sDividerHeight:F

    add-float/2addr v9, v10

    float-to-int v5, v9

    .line 133
    iput v5, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mMeasuredHeight:I

    .line 134
    iput v7, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mMeasuredWidth:I

    .line 135
    iget v9, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mMeasuredHeight:I

    invoke-virtual {p0, v7, v9}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->setMeasuredDimension(II)V

    .line 136
    return-void
.end method

.method public setFirst(Z)V
    .registers 2
    .parameter "first"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->mFirst:Z

    .line 140
    return-void
.end method
