.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"

.field private static sDeletePreviewsWhenDetachedFromWindow:Z


# instance fields
.field private mAlpha:I

.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mHolographicAlpha:I

.field private mHolographicOutline:Landroid/graphics/Bitmap;

.field private mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mIsChecked:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private final mTmpScaleRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f090003

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    .line 55
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    .line 60
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 78
    .local v0, alpha:I
    if-lez v0, :cond_43

    .line 79
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 80
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 82
    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .line 85
    :cond_43
    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    .line 89
    return-void
.end method

.method private setChildrenAlpha(F)V
    .registers 5
    .parameter "alpha"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getChildCount()I

    move-result v0

    .line 207
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 210
    :cond_11
    return-void
.end method

.method public static setDeletePreviewsWhenDetachedFromWindow(Z)V
    .registers 1
    .parameter "value"

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    .line 93
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher2/HolographicOutlineHelper;)V
    .registers 13
    .parameter "info"
    .parameter "maxWidth"
    .parameter "cellSpan"
    .parameter "holoOutlineHelper"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    iput-object p4, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 114
    const v3, 0x7f060010

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .local v1, image:Landroid/widget/ImageView;
    const/4 v3, -0x1

    if-le p2, v3, :cond_13

    .line 116
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 118
    :cond_13
    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    .line 120
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, name:Landroid/widget/TextView;
    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_4f

    .line 124
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, p3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_4f
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/HolographicOutlineHelper;)V
    .registers 13
    .parameter "pm"
    .parameter "info"
    .parameter "holoOutlineHelper"

    .prologue
    const/4 v8, 0x1

    .line 130
    iput-object p3, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 131
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 132
    .local v2, label:Ljava/lang/CharSequence;
    const v4, 0x7f060010

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    .line 135
    const v4, 0x7f06000e

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 136
    .local v3, name:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v4, 0x7f06000f

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, dims:Landroid/widget/TextView;
    if-eqz v0, :cond_45

    .line 139
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_45
    return-void
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V
    .registers 5
    .parameter "preview"
    .parameter "index"

    .prologue
    .line 152
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidgetImageView;

    .line 154
    .local v0, image:Lcom/android/launcher2/PagedViewWidgetImageView;
    if-eqz p1, :cond_19

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidgetImageView;->setAlpha(F)V

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewWidgetImageView;->mAllowRequestLayout:Z

    .line 160
    :cond_19
    return-void
.end method

.method public getPreviewSize()[I
    .registers 6

    .prologue
    .line 144
    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .local v0, i:Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 146
    .local v1, maxSize:[I
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 148
    return-object v1
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 99
    sget-boolean v2, Lcom/android/launcher2/PagedViewWidget;->sDeletePreviewsWhenDetachedFromWindow:Z

    if-eqz v2, :cond_2b

    .line 100
    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, image:Landroid/widget/ImageView;
    if-eqz v0, :cond_2b

    .line 102
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    .line 103
    .local v1, preview:Lcom/android/launcher2/FastBitmapDrawable;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 104
    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    :cond_27
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #preview:Lcom/android/launcher2/FastBitmapDrawable;
    :cond_2b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 181
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    if-lez v0, :cond_a

    .line 182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 186
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    if-lez v0, :cond_4f

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 198
    :cond_4f
    return-void
.end method

.method protected onSetAlpha(I)Z
    .registers 3
    .parameter "alpha"

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .registers 8
    .parameter "alpha"

    .prologue
    const/high16 v5, 0x437f

    .line 213
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-static {p1}, Lcom/android/launcher2/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v3

    .line 214
    .local v3, viewAlpha:F
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-static {p1}, Lcom/android/launcher2/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result v0

    .line 215
    .local v0, holographicAlpha:F
    mul-float v4, v3, v5

    float-to-int v2, v4

    .line 216
    .local v2, newViewAlpha:I
    mul-float v4, v0, v5

    float-to-int v1, v4

    .line 217
    .local v1, newHolographicAlpha:I
    iget v4, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    if-ne v4, v2, :cond_1c

    iget v4, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    if-eq v4, v1, :cond_26

    .line 218
    :cond_1c
    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    .line 219
    iput v1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    .line 220
    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->setChildrenAlpha(F)V

    .line 221
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 223
    :cond_26
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(ZZ)V

    .line 258
    return-void
.end method

.method setChecked(ZZ)V
    .registers 9
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 226
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eq v2, p1, :cond_3c

    .line 227
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    .line 231
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eqz v2, :cond_3d

    .line 232
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 233
    .local v0, alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 240
    .local v1, duration:I
    :goto_e
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_17

    .line 241
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 243
    :cond_17
    if-eqz p2, :cond_42

    .line 244
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 251
    :goto_39
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 253
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_3c
    return-void

    .line 235
    :cond_3d
    const/high16 v0, 0x3f80

    .line 236
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_e

    .line 248
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setAlpha(F)V

    goto :goto_39
.end method

.method public setHolographicOutline(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "holoOutline"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 165
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(Z)V

    .line 268
    return-void

    .line 267
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
