.class public Lcom/google/android/apps/plus/views/ClickableButton;
.super Ljava/lang/Object;
.source "ClickableButton.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;
    }
.end annotation


# static fields
.field private static sBitmapTextXSpacing:I

.field private static sClickableButtonInitialized:Z

.field private static sTextXPadding:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClicked:Z

.field private mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mContext:Landroid/content/Context;

.field private mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

.field private mRect:Landroid/graphics/Rect;

.field private mTextLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V
    .registers 18
    .parameter "context"
    .parameter "bitmap"
    .parameter "defaultBackground"
    .parameter "clickedBackground"
    .parameter "listener"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 63
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V
    .registers 27
    .parameter "context"
    .parameter "bitmap"
    .parameter "text"
    .parameter "textPaint"
    .parameter "defaultBackground"
    .parameter "clickedBackground"
    .parameter "listener"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-boolean v2, Lcom/google/android/apps/plus/views/ClickableButton;->sClickableButtonInitialized:Z

    if-nez v2, :cond_22

    .line 101
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/apps/plus/views/ClickableButton;->sClickableButtonInitialized:Z

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 104
    .local v15, res:Landroid/content/res/Resources;
    const v2, 0x7f0d0068

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/ClickableButton;->sTextXPadding:I

    .line 105
    const v2, 0x7f0d006a

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/ClickableButton;->sBitmapTextXSpacing:I

    .line 109
    .end local v15           #res:Landroid/content/res/Resources;
    :cond_22
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/ClickableButton;->mContext:Landroid/content/Context;

    .line 110
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 111
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/ClickableButton;->mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 112
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/ClickableButton;->mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 113
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    .line 115
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v12

    .line 116
    .local v12, bgWidth:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v11

    .line 117
    .local v11, bgHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_86

    if-eqz p3, :cond_86

    sget v10, Lcom/google/android/apps/plus/views/ClickableButton;->sBitmapTextXSpacing:I

    .line 120
    .local v10, additionalXSpacing:I
    :goto_52
    if-nez p3, :cond_88

    .line 121
    const/16 v16, 0x0

    .local v16, textHeight:I
    move/from16 v5, v16

    .line 129
    .local v5, textWidth:I
    :goto_58
    if-nez p2, :cond_ad

    const/4 v14, 0x0

    .line 130
    .local v14, bitmapWidth:I
    :goto_5b
    if-nez p2, :cond_b2

    const/4 v13, 0x0

    .line 132
    .local v13, bitmapHeight:I
    :goto_5e
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v5, v14

    add-int/2addr v3, v10

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v3, v3, p8

    sget v4, Lcom/google/android/apps/plus/views/ClickableButton;->sTextXPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, v4, p9

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    .line 134
    return-void

    .line 117
    .end local v5           #textWidth:I
    .end local v10           #additionalXSpacing:I
    .end local v13           #bitmapHeight:I
    .end local v14           #bitmapWidth:I
    .end local v16           #textHeight:I
    :cond_86
    const/4 v10, 0x0

    goto :goto_52

    .line 123
    .restart local v10       #additionalXSpacing:I
    :cond_88
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v5, v2

    .line 124
    .restart local v5       #textWidth:I
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v16

    .restart local v16       #textHeight:I
    goto :goto_58

    .line 129
    :cond_ad
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    goto :goto_5b

    .line 130
    .restart local v14       #bitmapWidth:I
    :cond_b2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    goto :goto_5e
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V
    .registers 19
    .parameter "context"
    .parameter "text"
    .parameter "textPaint"
    .parameter "defaultBackground"
    .parameter "clickedBackground"
    .parameter "listener"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    .line 82
    return-void
.end method


# virtual methods
.method public createAbsoluteCoordinatesCopy(II)Lcom/google/android/apps/plus/views/ClickableButton;
    .registers 13
    .parameter "viewX"
    .parameter "viewY"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1f

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, text:Ljava/lang/String;
    const/4 v4, 0x0

    .line 240
    .local v4, textPaint:Landroid/text/TextPaint;
    :goto_6
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableButton;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, p1

    iget-object v9, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    return-object v0

    .line 236
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #textPaint:Landroid/text/TextPaint;
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3       #text:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .restart local v4       #textPaint:Landroid/text/TextPaint;
    goto :goto_6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    if-eqz v6, :cond_7f

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 143
    .local v0, background:Landroid/graphics/drawable/NinePatchDrawable;
    :goto_7
    if-eqz v0, :cond_11

    .line 144
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    :cond_11
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_82

    move v1, v5

    .line 149
    .local v1, bitmapWidth:I
    :goto_16
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v6, :cond_89

    move v2, v5

    .line 151
    .local v2, textWidth:I
    :goto_1b
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 153
    .local v3, x:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_54

    .line 154
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 155
    .local v4, y:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v7, v3

    int-to-float v8, v4

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v6, :cond_52

    sget v5, Lcom/google/android/apps/plus/views/ClickableButton;->sBitmapTextXSpacing:I

    :cond_52
    add-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 159
    .end local v4           #y:I
    :cond_54
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v5, :cond_7e

    .line 160
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 161
    .restart local v4       #y:I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 162
    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 163
    neg-int v5, v3

    int-to-float v5, v5

    neg-int v6, v4

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    .end local v4           #y:I
    :cond_7e
    return-void

    .line 142
    .end local v0           #background:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v1           #bitmapWidth:I
    .end local v2           #textWidth:I
    .end local v3           #x:I
    :cond_7f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_7

    .line 148
    .restart local v0       #background:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_82
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_16

    .line 149
    .restart local v1       #bitmapWidth:I
    :cond_89
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    goto :goto_1b
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    if-nez v2, :cond_7

    .line 214
    :cond_6
    :goto_6
    return v0

    .line 183
    :cond_7
    const/4 v2, 0x3

    if-ne p3, v2, :cond_e

    .line 184
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    move v0, v1

    .line 185
    goto :goto_6

    .line 188
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 189
    if-ne p3, v1, :cond_6

    .line 190
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    goto :goto_6

    .line 195
    :cond_1b
    packed-switch p3, :pswitch_data_30

    :goto_1e
    move v0, v1

    .line 214
    goto :goto_6

    .line 197
    :pswitch_20
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    goto :goto_1e

    .line 202
    :pswitch_23
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    if-eqz v2, :cond_2c

    .line 203
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;->onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V

    .line 205
    :cond_2c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    goto :goto_1e

    .line 195
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public setListener(Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    .line 227
    return-void
.end method
