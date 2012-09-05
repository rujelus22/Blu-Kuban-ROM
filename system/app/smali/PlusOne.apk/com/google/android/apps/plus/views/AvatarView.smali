.class public Lcom/google/android/apps/plus/views/AvatarView;
.super Landroid/view/View;
.source "AvatarView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;
.implements Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;


# instance fields
.field private mAvatarBitmap:Landroid/graphics/Bitmap;

.field private final mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mAvatarInvalidated:Z

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mAvatarSize:I

.field private mContactId:J

.field private mResizePaint:Landroid/graphics/Paint;

.field private mResizeRect:Landroid/graphics/Rect;

.field private mResizeRequired:Z

.field private mSizeInPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {p1}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 51
    if-eqz p2, :cond_28

    .line 52
    const/4 v1, 0x0

    const-string v2, "size"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, size:Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing \'size\' attribute"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1c
    invoke-static {v0}, Lcom/google/android/apps/plus/content/AvatarRequest;->sizeFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    .line 62
    .end local v0           #size:Ljava/lang/String;
    :goto_22
    iget v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setAvatarSize(I)V

    .line 63
    return-void

    .line 59
    :cond_28
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    goto :goto_22
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 119
    return-void
.end method

.method public onAvatarChanged(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mContactId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_10

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarInvalidated:Z

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->invalidate()V

    .line 139
    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 128
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 213
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarInvalidated:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_14

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarInvalidated:Z

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 218
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 219
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRequired:Z

    if-eqz v0, :cond_26

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    :cond_25
    :goto_25
    return-void

    .line 222
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_25
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 172
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_13

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 180
    :cond_12
    :goto_12
    return-void

    .line 177
    :cond_13
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_12
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 146
    iget v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    .line 147
    .local v1, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 148
    .local v2, widthMode:I
    const/high16 v3, 0x4000

    if-eq v2, v3, :cond_f

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_17

    .line 149
    :cond_f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 153
    :cond_17
    iget v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    .local v0, height:I
    iget v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    if-eq v1, v3, :cond_44

    const/4 v3, 0x1

    :goto_22
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRequired:Z

    .line 156
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRequired:Z

    if-eqz v3, :cond_40

    .line 157
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_3b

    .line 158
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizePaint:Landroid/graphics/Paint;

    .line 159
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRect:Landroid/graphics/Rect;

    .line 161
    :cond_3b
    iget-object v3, p0, Lcom/google/android/apps/plus/views/AvatarView;->mResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 164
    :cond_40
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/views/AvatarView;->setMeasuredDimension(II)V

    .line 165
    return-void

    :cond_44
    move v3, v4

    .line 155
    goto :goto_22
.end method

.method public setAvatarBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 187
    if-nez p1, :cond_2c

    .line 188
    iget v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    packed-switch v0, :pswitch_data_30

    .line 205
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->invalidate()V

    .line 206
    return-void

    .line 190
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 194
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 198
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 202
    :cond_2c
    iput-object p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    .line 188
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_b
        :pswitch_16
        :pswitch_21
    .end packed-switch
.end method

.method public setAvatarSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 71
    iput p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    .line 72
    iget v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    packed-switch v0, :pswitch_data_28

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    .line 86
    :goto_11
    return-void

    .line 74
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    goto :goto_11

    .line 78
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mSizeInPixels:I

    goto :goto_11

    .line 72
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method public setContactId(J)V
    .registers 6
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mContactId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1d

    .line 97
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mContactId:J

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1e

    .line 99
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget v1, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarSize:I

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 103
    :goto_18
    iput-object v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AvatarView;->requestLayout()V

    .line 106
    :cond_1d
    return-void

    .line 101
    :cond_1e
    iput-object v2, p0, Lcom/google/android/apps/plus/views/AvatarView;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    goto :goto_18
.end method
