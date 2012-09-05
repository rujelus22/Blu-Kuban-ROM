.class public Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;
.super Landroid/view/View;
.source "TouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field col_height:F

.field col_width:F

.field private isClickArea:[[Z

.field private isDrawArea:[[Z

.field private isDrawAreaForP1:[[Z

.field private isTouchDown:Z

.field private mClickPaint:Landroid/graphics/Paint;

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mLineCanvas:Landroid/graphics/Canvas;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMatrixBitmap:Landroid/graphics/Bitmap;

.field private mMatrixCanvas:Landroid/graphics/Canvas;

.field private mPreTouchedX:F

.field private mPreTouchedY:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTouchedX:F

.field private mTouchedY:F

.field private memptyPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v3, 0xf

    .line 177
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    .line 178
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 128
    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    .line 129
    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    .line 130
    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    .line 131
    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    .line 138
    new-array v0, v5, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_140

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [Z

    fill-array-data v2, :array_14c

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [Z

    fill-array-data v2, :array_158

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [Z

    fill-array-data v2, :array_164

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [Z

    fill-array-data v2, :array_170

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [Z

    fill-array-data v2, :array_17c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [Z

    fill-array-data v2, :array_188

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [Z

    fill-array-data v2, :array_194

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [Z

    fill-array-data v2, :array_1a0

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [Z

    fill-array-data v2, :array_1ac

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [Z

    fill-array-data v2, :array_1b8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [Z

    fill-array-data v2, :array_1c4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [Z

    fill-array-data v2, :array_1d0

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [Z

    fill-array-data v2, :array_1dc

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [Z

    fill-array-data v2, :array_1e8

    aput-object v2, v0, v1

    new-array v1, v3, [Z

    fill-array-data v1, :array_1f4

    aput-object v1, v0, v3

    const/16 v1, 0x10

    new-array v2, v3, [Z

    fill-array-data v2, :array_200

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [Z

    fill-array-data v2, :array_20c

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [Z

    fill-array-data v2, :array_218

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [Z

    fill-array-data v2, :array_224

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [Z

    fill-array-data v2, :array_230

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isDrawAreaForP1:[[Z

    .line 180
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isDrawAreaForP1:[[Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isDrawArea:[[Z

    .line 183
    invoke-virtual {p1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenWidth:I

    .line 184
    invoke-virtual {p1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenHeight:I

    .line 186
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 187
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 188
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 190
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenWidth:I

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 191
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    .line 193
    filled-new-array {v5, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isClickArea:[[Z

    .line 195
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x41a8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    .line 196
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4170

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    .line 198
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->setPaint()V

    .line 199
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->initRect()V

    .line 201
    iput-boolean v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isTouchDown:Z

    .line 202
    return-void

    .line 138
    :array_140
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_14c
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_158
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_164
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_170
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_17c
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_188
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_194
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1a0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1ac
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1b8
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1c4
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1d0
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1dc
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1e8
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1f4
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_200
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_20c
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_218
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_224
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_230
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private checkAndMarkRect(IILandroid/graphics/Paint;)V
    .registers 14
    .parameter "row"
    .parameter "col"
    .parameter "paint"

    .prologue
    const/16 v9, 0xcb

    const/4 v2, 0x1

    const/high16 v8, 0x3f80

    .line 360
    const/16 v0, 0x15

    if-lt p1, v0, :cond_a

    .line 383
    :cond_9
    :goto_9
    return-void

    .line 361
    :cond_a
    const/16 v0, 0xf

    if-ge p2, v0, :cond_9

    .line 363
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    int-to-float v1, p2

    mul-float v6, v0, v1

    .line 364
    .local v6, ColX:F
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    int-to-float v1, p1

    mul-float v7, v0, v1

    .line 366
    .local v7, ColY:F
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isClickArea:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isDrawArea:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    if-ne v0, v2, :cond_9

    .line 367
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isClickArea:[[Z

    aget-object v0, v0, p1

    aput-boolean v2, v0, p2

    .line 368
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    float-to-int v1, v6

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    float-to-int v2, v7

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 369
    new-instance v0, Landroid/graphics/Rect;

    sub-float v1, v6, v8

    float-to-int v1, v1

    sub-float v2, v7, v8

    float-to-int v2, v2

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    add-float/2addr v3, v6

    add-float/2addr v3, v8

    float-to-int v3, v3

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    add-float/2addr v4, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 371
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isPass()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 372
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mFactoryTestApp:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 373
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-virtual {v0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->setResult(I)V

    .line 374
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    const/4 v1, 0x0

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mFactoryTestApp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->access$102(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->finish()V

    goto :goto_9

    .line 378
    :cond_7d
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-virtual {v0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->setResult(I)V

    .line 379
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->finish()V

    goto :goto_9
.end method

.method private drawLine(FFFF)V
    .registers 15
    .parameter "preX"
    .parameter "preY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    const/4 v8, 0x0

    .local v8, lowX:I
    const/4 v9, 0x0

    .local v9, lowY:I
    const/4 v6, 0x0

    .local v6, highX:I
    const/4 v7, 0x0

    .line 297
    .local v7, highY:I
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2c

    .line 298
    float-to-int v6, p1

    .line 299
    float-to-int v8, p3

    .line 305
    :goto_15
    cmpl-float v0, p2, p4

    if-ltz v0, :cond_2f

    .line 306
    float-to-int v7, p2

    .line 307
    float-to-int v9, p4

    .line 314
    :goto_1b
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v1, v8, -0x6

    add-int/lit8 v2, v9, -0x6

    add-int/lit8 v3, v6, 0x6

    add-int/lit8 v4, v7, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 315
    return-void

    .line 302
    :cond_2c
    float-to-int v6, p3

    .line 303
    float-to-int v8, p1

    goto :goto_15

    .line 310
    :cond_2f
    float-to-int v7, p4

    .line 311
    float-to-int v9, p2

    goto :goto_1b
.end method

.method private drawPoint(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLineCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 319
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

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 320
    return-void
.end method

.method private drawRect(FFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 353
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    div-float v2, p1, v2

    float-to-int v0, v2

    .line 354
    .local v0, countX:I
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    div-float v2, p2, v2

    float-to-int v1, v2

    .line 356
    .local v1, countY:I
    invoke-direct {p0, v1, v0, p3}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->checkAndMarkRect(IILandroid/graphics/Paint;)V

    .line 357
    return-void
.end method

.method private initRect()V
    .registers 18

    .prologue
    .line 323
    const/4 v13, 0x0

    .line 324
    .local v13, ColX:I
    const/4 v14, 0x0

    .line 326
    .local v14, ColY:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 327
    .local v6, mRectPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    const/4 v15, 0x0

    .local v15, i:I
    :goto_d
    const/16 v1, 0x15

    if-ge v15, v1, :cond_56

    .line 331
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    int-to-float v2, v15

    mul-float/2addr v1, v2

    float-to-int v14, v1

    .line 333
    const/16 v16, 0x0

    .local v16, j:I
    :goto_1a
    const/16 v1, 0xf

    move/from16 v0, v16

    if-ge v0, v1, :cond_53

    .line 336
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenWidth:I

    int-to-float v4, v4

    int-to-float v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mScreenHeight:I

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isClickArea:[[Z

    aget-object v1, v1, v15

    const/4 v2, 0x0

    aput-boolean v2, v1, v16

    .line 333
    add-int/lit8 v16, v16, 0x1

    goto :goto_1a

    .line 329
    :cond_53
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 345
    .end local v16           #j:I
    :cond_56
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x40e0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x4100

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x4160

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x4120

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x4130

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x40e0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x41a0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x4100

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x4130

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_width:F

    const/high16 v2, 0x4160

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->col_height:F

    const/high16 v2, 0x41a0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v11, v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 349
    return-void
.end method

.method private isPass()Z
    .registers 6

    .prologue
    .line 410
    const/4 v1, 0x1

    .line 412
    .local v1, isPass:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/16 v3, 0x15

    if-ge v0, v3, :cond_23

    .line 413
    const/4 v2, 0x0

    .local v2, j:I
    :goto_7
    const/16 v3, 0xf

    if-ge v2, v3, :cond_20

    .line 414
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isClickArea:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isDrawArea:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x1

    :goto_1a
    and-int/2addr v1, v3

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 414
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a

    .line 412
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 418
    .end local v2           #j:I
    :cond_23
    return v1
.end method

.method private setPaint()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x100

    .line 205
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    .line 206
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 211
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_74

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 214
    .local v0, e:Landroid/graphics/PathEffect;
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 215
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->memptyPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    return-void

    .line 213
    :array_74
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

    .line 228
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 229
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 230
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 236
    .local v0, action:I
    packed-switch v0, :pswitch_data_b6

    .line 290
    :cond_8
    :goto_8
    return v6

    .line 238
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    .line 241
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 243
    iput-boolean v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isTouchDown:Z

    goto :goto_8

    .line 248
    :pswitch_21
    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 249
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 250
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    .line 251
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    .line 253
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    .line 254
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    .line 256
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 257
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iget v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->drawLine(FFFF)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 260
    :cond_57
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    .line 261
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    .line 266
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mClickPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->drawRect(FFLandroid/graphics/Paint;)V

    .line 267
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iget v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->drawLine(FFFF)V

    .line 269
    iput-boolean v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isTouchDown:Z

    goto :goto_8

    .line 274
    .end local v1           #i:I
    :pswitch_82
    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isTouchDown:Z

    if-eqz v2, :cond_8

    .line 275
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    .line 276
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    .line 281
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mPreTouchedY:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b1

    .line 282
    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedX:F

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->mTouchedY:F

    invoke-direct {p0, v2, v3}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->drawPoint(FF)V

    .line 285
    :cond_b1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;->isTouchDown:Z

    goto/16 :goto_8

    .line 236
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_9
        :pswitch_82
        :pswitch_21
    .end packed-switch
.end method
