.class public Lcom/google/android/apps/plus/views/PhotoTagAvatarView;
.super Landroid/widget/CompoundButton;
.source "PhotoTagAvatarView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;


# static fields
.field private static sAvatarHeight:Ljava/lang/Integer;

.field private static sAvatarWidth:Ljava/lang/Integer;


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mAvatarInvalidated:Z

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mDrawRect:Landroid/graphics/Rect;

.field private mSubjectId:J

.field private mTagHeight:I

.field private mTagLeft:I

.field private mTagTop:I

.field private mTagWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mDrawRect:Landroid/graphics/Rect;

    .line 61
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 63
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    if-nez v1, :cond_36

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    .line 66
    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    .line 68
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_36
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getDrawableState()[I

    move-result-object v0

    .line 255
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->invalidate()V

    .line 259
    .end local v0           #myDrawableState:[I
    :cond_13
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 272
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 90
    return-void
.end method

.method public onAvatarChanged(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_10

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarInvalidated:Z

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->invalidate()V

    .line 110
    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 99
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_2a

    .line 224
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarInvalidated:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v7, :cond_1c

    .line 225
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarInvalidated:Z

    .line 226
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v8, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v7, p0, v8}, Lcom/google/android/apps/plus/service/AvatarCache;->refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 230
    :cond_1c
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, avatar:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v9, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 245
    .end local v0           #avatar:Landroid/graphics/Bitmap;
    :cond_29
    :goto_29
    return-void

    .line 232
    :cond_2a
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_29

    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v6

    .line 235
    .local v6, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v5

    .line 237
    .local v5, paddingLeft:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagLeft:I

    add-int v2, v7, v5

    .line 238
    .local v2, avatarLeft:I
    iget v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagTop:I

    add-int v4, v7, v6

    .line 239
    .local v4, avatarTop:I
    sget-object v7, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v3, v2, v7

    .line 240
    .local v3, avatarRight:I
    sget-object v7, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v1, v4, v7

    .line 242
    .local v1, avatarBottom:I
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
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
    .line 158
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 161
    .local v4, switchRight:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    sub-int v3, v4, v6

    .line 162
    .local v3, switchLeft:I
    const/4 v5, 0x0

    .line 163
    .local v5, switchTop:I
    const/4 v2, 0x0

    .line 164
    .local v2, switchBottom:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x70

    sparse-switch v6, :sswitch_data_c8

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v5

    .line 168
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    add-int v2, v5, v6

    .line 183
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    sparse-switch v6, :sswitch_data_d2

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v3

    .line 187
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    add-int v4, v3, v6

    .line 202
    :goto_35
    iput v3, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagLeft:I

    .line 203
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagTop:I

    .line 206
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagLeft:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v7

    add-int v0, v6, v7

    .line 207
    .local v0, avatarLeft:I
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagTop:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v7

    add-int v1, v6, v7

    .line 208
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

    .line 210
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6b

    .line 211
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v6, :cond_c1

    .line 212
    iget-object v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v6, p0, v7}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 217
    :cond_6b
    :goto_6b
    return-void

    .line 172
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

    .line 174
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    add-int v2, v5, v6

    .line 175
    goto :goto_24

    .line 178
    :sswitch_87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingBottom()I

    move-result v7

    sub-int v2, v6, v7

    .line 179
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    sub-int v5, v2, v6

    goto :goto_24

    .line 191
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

    .line 193
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    add-int v4, v5, v6

    .line 194
    goto :goto_35

    .line 197
    :sswitch_b1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 198
    iget v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    sub-int v3, v4, v6

    goto/16 :goto_35

    .line 214
    .restart local v0       #avatarLeft:I
    .restart local v1       #avatarTop:I
    :cond_c1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_6b

    .line 164
    nop

    :sswitch_data_c8
    .sparse-switch
        0x10 -> :sswitch_6c
        0x50 -> :sswitch_87
    .end sparse-switch

    .line 183
    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_96
        0x5 -> :sswitch_b1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 131
    iget-wide v8, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_47

    .line 132
    sget-object v8, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarWidth:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    .local v1, avatarWidth:I
    sget-object v8, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->sAvatarHeight:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, avatarHeight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingBottom()I

    move-result v9

    add-int v7, v8, v9

    .line 136
    .local v7, verticalPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getPaddingRight()I

    move-result v9

    add-int v2, v8, v9

    .line 138
    .local v2, horizontalPadding:I
    add-int v6, v2, v1

    .line 139
    .local v6, switchWidth:I
    add-int v5, v7, v0

    .line 145
    .end local v0           #avatarHeight:I
    .end local v1           #avatarWidth:I
    .end local v2           #horizontalPadding:I
    .end local v7           #verticalPadding:I
    .local v5, switchHeight:I
    :goto_2c
    iput v6, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagWidth:I

    .line 146
    iput v5, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mTagHeight:I

    .line 148
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 152
    .local v4, measuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 153
    .local v3, measuredHeight:I
    invoke-virtual {p0, v4, v3}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->setMeasuredDimension(II)V

    .line 154
    return-void

    .line 141
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v5           #switchHeight:I
    .end local v6           #switchWidth:I
    :cond_47
    const/4 v6, 0x0

    .line 142
    .restart local v6       #switchWidth:I
    const/4 v5, 0x0

    .restart local v5       #switchHeight:I
    goto :goto_2c
.end method

.method public setAvatarBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 117
    if-nez p1, :cond_13

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 123
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->invalidate()V

    .line 124
    return-void

    .line 120
    :cond_13
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    goto :goto_f
.end method

.method public setSubjectId(J)V
    .registers 6
    .parameter "subjectId"

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1c

    .line 72
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mSubjectId:J

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1d

    .line 74
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 78
    :goto_17
    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->requestLayout()V

    .line 81
    :cond_1c
    return-void

    .line 76
    :cond_1d
    iput-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagAvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_17
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 263
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
