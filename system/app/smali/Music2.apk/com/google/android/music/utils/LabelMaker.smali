.class public final Lcom/google/android/music/utils/LabelMaker;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/LabelMaker$Config;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

.field private mDestBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mPaddingX:I

.field private mPaint:Landroid/text/TextPaint;

.field private mString:Ljava/lang/String;

.field private mTextBottom:I

.field private mTextBottomBaseline:I

.field private mTextRightClipped:I

.field private mTextRightEdge:I

.field private mTextTop:I

.field private mTextTopBaseline:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;)V
    .registers 5
    .parameter "string"
    .parameter "config"

    .prologue
    .line 42
    iget v0, p2, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    iget v1, p2, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;II)V
    .registers 5
    .parameter "string"
    .parameter "config"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 53
    iput p3, p0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    .line 54
    iput p4, p0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "string"
    .parameter "config"
    .parameter "destBitmap"

    .prologue
    .line 46
    iget v0, p2, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    iget v1, p2, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;II)V

    .line 47
    iput-object p3, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method private createBitmapWithBackground(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "backgroundColor"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    .line 60
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    .line 61
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/utils/LabelMaker;->mDestBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {v0, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v1, v0

    .line 69
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_d
    return-object v1

    .line 65
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_e
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_17

    .line 67
    invoke-virtual {v0, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_17
    move-object v1, v0

    .line 69
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_d
.end method

.method private drawClippedString(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIII)V
    .registers 14
    .parameter "paint"
    .parameter "stringToDraw"
    .parameter "bounds"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 263
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    if-le v1, v2, :cond_28

    iget v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    if-ne v1, v4, :cond_28

    .line 264
    invoke-virtual {p4, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 265
    iget v1, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    iget v2, p0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    invoke-virtual {p4, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 266
    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {p4, p2, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 268
    int-to-float v1, p7

    int-to-float v2, p8

    invoke-direct {p0, p4, v1, v2}, Lcom/google/android/music/utils/LabelMaker;->fadeElipsisise(Landroid/graphics/Canvas;FF)V

    .line 272
    :goto_27
    return-void

    .line 270
    :cond_28
    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {p4, p2, v1, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_27
.end method

.method private fadeElipsisise(Landroid/graphics/Canvas;FF)V
    .registers 12
    .parameter "canvas"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 397
    iget v3, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v1, v3

    .line 398
    .local v1, gradientLeft:F
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    int-to-float v3, v3

    const/4 v5, -0x1

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 400
    .local v0, gradient:Landroid/graphics/LinearGradient;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 401
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 403
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 404
    iget v2, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    int-to-float v5, v2

    move-object v2, p1

    move v3, v1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 405
    return-void
.end method

.method private loadImp(Z)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "needBitmap"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iget v0, v0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/music/utils/LabelMaker;->loadMultiLine(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/music/utils/LabelMaker;->loadOneLine(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b
.end method

.method private loadMultiLine(Z)Landroid/graphics/Bitmap;
    .registers 29
    .parameter "needBitmap"

    .prologue
    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 276
    .local v26, splits:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v10, 0x1

    if-lt v2, v10, :cond_fd

    const/4 v2, 0x0

    aget-object v7, v26, v2

    .line 277
    .local v7, first:Ljava/lang/String;
    :goto_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 280
    .local v6, config:Lcom/google/android/music/utils/LabelMaker$Config;
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    add-int/lit8 v25, v2, 0x1

    .line 281
    .local v25, padding:I
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    .line 283
    const/16 v19, 0x0

    .line 284
    .local v19, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_37

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    iget-object v11, v6, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget v12, v6, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v11, v12}, Lcom/google/android/music/utils/LabelMaker;->createBitmapWithBackground(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 290
    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    .line 292
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    .line 294
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    add-int v2, v2, v25

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    .line 296
    const/4 v8, 0x0

    .line 297
    .local v8, canvas:Landroid/graphics/Canvas;
    if-eqz p1, :cond_63

    .line 298
    new-instance v8, Landroid/graphics/Canvas;

    .end local v8           #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/LabelMaker;->computePaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 301
    .local v5, paint:Landroid/text/TextPaint;
    move/from16 v3, v25

    .line 302
    .local v3, x:I
    move/from16 v4, v25

    .line 303
    .local v4, y:I
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    add-int/2addr v4, v2

    .line 305
    iget v9, v6, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 306
    .local v9, maxLines:I
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    neg-float v0, v2

    move/from16 v18, v0

    .line 307
    .local v18, ascent:F
    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v20

    .line 308
    .local v20, descent:F
    add-float v2, v18, v20

    const/high16 v10, 0x3f00

    add-float/2addr v2, v10

    float-to-int v0, v2

    move/from16 v23, v0

    .line 310
    .local v23, lineHeight:I
    move/from16 v24, v4

    .local v24, oldY:I
    move-object/from16 v2, p0

    .line 311
    invoke-direct/range {v2 .. v9}, Lcom/google/android/music/utils/LabelMaker;->renderString(IILandroid/text/TextPaint;Lcom/google/android/music/utils/LabelMaker$Config;Ljava/lang/String;Landroid/graphics/Canvas;I)I

    move-result v4

    .line 312
    sub-int v2, v4, v24

    div-int v22, v2, v23

    .line 313
    .local v22, lineCount:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_95

    .line 314
    const/4 v9, 0x1

    .line 317
    :cond_95
    const/16 v21, 0x1

    .local v21, i:I
    :goto_97
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_10d

    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_10d

    .line 318
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_101

    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    :goto_ab
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 319
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_104

    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    const/high16 v10, 0x437f

    mul-float/2addr v2, v10

    :goto_b8
    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 321
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 322
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    neg-float v0, v2

    move/from16 v18, v0

    .line 323
    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v20

    .line 324
    add-float v2, v18, v20

    const/high16 v10, 0x3f00

    add-float/2addr v2, v10

    float-to-int v0, v2

    move/from16 v23, v0

    .line 325
    int-to-float v10, v4

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_10a

    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontExtraSpace:F

    :goto_dc
    add-float/2addr v2, v10

    float-to-int v4, v2

    .line 326
    move/from16 v24, v4

    .line 327
    aget-object v15, v26, v21

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/google/android/music/utils/LabelMaker;->renderString(IILandroid/text/TextPaint;Lcom/google/android/music/utils/LabelMaker$Config;Ljava/lang/String;Landroid/graphics/Canvas;I)I

    move-result v4

    .line 328
    sub-int v2, v4, v24

    div-int v22, v2, v23

    .line 329
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_fa

    .line 330
    const/4 v9, 0x1

    .line 317
    :cond_fa
    add-int/lit8 v21, v21, 0x1

    goto :goto_97

    .line 276
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v5           #paint:Landroid/text/TextPaint;
    .end local v6           #config:Lcom/google/android/music/utils/LabelMaker$Config;
    .end local v7           #first:Ljava/lang/String;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v9           #maxLines:I
    .end local v18           #ascent:F
    .end local v19           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #descent:F
    .end local v21           #i:I
    .end local v22           #lineCount:I
    .end local v23           #lineHeight:I
    .end local v24           #oldY:I
    .end local v25           #padding:I
    :cond_fd
    const-string v7, ""

    goto/16 :goto_13

    .line 318
    .restart local v3       #x:I
    .restart local v4       #y:I
    .restart local v5       #paint:Landroid/text/TextPaint;
    .restart local v6       #config:Lcom/google/android/music/utils/LabelMaker$Config;
    .restart local v7       #first:Ljava/lang/String;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #maxLines:I
    .restart local v18       #ascent:F
    .restart local v19       #bitmap:Landroid/graphics/Bitmap;
    .restart local v20       #descent:F
    .restart local v21       #i:I
    .restart local v22       #lineCount:I
    .restart local v23       #lineHeight:I
    .restart local v24       #oldY:I
    .restart local v25       #padding:I
    :cond_101
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    goto :goto_ab

    .line 319
    :cond_104
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    const/high16 v10, 0x437f

    mul-float/2addr v2, v10

    goto :goto_b8

    .line 325
    :cond_10a
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontExtraSpace:F

    goto :goto_dc

    .line 334
    :cond_10d
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    const/high16 v10, 0x437f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 335
    iget v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 336
    iget-boolean v2, v6, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    if-eqz v2, :cond_125

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_121
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    return-object v19

    .line 336
    :cond_125
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_121
.end method

.method private loadOneLine(Z)Landroid/graphics/Bitmap;
    .registers 24
    .parameter "needBitmap"

    .prologue
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/LabelMaker;->computePaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 201
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    .line 202
    .local v4, stringToDraw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    move-object/from16 v16, v0

    .line 203
    .local v16, config:Lcom/google/android/music/utils/LabelMaker$Config;
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 204
    .local v15, bmConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    .line 206
    .local v19, metrics:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    add-int/lit8 v20, v2, 0x1

    .line 207
    .local v20, padding:I
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v11, v2, v20

    .line 208
    .local v11, ascent:I
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v17, v2, v20

    .line 209
    .local v17, descent:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    .line 210
    .local v13, backWidth:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    .line 212
    .local v12, backHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 213
    .local v21, string:Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v5, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v2, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 216
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    const/4 v9, 0x2

    if-eq v2, v9, :cond_53

    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_5f

    .line 219
    :cond_53
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v9, v20, 0x2

    add-int v13, v2, v9

    .line 220
    sub-int v18, v17, v11

    .line 221
    .local v18, height:I
    add-int v12, v18, v20

    .line 223
    .end local v18           #height:I
    :cond_5f
    if-lez v13, :cond_63

    if-gtz v12, :cond_65

    .line 224
    :cond_63
    const/4 v14, 0x0

    .line 256
    :cond_64
    :goto_64
    return-object v14

    .line 225
    :cond_65
    const/4 v14, 0x0

    .line 226
    .local v14, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 227
    .local v6, canvas:Landroid/graphics/Canvas;
    if-eqz p1, :cond_78

    .line 228
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12, v15, v2}, Lcom/google/android/music/utils/LabelMaker;->createBitmapWithBackground(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 230
    new-instance v6, Landroid/graphics/Canvas;

    .end local v6           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v6, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    :cond_78
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_fb

    move/from16 v2, v20

    :goto_81
    move-object/from16 v0, v16

    iget v9, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    add-int v7, v2, v9

    .line 236
    .local v7, x:I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    const/4 v9, 0x3

    if-eq v2, v9, :cond_95

    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    const/4 v9, 0x4

    if-ne v2, v9, :cond_98

    .line 237
    :cond_95
    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    .line 239
    :cond_98
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_10a

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v2, v2

    add-int v8, v2, v20

    .line 243
    .local v8, y:I
    :goto_a6
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yoffset:I

    add-int/2addr v8, v2

    .line 245
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    .line 246
    iget v2, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    .line 247
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    .line 248
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    .line 250
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    .line 251
    add-int v2, v7, v20

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/music/utils/LabelMaker;->mTextRightEdge:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/music/utils/LabelMaker;->mTextRightClipped:I

    .line 253
    if-eqz p1, :cond_64

    .line 254
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/music/utils/LabelMaker;->mHeight:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/music/utils/LabelMaker;->drawClippedString(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIII)V

    goto/16 :goto_64

    .line 234
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_fb
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_106

    sub-int v2, v13, v20

    goto/16 :goto_81

    :cond_106
    div-int/lit8 v2, v13, 0x2

    goto/16 :goto_81

    .line 239
    .restart local v7       #x:I
    :cond_10a
    move-object/from16 v0, v16

    iget v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    const/4 v9, 0x4

    if-ne v2, v9, :cond_11a

    sub-int v2, v12, v17

    :goto_113
    move-object/from16 v0, v16

    iget v9, v0, Lcom/google/android/music/utils/LabelMaker$Config;->ymargin:I

    add-int v8, v2, v9

    goto :goto_a6

    :cond_11a
    add-int v2, v17, v11

    sub-int v2, v12, v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_113
.end method

.method private renderString(IILandroid/text/TextPaint;Lcom/google/android/music/utils/LabelMaker$Config;Ljava/lang/String;Landroid/graphics/Canvas;I)I
    .registers 32
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "config"
    .parameter "text"
    .parameter "canvas"
    .parameter "maxLines"

    .prologue
    .line 347
    move-object/from16 v0, p4

    iget v3, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d9

    const/16 v23, 0x1

    .line 348
    .local v23, rightJustify:Z
    :goto_9
    if-eqz v23, :cond_dd

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 351
    .local v6, alignment:Landroid/text/Layout$Alignment;
    :goto_d
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 353
    .local v2, layout:Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v19

    .line 354
    .local v19, lineCount:I
    move/from16 v0, v19

    move/from16 v1, p7

    if-le v0, v1, :cond_2a

    .line 355
    move/from16 v19, p7

    .line 358
    :cond_2a
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    neg-float v0, v3

    move/from16 v16, v0

    .line 359
    .local v16, ascent:F
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->descent()F

    move-result v17

    .line 360
    .local v17, descent:F
    add-float v3, v16, v17

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v20, v0

    .line 361
    .local v20, lineHeight:I
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v21

    .line 363
    .local v21, metrics:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_43
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f3

    .line 364
    add-int/lit8 v3, v19, -0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_e1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, lineText:Ljava/lang/String;
    :goto_65
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 368
    .local v10, bounds:Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v3, v4, v10}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 369
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v13, p2, v3

    .line 370
    .local v13, baselineY:I
    iget v3, v10, Landroid/graphics/Rect;->left:I

    sub-int v12, p1, v3

    .line 371
    .local v12, tightX:I
    if-eqz v23, :cond_94

    .line 372
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/utils/LabelMaker;->mPaddingX:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v12, v3

    .line 374
    :cond_94
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 375
    .local v22, r2:Landroid/graphics/Rect;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 376
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTop:I

    .line 377
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottom:I

    .line 379
    if-eqz p6, :cond_d3

    .line 380
    move-object/from16 v0, v22

    iget v14, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v22

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v11, p6

    invoke-direct/range {v7 .. v15}, Lcom/google/android/music/utils/LabelMaker;->drawClippedString(Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Canvas;IIII)V

    .line 383
    :cond_d3
    add-int p2, p2, v20

    .line 363
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_43

    .line 347
    .end local v2           #layout:Landroid/text/StaticLayout;
    .end local v6           #alignment:Landroid/text/Layout$Alignment;
    .end local v9           #lineText:Ljava/lang/String;
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v12           #tightX:I
    .end local v13           #baselineY:I
    .end local v16           #ascent:F
    .end local v17           #descent:F
    .end local v18           #i:I
    .end local v19           #lineCount:I
    .end local v20           #lineHeight:I
    .end local v21           #metrics:Landroid/graphics/Paint$FontMetricsInt;
    .end local v22           #r2:Landroid/graphics/Rect;
    .end local v23           #rightJustify:Z
    :cond_d9
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 348
    .restart local v23       #rightJustify:Z
    :cond_dd
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto/16 :goto_d

    .line 364
    .restart local v2       #layout:Landroid/text/StaticLayout;
    .restart local v6       #alignment:Landroid/text/Layout$Alignment;
    .restart local v16       #ascent:F
    .restart local v17       #descent:F
    .restart local v18       #i:I
    .restart local v19       #lineCount:I
    .restart local v20       #lineHeight:I
    .restart local v21       #metrics:Landroid/graphics/Paint$FontMetricsInt;
    :cond_e1
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_65

    .line 386
    :cond_f3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextTopBaseline:I

    .line 388
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    add-int/lit8 v4, v19, -0x1

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/utils/LabelMaker;->mTextBottomBaseline:I

    .line 390
    return p2
.end method


# virtual methods
.method protected computePaint()Landroid/text/TextPaint;
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x437f

    .line 131
    iget-object v10, p0, Lcom/google/android/music/utils/LabelMaker;->mPaint:Landroid/text/TextPaint;

    if-eqz v10, :cond_b

    .line 132
    iget-object v7, p0, Lcom/google/android/music/utils/LabelMaker;->mPaint:Landroid/text/TextPaint;

    .line 178
    :cond_a
    :goto_a
    return-object v7

    .line 133
    :cond_b
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 134
    .local v7, paint:Landroid/text/TextPaint;
    iput-object v7, p0, Lcom/google/android/music/utils/LabelMaker;->mPaint:Landroid/text/TextPaint;

    .line 135
    invoke-virtual {v7, v12}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 136
    invoke-virtual {v7, v12}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 137
    iget-object v3, p0, Lcom/google/android/music/utils/LabelMaker;->mConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 138
    .local v3, config:Lcom/google/android/music/utils/LabelMaker$Config;
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    mul-float/2addr v10, v11

    float-to-int v0, v10

    .line 139
    .local v0, alpha:I
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->r:F

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 140
    .local v8, red:I
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->g:F

    mul-float/2addr v10, v11

    float-to-int v5, v10

    .line 141
    .local v5, green:I
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->b:F

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 142
    .local v1, blue:I
    invoke-static {v0, v8, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 143
    .local v2, color:I
    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 144
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    if-eqz v10, :cond_3d

    .line 145
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    int-to-float v10, v10

    const/high16 v11, -0x100

    invoke-virtual {v7, v10, v13, v13, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 147
    :cond_3d
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->underline:Z

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 148
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    if-eqz v10, :cond_8b

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_48
    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 149
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->strikeThrough:Z

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 151
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    if-ne v10, v12, :cond_8e

    .line 152
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    :goto_59
    iget-boolean v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->italic:Z

    if-eqz v10, :cond_62

    .line 161
    const/high16 v10, -0x4180

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 162
    :cond_62
    iget-object v9, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    .line 163
    .local v9, stringToDraw:Ljava/lang/String;
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 164
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    if-ne v10, v12, :cond_a

    .line 168
    :cond_6d
    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    .line 169
    .local v4, currentTextSize:F
    const/4 v6, 0x0

    .line 170
    .local v6, measuredTextWidth:F
    invoke-virtual {v7, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 171
    iget v10, p0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-ltz v10, :cond_a

    .line 173
    const/high16 v10, 0x3f80

    sub-float v10, v4, v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 174
    const/high16 v10, 0x40c0

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_6d

    goto :goto_a

    .line 148
    .end local v4           #currentTextSize:F
    .end local v6           #measuredTextWidth:F
    .end local v9           #stringToDraw:Ljava/lang/String;
    :cond_8b
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_48

    .line 153
    :cond_8e
    iget v10, v3, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_99

    .line 154
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_59

    .line 157
    :cond_99
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_59
.end method

.method public getTextRightClipped()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/music/utils/LabelMaker;->mTextRightClipped:I

    return v0
.end method

.method public load()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/music/utils/LabelMaker;->mString:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 183
    const/4 v0, 0x0

    .line 184
    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/LabelMaker;->loadImp(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5
.end method

.method public measure()V
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/LabelMaker;->loadImp(Z)Landroid/graphics/Bitmap;

    .line 197
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 81
    iput p1, p0, Lcom/google/android/music/utils/LabelMaker;->mWidth:I

    .line 82
    return-void
.end method
