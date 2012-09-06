.class public abstract Lcom/google/android/apps/plus/views/CardView;
.super Landroid/view/View;
.source "CardView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# static fields
.field protected static sBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field protected static sBottomBorderPadding:I

.field private static sCardViewInitialized:Z

.field protected static sDefaultTextPaint:Landroid/text/TextPaint;

.field protected static sDrawRect:Landroid/graphics/Rect;

.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field protected static sLeftBorderPadding:I

.field protected static sPressedStateBackground:Landroid/graphics/drawable/Drawable;

.field protected static final sResizePaint:Landroid/graphics/Paint;

.field protected static sRightBorderPadding:I

.field protected static sTopBorderPadding:I

.field protected static sXDoublePadding:I

.field protected static sXPadding:I

.field protected static sYDoublePadding:I

.field protected static sYPadding:I


# instance fields
.field protected final mClickableItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/plus/views/ClickableItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field protected mDisplaySizeType:I

.field protected mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mPaddingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/views/CardView;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f0d01af

    const/4 v2, 0x1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v1, -0x2

    iput v1, p0, Lcom/google/android/apps/plus/views/CardView;->mDisplaySizeType:I

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardView;->mClickableItems:Ljava/util/Set;

    .line 69
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/CardView;->mPaddingEnabled:Z

    .line 91
    sget-boolean v1, Lcom/google/android/apps/plus/views/CardView;->sCardViewInitialized:Z

    if-nez v1, :cond_b7

    .line 92
    sput-boolean v2, Lcom/google/android/apps/plus/views/CardView;->sCardViewInitialized:Z

    .line 94
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    .line 99
    sget-object v1, Lcom/google/android/apps/plus/views/CardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 100
    sget-object v1, Lcom/google/android/apps/plus/views/CardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 101
    sget-object v1, Lcom/google/android/apps/plus/views/CardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 102
    sget-object v1, Lcom/google/android/apps/plus/views/CardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 103
    sget-object v1, Lcom/google/android/apps/plus/views/CardView;->sDefaultTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 106
    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/views/CardView;->sBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 107
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CardView;->sPressedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 109
    const v1, 0x7f0d01a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sLeftBorderPadding:I

    .line 110
    const v1, 0x7f0d01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sRightBorderPadding:I

    .line 111
    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sTopBorderPadding:I

    .line 112
    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sBottomBorderPadding:I

    .line 113
    const v1, 0x7f0d01ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sXPadding:I

    .line 114
    sget v1, Lcom/google/android/apps/plus/views/CardView;->sXPadding:I

    mul-int/lit8 v1, v1, 0x2

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sXDoublePadding:I

    .line 115
    const v1, 0x7f0d01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sYPadding:I

    .line 116
    sget v1, Lcom/google/android/apps/plus/views/CardView;->sYPadding:I

    mul-int/lit8 v1, v1, 0x2

    sput v1, Lcom/google/android/apps/plus/views/CardView;->sYDoublePadding:I

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/CardView;->sDrawRect:Landroid/graphics/Rect;

    .line 119
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_b7
    return-void
.end method


# virtual methods
.method public addClickableItem(Lcom/google/android/apps/plus/views/ClickableItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 253
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 255
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_74

    move v5, v6

    .line 296
    :cond_15
    :goto_15
    return v5

    .line 257
    :pswitch_16
    iget-object v7, p0, Lcom/google/android/apps/plus/views/CardView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 258
    .local v2, item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v2, v3, v4, v6}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 259
    iput-object v2, p0, Lcom/google/android/apps/plus/views/CardView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 260
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->invalidate()V

    goto :goto_15

    .line 268
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :pswitch_34
    iput-object v8, p0, Lcom/google/android/apps/plus/views/CardView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, handled:Z
    iget-object v7, p0, Lcom/google/android/apps/plus/views/CardView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/ClickableItem;

    .line 271
    .restart local v2       #item:Lcom/google/android/apps/plus/views/ClickableItem;
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    move-result v7

    or-int/2addr v0, v7

    goto :goto_3d

    .line 273
    .end local v2           #item:Lcom/google/android/apps/plus/views/ClickableItem;
    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->invalidate()V

    .line 274
    if-nez v0, :cond_5d

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_5d

    .line 275
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v5, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5d
    move v5, v6

    .line 277
    goto :goto_15

    .line 281
    .end local v0           #handled:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_5f
    iget-object v7, p0, Lcom/google/android/apps/plus/views/CardView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v7, :cond_6f

    .line 282
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CardView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v7, 0x3

    invoke-interface {v6, v3, v4, v7}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 283
    iput-object v8, p0, Lcom/google/android/apps/plus/views/CardView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->invalidate()V

    goto :goto_15

    :cond_6f
    move v5, v6

    .line 287
    goto :goto_15

    :pswitch_71
    move v5, v6

    .line 292
    goto :goto_15

    .line 255
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_16
        :pswitch_34
        :pswitch_71
        :pswitch_5f
    .end packed-switch
.end method

.method protected abstract draw(Landroid/graphics/Canvas;IIII)I
.end method

.method public init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V
    .registers 8
    .parameter "cursor"
    .parameter "displaySizeType"
    .parameter "size"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewedListener"
    .parameter "plusBarClickListener"

    .prologue
    .line 128
    iput p2, p0, Lcom/google/android/apps/plus/views/CardView;->mDisplaySizeType:I

    .line 129
    iput-object p4, p0, Lcom/google/android/apps/plus/views/CardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 130
    iput-object p5, p0, Lcom/google/android/apps/plus/views/CardView;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 131
    return-void
.end method

.method protected abstract layoutElements(IIII)I
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->onStart()V

    .line 210
    return-void
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "gaiaId"

    .prologue
    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->onStop()V

    .line 216
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->getWidth()I

    move-result v7

    .line 184
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->getHeight()I

    move-result v6

    .line 186
    .local v6, height:I
    const/4 v9, 0x0

    .line 187
    .local v9, xPadding:I
    const/4 v11, 0x0

    .line 188
    .local v11, yPadding:I
    const/4 v8, 0x0

    .line 189
    .local v8, xDoublePadding:I
    const/4 v10, 0x0

    .line 191
    .local v10, yDoublePadding:I
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CardView;->mPaddingEnabled:Z

    if-eqz v0, :cond_1c

    .line 192
    sget v9, Lcom/google/android/apps/plus/views/CardView;->sXPadding:I

    .line 193
    sget v11, Lcom/google/android/apps/plus/views/CardView;->sYPadding:I

    .line 194
    sget v8, Lcom/google/android/apps/plus/views/CardView;->sXDoublePadding:I

    .line 195
    sget v10, Lcom/google/android/apps/plus/views/CardView;->sYDoublePadding:I

    .line 198
    :cond_1c
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1, v1, v7, v6}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 199
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    sget v0, Lcom/google/android/apps/plus/views/CardView;->sLeftBorderPadding:I

    add-int v2, v0, v9

    sget v0, Lcom/google/android/apps/plus/views/CardView;->sTopBorderPadding:I

    add-int v3, v0, v11

    sget v0, Lcom/google/android/apps/plus/views/CardView;->sLeftBorderPadding:I

    add-int/2addr v0, v8

    sget v1, Lcom/google/android/apps/plus/views/CardView;->sRightBorderPadding:I

    add-int/2addr v0, v1

    sub-int v4, v7, v0

    sget v0, Lcom/google/android/apps/plus/views/CardView;->sTopBorderPadding:I

    add-int/2addr v0, v10

    sget v1, Lcom/google/android/apps/plus/views/CardView;->sBottomBorderPadding:I

    add-int/2addr v0, v1

    sub-int v5, v6, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/CardView;->draw(Landroid/graphics/Canvas;IIII)I

    .line 204
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 157
    .local v2, widthDimension:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 158
    .local v1, heightDimensionArg:I
    if-gtz v1, :cond_38

    move v0, v2

    .line 160
    .local v0, heightDimension:I
    :goto_b
    const/4 v4, 0x0

    .line 161
    .local v4, xPadding:I
    const/4 v6, 0x0

    .line 162
    .local v6, yPadding:I
    const/4 v3, 0x0

    .line 163
    .local v3, xDoublePadding:I
    const/4 v5, 0x0

    .line 165
    .local v5, yDoublePadding:I
    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/CardView;->mPaddingEnabled:Z

    if-eqz v7, :cond_1b

    .line 166
    sget v4, Lcom/google/android/apps/plus/views/CardView;->sXPadding:I

    .line 167
    sget v6, Lcom/google/android/apps/plus/views/CardView;->sYPadding:I

    .line 168
    sget v3, Lcom/google/android/apps/plus/views/CardView;->sXDoublePadding:I

    .line 169
    sget v5, Lcom/google/android/apps/plus/views/CardView;->sYDoublePadding:I

    .line 172
    :cond_1b
    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/views/CardView;->setMeasuredDimension(II)V

    .line 174
    sget v7, Lcom/google/android/apps/plus/views/CardView;->sLeftBorderPadding:I

    add-int/2addr v7, v4

    sget v8, Lcom/google/android/apps/plus/views/CardView;->sTopBorderPadding:I

    add-int/2addr v8, v6

    sget v9, Lcom/google/android/apps/plus/views/CardView;->sLeftBorderPadding:I

    add-int/2addr v9, v3

    sget v10, Lcom/google/android/apps/plus/views/CardView;->sRightBorderPadding:I

    add-int/2addr v9, v10

    sub-int v9, v2, v9

    sget v10, Lcom/google/android/apps/plus/views/CardView;->sTopBorderPadding:I

    add-int/2addr v10, v5

    sget v11, Lcom/google/android/apps/plus/views/CardView;->sBottomBorderPadding:I

    add-int/2addr v10, v11

    sub-int v10, v0, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/google/android/apps/plus/views/CardView;->layoutElements(IIII)I

    .line 177
    return-void

    .end local v0           #heightDimension:I
    .end local v3           #xDoublePadding:I
    .end local v4           #xPadding:I
    .end local v5           #yDoublePadding:I
    .end local v6           #yPadding:I
    :cond_38
    move v0, v1

    .line 158
    goto :goto_b
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 227
    return-void
.end method

.method public onRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 148
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 149
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 150
    iput-object v1, p0, Lcom/google/android/apps/plus/views/CardView;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardView;->clearAnimation()V

    .line 152
    return-void
.end method

.method public onRemoteImageChanged(Lcom/google/android/apps/plus/content/ImageRequest;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "request"
    .parameter "bitmap"

    .prologue
    .line 231
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 135
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 136
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerRemoteImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;)V

    .line 137
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 140
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 141
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 142
    sget-object v0, Lcom/google/android/apps/plus/views/CardView;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/service/ImageCache;->unregisterRemoteImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;)V

    .line 143
    return-void
.end method

.method public removeClickableItem(Lcom/google/android/apps/plus/views/ClickableItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CardView;->mClickableItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public setPaddingEnabled(Z)V
    .registers 2
    .parameter "enablePadding"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CardView;->mPaddingEnabled:Z

    .line 123
    return-void
.end method
