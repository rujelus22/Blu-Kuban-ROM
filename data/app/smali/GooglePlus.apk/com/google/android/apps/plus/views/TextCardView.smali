.class public Lcom/google/android/apps/plus/views/TextCardView;
.super Lcom/google/android/apps/plus/views/StreamCardView;
.source "TextCardView.java"


# instance fields
.field private mWrapContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/TextCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 11
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/TextCardView;->drawAuthorImage(Landroid/graphics/Canvas;II)V

    .line 148
    sget v1, Lcom/google/android/apps/plus/views/TextCardView;->sAvatarSize:I

    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sContentXPadding:I

    add-int/2addr v1, v2

    add-int/2addr p2, v1

    .line 149
    sget v1, Lcom/google/android/apps/plus/views/TextCardView;->sAvatarSize:I

    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sContentXPadding:I

    add-int/2addr v1, v2

    sub-int/2addr p4, v1

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/TextCardView;->drawAuthorName(Landroid/graphics/Canvas;II)I

    move-result p3

    .line 152
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_2e

    .line 153
    add-int v1, p2, p4

    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mRelativeTimeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int v2, p3, v2

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sRelativeTimeYOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/apps/plus/views/TextCardView;->drawRelativeTimeLayout(Landroid/graphics/Canvas;II)I

    .line 157
    :cond_2e
    sget v1, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr p3, v1

    .line 159
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContentLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_50

    .line 160
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 162
    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 166
    :cond_50
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6f

    .line 167
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 169
    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 173
    :cond_6f
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8e

    .line 174
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 176
    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 180
    :cond_8e
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_c4

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a9

    .line 182
    sget v1, Lcom/google/android/apps/plus/views/TextCardView;->sTagIconYPadding:I

    add-int v0, p3, v1

    .line 183
    .local v0, iconY:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagIcon:Landroid/graphics/Bitmap;

    int-to-float v2, p2

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    .line 186
    .end local v0           #iconY:I
    :cond_a9
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 188
    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 192
    :cond_c4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/TextCardView;->drawPlusOneBar(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/TextCardView;->drawWhatsHot(Landroid/graphics/Canvas;)V

    .line 194
    return p5
.end method

.method protected formatLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "locationName"

    .prologue
    .line 200
    return-object p1
.end method

.method protected layoutElements(IIII)I
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 74
    add-int v2, p2, p4

    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/apps/plus/views/TextCardView;->createPlusOneBar(III)I

    .line 75
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr p4, v2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/TextCardView;->setAuthorImagePosition(II)V

    .line 79
    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentXPadding:I

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 80
    sget v2, Lcom/google/android/apps/plus/views/TextCardView;->sAvatarSize:I

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentXPadding:I

    add-int/2addr v2, v3

    sub-int/2addr p3, v2

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/TextCardView;->createAuthorNameAndRelativeTimeLayoutOnSameLine(III)I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int p2, v2, v3

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContent:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 85
    sub-int v2, p4, p2

    sget-object v3, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sget-object v4, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int v0, v2, v3

    .line 87
    .local v0, maxLines:I
    if-lez v0, :cond_57

    .line 88
    sget-object v2, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContent:Ljava/lang/CharSequence;

    invoke-static {v2, v3, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContentLayout:Landroid/text/StaticLayout;

    .line 90
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 94
    .end local v0           #maxLines:I
    :cond_57
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttribution:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 95
    sub-int v2, p4, p2

    sget-object v3, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sget-object v4, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int v0, v2, v3

    .line 97
    .restart local v0       #maxLines:I
    if-lez v0, :cond_87

    .line 98
    sget-object v2, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttribution:Ljava/lang/CharSequence;

    invoke-static {v2, v3, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    .line 100
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mAttributionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 104
    .end local v0           #maxLines:I
    :cond_87
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContent:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 105
    sub-int v2, p4, p2

    sget-object v3, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sget-object v4, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int v0, v2, v3

    .line 107
    .restart local v0       #maxLines:I
    if-lez v0, :cond_b7

    .line 108
    sget-object v2, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContent:Ljava/lang/CharSequence;

    invoke-static {v2, v3, p3, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    .line 110
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mFillerContentLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 115
    .end local v0           #maxLines:I
    :cond_b7
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTag:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 116
    sub-int v2, p4, p2

    sget-object v3, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sget-object v4, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int v0, v2, v3

    .line 118
    .restart local v0       #maxLines:I
    if-lez v0, :cond_f6

    .line 119
    sget-object v2, Lcom/google/android/apps/plus/views/TextCardView;->sTagLocationBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagIcon:Landroid/graphics/Bitmap;

    .line 120
    sget-object v2, Lcom/google/android/apps/plus/views/TextCardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTag:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p3, v4

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/apps/plus/util/TextPaintUtils;->createConstrainedStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagLayout:Landroid/text/StaticLayout;

    .line 122
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mTagLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/TextCardView;->sContentYPadding:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 126
    .end local v0           #maxLines:I
    :cond_f6
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mWrapContent:Z

    if-eqz v2, :cond_123

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 128
    .local v1, r:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 130
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v2, :cond_114

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 132
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 135
    :cond_114
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v2, :cond_123

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 137
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 141
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_123
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TextCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    return v2
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 38
    .local v3, widthDimension:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 39
    .local v1, heightDimensionArg:I
    if-gtz v1, :cond_49

    const/4 v8, 0x1

    :goto_b
    iput-boolean v8, p0, Lcom/google/android/apps/plus/views/TextCardView;->mWrapContent:Z

    .line 40
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/TextCardView;->mWrapContent:Z

    if-eqz v8, :cond_4b

    move v0, v3

    .line 42
    .local v0, heightDimension:I
    :goto_12
    const/4 v5, 0x0

    .line 43
    .local v5, xPadding:I
    const/4 v7, 0x0

    .line 44
    .local v7, yPadding:I
    const/4 v4, 0x0

    .line 45
    .local v4, xDoublePadding:I
    const/4 v6, 0x0

    .line 47
    .local v6, yDoublePadding:I
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/TextCardView;->mPaddingEnabled:Z

    if-eqz v8, :cond_22

    .line 48
    sget v5, Lcom/google/android/apps/plus/views/TextCardView;->sXPadding:I

    .line 49
    sget v7, Lcom/google/android/apps/plus/views/TextCardView;->sYPadding:I

    .line 50
    sget v4, Lcom/google/android/apps/plus/views/TextCardView;->sXDoublePadding:I

    .line 51
    sget v6, Lcom/google/android/apps/plus/views/TextCardView;->sYDoublePadding:I

    .line 54
    :cond_22
    sget v8, Lcom/google/android/apps/plus/views/TextCardView;->sLeftBorderPadding:I

    add-int/2addr v8, v5

    sget v9, Lcom/google/android/apps/plus/views/TextCardView;->sTopBorderPadding:I

    add-int/2addr v9, v7

    sget v10, Lcom/google/android/apps/plus/views/TextCardView;->sLeftBorderPadding:I

    add-int/2addr v10, v4

    sget v11, Lcom/google/android/apps/plus/views/TextCardView;->sRightBorderPadding:I

    add-int/2addr v10, v11

    sub-int v10, v3, v10

    sget v11, Lcom/google/android/apps/plus/views/TextCardView;->sTopBorderPadding:I

    add-int/2addr v11, v6

    sget v12, Lcom/google/android/apps/plus/views/TextCardView;->sBottomBorderPadding:I

    add-int/2addr v11, v12

    sub-int v11, v0, v11

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/google/android/apps/plus/views/TextCardView;->layoutElements(IIII)I

    move-result v2

    .line 59
    .local v2, measuredHeight:I
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/TextCardView;->mWrapContent:Z

    if-eqz v8, :cond_4d

    .line 60
    add-int v8, v2, v7

    sget v9, Lcom/google/android/apps/plus/views/TextCardView;->sBottomBorderPadding:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v3, v8}, Lcom/google/android/apps/plus/views/TextCardView;->setMeasuredDimension(II)V

    .line 64
    :goto_48
    return-void

    .line 39
    .end local v0           #heightDimension:I
    .end local v2           #measuredHeight:I
    .end local v4           #xDoublePadding:I
    .end local v5           #xPadding:I
    .end local v6           #yDoublePadding:I
    .end local v7           #yPadding:I
    :cond_49
    const/4 v8, 0x0

    goto :goto_b

    :cond_4b
    move v0, v1

    .line 40
    goto :goto_12

    .line 62
    .restart local v0       #heightDimension:I
    .restart local v2       #measuredHeight:I
    .restart local v4       #xDoublePadding:I
    .restart local v5       #xPadding:I
    .restart local v6       #yDoublePadding:I
    .restart local v7       #yPadding:I
    :cond_4d
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/views/TextCardView;->setMeasuredDimension(II)V

    goto :goto_48
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onRecycle()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/TextCardView;->mWrapContent:Z

    .line 70
    return-void
.end method
