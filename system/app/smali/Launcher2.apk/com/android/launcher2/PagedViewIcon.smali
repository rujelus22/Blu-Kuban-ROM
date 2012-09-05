.class public Lcom/android/launcher2/PagedViewIcon;
.super Landroid/widget/TextView;
.source "PagedViewIcon.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"


# instance fields
.field private mAlpha:I

.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mCheckedOutline:Landroid/graphics/Bitmap;

.field private mHolographicAlpha:I

.field private mHolographicOutline:Landroid/graphics/Bitmap;

.field private mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field mHolographicOutlineView:Lcom/android/launcher2/HolographicPagedViewIcon;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIsChecked:Z

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f090003

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    .line 45
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    .line 50
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlpha:F

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 71
    .local v0, alpha:I
    if-lez v0, :cond_3b

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlpha:F

    .line 73
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeInDuration:I

    .line 75
    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeOutDuration:I

    .line 79
    :cond_3b
    new-instance v2, Lcom/android/launcher2/HolographicPagedViewIcon;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher2/HolographicPagedViewIcon;-><init>(Landroid/content/Context;Lcom/android/launcher2/PagedViewIcon;)V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutlineView:Lcom/android/launcher2/HolographicPagedViewIcon;

    .line 80
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/HolographicOutlineHelper;)V
    .registers 7
    .parameter "info"
    .parameter "scaleUp"
    .parameter "holoOutlineHelper"

    .prologue
    const/4 v2, 0x0

    .line 92
    iput-object p3, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 93
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 94
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/launcher2/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method protected getHolographicOutline()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutlineView:Lcom/android/launcher2/HolographicPagedViewIcon;

    return-object v0
.end method

.method public invalidateCheckedImage()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    .line 122
    :cond_c
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 126
    iget v5, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    if-lez v5, :cond_7

    .line 127
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_7
    const/4 v4, 0x0

    .line 133
    .local v4, overlay:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_15

    .line 134
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    iget-object v4, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    .line 138
    :cond_15
    if-eqz v4, :cond_3e

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getScrollX()I

    move-result v3

    .line 140
    .local v3, offset:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getCompoundPaddingLeft()I

    move-result v0

    .line 141
    .local v0, compoundPaddingLeft:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getCompoundPaddingRight()I

    move-result v1

    .line 142
    .local v1, compoundPaddingRight:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int v2, v5, v0

    .line 143
    .local v2, hspace:I
    add-int v5, v3, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/PagedViewIcon;->mPaddingTop:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    .end local v0           #compoundPaddingLeft:I
    .end local v1           #compoundPaddingRight:I
    .end local v2           #hspace:I
    .end local v3           #offset:I
    :cond_3e
    return-void
.end method

.method public setAlpha(F)V
    .registers 8
    .parameter "alpha"

    .prologue
    const/high16 v5, 0x437f

    .line 106
    invoke-static {p1}, Lcom/android/launcher2/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v3

    .line 107
    .local v3, viewAlpha:F
    invoke-static {p1}, Lcom/android/launcher2/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result v0

    .line 108
    .local v0, holographicAlpha:F
    mul-float v4, v3, v5

    float-to-int v2, v4

    .line 109
    .local v2, newViewAlpha:I
    mul-float v4, v0, v5

    float-to-int v1, v4

    .line 110
    .local v1, newHolographicAlpha:I
    iget v4, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    if-ne v4, v2, :cond_18

    iget v4, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicAlpha:I

    if-eq v4, v1, :cond_1f

    .line 111
    :cond_18
    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    .line 112
    iput v1, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicAlpha:I

    .line 113
    invoke-super {p0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 115
    :cond_1f
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;->setChecked(ZZ)V

    .line 188
    return-void
.end method

.method setChecked(ZZ)V
    .registers 9
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 156
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    if-eq v2, p1, :cond_3c

    .line 157
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    .line 161
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    if-eqz v2, :cond_3d

    .line 162
    iget v0, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlpha:F

    .line 163
    .local v0, alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeInDuration:I

    .line 170
    .local v1, duration:I
    :goto_e
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_17

    .line 171
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 173
    :cond_17
    if-eqz p2, :cond_42

    .line 174
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 181
    :goto_39
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->invalidate()V

    .line 183
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_3c
    return-void

    .line 165
    :cond_3d
    const/high16 v0, 0x3f80

    .line 166
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_e

    .line 178
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setAlpha(F)V

    goto :goto_39
.end method

.method public setHolographicOutline(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "holoOutline"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HolographicPagedViewIcon;->invalidate()V

    .line 102
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setChecked(Z)V

    .line 193
    return-void

    .line 192
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
