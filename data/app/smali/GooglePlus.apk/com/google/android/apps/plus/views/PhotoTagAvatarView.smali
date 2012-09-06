.class public Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
.super Landroid/widget/CompoundButton;
.source "PhotoTagAvatarView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;


# static fields
.field private static sAvatarHeight:Ljava/lang/Integer;

.field private static sAvatarWidth:Ljava/lang/Integer;


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarInvalidated:Z

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mDrawRect:Landroid/graphics/Rect;

.field private mSubjectGaiaId:Ljava/lang/String;

.field private mTagHeight:I

.field private mTagLeft:I

.field private mTagTop:I

.field private mTagWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mDrawRect:Landroid/graphics/Rect;

    .line 63
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 65
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    if-nez v1, :cond_36

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    .line 68
    const v1, 0x7f0d00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    .line 70
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_36
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 254
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 255
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getDrawableState()[I

    move-result-object v0

    .line 258
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 260
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->invalidate()V

    .line 262
    .end local v0           #myDrawableState:[I
    :cond_13
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 275
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 92
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 108
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectGaiaId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_18

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarInvalidated:Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->invalidate()V

    .line 113
    :cond_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 101
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_2a

    .line 227
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarInvalidated:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v7, :cond_1c

    .line 228
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarInvalidated:Z

    .line 229
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v8, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v7, p0, v8}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 233
    :cond_1c
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, avatar:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v9, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 248
    .end local v0           #avatar:Landroid/graphics/Bitmap;
    :cond_29
    :goto_29
    return-void

    .line 235
    :cond_2a
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_29

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v6

    .line 238
    .local v6, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v5

    .line 240
    .local v5, paddingLeft:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagLeft:I

    add-int v2, v7, v5

    .line 241
    .local v2, avatarLeft:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagTop:I

    add-int v4, v7, v6

    .line 242
    .local v4, avatarTop:I
    sget-object v7, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v3, v2, v7

    .line 243
    .local v3, avatarRight:I
    sget-object v7, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v1, v4, v7

    .line 245
    .local v1, avatarBottom:I
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_29
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 161
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 164
    .local v4, switchRight:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    sub-int v3, v4, v6

    .line 165
    .local v3, switchLeft:I
    const/4 v5, 0x0

    .line 166
    .local v5, switchTop:I
    const/4 v2, 0x0

    .line 167
    .local v2, switchBottom:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x70

    sparse-switch v6, :sswitch_data_c8

    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v5

    .line 171
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    add-int v2, v5, v6

    .line 186
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    sparse-switch v6, :sswitch_data_d2

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v3

    .line 190
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    add-int v4, v3, v6

    .line 205
    :goto_35
    iput v3, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagLeft:I

    .line 206
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagTop:I

    .line 209
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagLeft:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v7

    add-int v0, v6, v7

    .line 210
    .local v0, avatarLeft:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagTop:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v7

    add-int v1, v6, v7

    .line 211
    .local v1, avatarTop:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mDrawRect:Landroid/graphics/Rect;

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v0

    sget-object v8, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6b

    .line 214
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v6, :cond_c1

    .line 215
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v6, p0, v7}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 220
    :cond_6b
    :goto_6b
    return-void

    .line 175
    .end local v0           #avatarLeft:I
    .end local v1           #avatarTop:I
    :sswitch_6c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 177
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    add-int v2, v5, v6

    .line 178
    goto :goto_24

    .line 181
    :sswitch_87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingBottom()I

    move-result v7

    sub-int v2, v6, v7

    .line 182
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    sub-int v5, v2, v6

    goto :goto_24

    .line 194
    :sswitch_96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 196
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    add-int v4, v5, v6

    .line 197
    goto :goto_35

    .line 200
    :sswitch_b1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 201
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    sub-int v3, v4, v6

    goto/16 :goto_35

    .line 217
    .restart local v0       #avatarLeft:I
    .restart local v1       #avatarTop:I
    :cond_c1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_6b

    .line 167
    nop

    :sswitch_data_c8
    .sparse-switch
        0x10 -> :sswitch_6c
        0x50 -> :sswitch_87
    .end sparse-switch

    .line 186
    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_96
        0x5 -> :sswitch_b1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 134
    iget-object v8, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectGaiaId:Ljava/lang/String;

    if-eqz v8, :cond_43

    .line 135
    sget-object v8, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    .local v1, avatarWidth:I
    sget-object v8, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 138
    .local v0, avatarHeight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingBottom()I

    move-result v9

    add-int v7, v8, v9

    .line 139
    .local v7, verticalPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v9

    add-int v2, v8, v9

    .line 141
    .local v2, horizontalPadding:I
    add-int v6, v2, v1

    .line 142
    .local v6, switchWidth:I
    add-int v5, v7, v0

    .line 148
    .end local v0           #avatarHeight:I
    .end local v1           #avatarWidth:I
    .end local v2           #horizontalPadding:I
    .end local v7           #verticalPadding:I
    .local v5, switchHeight:I
    :goto_28
    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    .line 149
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    .line 151
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 155
    .local v4, measuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 156
    .local v3, measuredHeight:I
    invoke-virtual {p0, v4, v3}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setMeasuredDimension(II)V

    .line 157
    return-void

    .line 144
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v5           #switchHeight:I
    .end local v6           #switchWidth:I
    :cond_43
    const/4 v6, 0x0

    .line 145
    .restart local v6       #switchWidth:I
    const/4 v5, 0x0

    .restart local v5       #switchHeight:I
    goto :goto_28
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 120
    if-nez p1, :cond_15

    .line 121
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 126
    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->invalidate()V

    .line 127
    return-void

    .line 123
    :cond_15
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method public setSubjectGaiaId(Ljava/lang/String;)V
    .registers 5
    .parameter "subjectGaiaId"

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectGaiaId:Ljava/lang/String;

    .line 75
    if-eqz p1, :cond_1b

    .line 76
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 80
    :goto_15
    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->requestLayout()V

    .line 83
    :cond_1a
    return-void

    .line 78
    :cond_1b
    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_15
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
