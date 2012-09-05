.class public Lcom/sec/android/app/lcdtest/button_touch$MyView;
.super Landroid/view/View;
.source "button_touch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/button_touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private isTouchDown:Z

.field private mClickPaint:Landroid/graphics/Paint;

.field private mEmptyPaint:Landroid/graphics/Paint;

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mLineCanvas:Landroid/graphics/Canvas;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMatrixBitmap:Landroid/graphics/Bitmap;

.field private mMatrixCanvas:Landroid/graphics/Canvas;

.field private mNonClickPaint:Landroid/graphics/Paint;

.field private mPreTouchedX:F

.field private mPreTouchedY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchedX:F

.field private mTouchedY:F

.field final synthetic this$0:Lcom/sec/android/app/lcdtest/button_touch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/lcdtest/button_touch;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    .line 123
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    .line 106
    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    .line 107
    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    .line 108
    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    .line 125
    invoke-virtual {p1}, Lcom/sec/android/app/lcdtest/button_touch;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenWidth:I

    .line 126
    invoke-virtual {p1}, Lcom/sec/android/app/lcdtest/button_touch;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenHeight:I

    .line 128
    iget v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 130
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 133
    iget v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 134
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->setPaint()V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->initRect()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->isTouchDown:Z

    .line 140
    return-void
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 235
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 236
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 237
    float-to-int v6, p1

    .line 238
    float-to-int v8, p3

    .line 243
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 244
    float-to-int v7, p2

    .line 245
    float-to-int v9, p4

    .line 250
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 251
    return-void

    .line 240
    :cond_2c
    float-to-int v6, p3

    .line 241
    float-to-int v8, p1

    goto :goto_15

    .line 247
    :cond_2f
    float-to-int v7, p4

    .line 248
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v1, p1

    add-int/lit8 v1, v1, -0x6

    float-to-int v2, p2

    add-int/lit8 v2, v2, -0x6

    float-to-int v3, p1

    add-int/lit8 v3, v3, 0x6

    float-to-int v4, p2

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 256
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    .line 300
    iget v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x4198

    div-float v6, v0, v1

    .line 301
    iget v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4130

    div-float v7, v0, v1

    .line 303
    div-float v0, p1, v7

    float-to-int v0, v0

    .line 304
    div-float v1, p2, v6

    float-to-int v1, v1

    .line 306
    int-to-float v2, v0

    mul-float v8, v7, v2

    .line 307
    int-to-float v2, v1

    mul-float v9, v6, v2

    .line 310
    const/16 v2, 0x12

    if-gt v1, v2, :cond_25

    const/16 v2, 0xa

    if-le v0, v2, :cond_2d

    .line 312
    :cond_25
    const-string v0, "button_touch"

    const-string v1, "You are out of bounds!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2c
    :goto_2c
    return-void

    .line 315
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/button_touch;->access$000(Lcom/sec/android/app/lcdtest/button_touch;)[[Z

    move-result-object v2

    aget-object v2, v2, v1

    aget-boolean v2, v2, v0

    if-nez v2, :cond_87

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/button_touch;->access$000(Lcom/sec/android/app/lcdtest/button_touch;)[[Z

    move-result-object v2

    aget-object v2, v2, v1

    aput-boolean v11, v2, v0

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/button_touch;->access$000(Lcom/sec/android/app/lcdtest/button_touch;)[[Z

    move-result-object v2

    aget-object v2, v2, v1

    aget-boolean v2, v2, v0

    if-ne v2, v11, :cond_ad

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->isDrawArea:[[Z
    invoke-static {v2}, Lcom/sec/android/app/lcdtest/button_touch;->access$200(Lcom/sec/android/app/lcdtest/button_touch;)[[Z

    move-result-object v2

    aget-object v1, v2, v1

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_ad

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v1, v8

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    float-to-int v2, v9

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float v3, v8, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v4, v9, v6

    float-to-int v4, v4

    int-to-float v4, v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 324
    :goto_71
    new-instance v0, Landroid/graphics/Rect;

    sub-float v1, v8, v10

    float-to-int v1, v1

    sub-float v2, v9, v10

    float-to-int v2, v2

    add-float v3, v8, v7

    add-float/2addr v3, v10

    float-to-int v3, v3

    add-float v4, v9, v6

    add-float/2addr v4, v10

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 327
    :cond_87
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #calls: Lcom/sec/android/app/lcdtest/button_touch;->isPass()Z
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/button_touch;->access$300(Lcom/sec/android/app/lcdtest/button_touch;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->remoteCall:Z
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/button_touch;->access$400(Lcom/sec/android/app/lcdtest/button_touch;)Z

    move-result v0

    if-ne v0, v11, :cond_9d

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/button_touch;->setResult(I)V

    .line 331
    :cond_9d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    const-class v2, Lcom/sec/android/app/lcdtest/button_touch_pass;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/lcdtest/button_touch;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c

    .line 321
    :cond_ad
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v1, v8

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    float-to-int v2, v9

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float v3, v8, v7

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v4, v9, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_71
.end method

.method private initRect()V
    .registers 20

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4198

    div-float v15, v1, v2

    .line 260
    .local v15, col_height:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4130

    div-float v16, v1, v2

    .line 261
    .local v16, col_width:F
    const/4 v13, 0x0

    .line 262
    .local v13, ColX:I
    const/4 v14, 0x0

    .line 264
    .local v14, ColY:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 265
    .local v6, mRectPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    const/16 v17, 0x0

    .local v17, i:I
    :goto_20
    const/16 v1, 0x13

    move/from16 v0, v17

    if-ge v0, v1, :cond_77

    .line 268
    move/from16 v0, v17

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v14, v1

    .line 270
    const/16 v18, 0x0

    .local v18, j:I
    :goto_2d
    const/16 v1, 0xb

    move/from16 v0, v18

    if-ge v0, v1, :cond_74

    .line 272
    move/from16 v0, v18

    int-to-float v1, v0

    mul-float v1, v1, v16

    float-to-int v13, v1

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenWidth:I

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mScreenHeight:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->draw:[[Z
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/button_touch;->access$000(Lcom/sec/android/app/lcdtest/button_touch;)[[Z

    move-result-object v1

    aget-object v1, v1, v17

    const/4 v2, 0x0

    aput-boolean v2, v1, v18

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->this$0:Lcom/sec/android/app/lcdtest/button_touch;

    #getter for: Lcom/sec/android/app/lcdtest/button_touch;->click:[[Z
    invoke-static {v1}, Lcom/sec/android/app/lcdtest/button_touch;->access$100(Lcom/sec/android/app/lcdtest/button_touch;)[[Z

    move-result-object v1

    aget-object v1, v1, v17

    const/4 v2, 0x0

    aput-boolean v2, v1, v18

    .line 270
    add-int/lit8 v18, v18, 0x1

    goto :goto_2d

    .line 267
    :cond_74
    add-int/lit8 v17, v17, 0x1

    goto :goto_20

    .line 281
    .end local v18           #j:I
    :cond_77
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f80

    add-float v8, v16, v1

    const/high16 v1, 0x3f80

    add-float v9, v15, v1

    const/high16 v1, 0x40a0

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    const/high16 v1, 0x4110

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x40c0

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    const/high16 v1, 0x3f80

    add-float v9, v15, v1

    const/high16 v1, 0x4120

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    const/high16 v1, 0x4110

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f80

    add-float v8, v16, v1

    const/high16 v1, 0x4120

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    const/high16 v1, 0x40a0

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    const/high16 v1, 0x4190

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x40c0

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    const/high16 v1, 0x4120

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    const/high16 v1, 0x4120

    mul-float v1, v1, v16

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    const/high16 v1, 0x4190

    mul-float/2addr v1, v15

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 297
    return-void
.end method

.method private setPaint()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 143
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_86

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 152
    .local v0, e:Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mNonClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    return-void

    .line 151
    nop

    :array_86
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 178
    .local v0, action:I
    packed-switch v0, :pswitch_data_b6

    .line 230
    :cond_8
    :goto_8
    return v6

    .line 180
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    .line 183
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 185
    iput-boolean v6, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->isTouchDown:Z

    goto :goto_8

    .line 190
    :pswitch_21
    iget-boolean v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 191
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 192
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    .line 193
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    .line 195
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    .line 198
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 199
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->drawLine(FFFF)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 201
    :cond_57
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    .line 202
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    .line 207
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 208
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iget v5, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->drawLine(FFFF)V

    .line 210
    iput-boolean v6, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->isTouchDown:Z

    goto :goto_8

    .line 215
    .end local v1           #i:I
    :pswitch_82
    iget-boolean v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 216
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    .line 217
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    .line 222
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mPreTouchedY:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    .line 223
    iget v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedX:F

    iget v3, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/lcdtest/button_touch$MyView;->drawPoint(FF)V

    .line 226
    :cond_b1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/lcdtest/button_touch$MyView;->isTouchDown:Z

    goto/16 :goto_8

    .line 178
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_9
        :pswitch_82
        :pswitch_21
    .end packed-switch
.end method
