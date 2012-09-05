.class public Lcom/android/browser/NavTabView$ReflectedImage;
.super Ljava/lang/Object;
.source "NavTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/NavTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReflectedImage"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmapNoGradient:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public mReflectionHeight:I

.field public mReflectionStartY:I

.field public mWidth:I

.field final synthetic this$0:Lcom/android/browser/NavTabView;


# direct methods
.method public constructor <init>(Lcom/android/browser/NavTabView;Landroid/graphics/Bitmap;I)V
    .registers 32
    .parameter
    .parameter "bm"
    .parameter "reflectionHeight"

    .prologue
    .line 222
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->this$0:Lcom/android/browser/NavTabView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 224
    .local v5, w:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 225
    .local v9, h:I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 227
    .local v3, pixels:[I
    const-string v2, "Nav"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NavTabView : ReflectedImage() w = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " h = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-gtz p3, :cond_64

    .line 231
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mWidth:I

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mHeight:I

    .line 234
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->mReflectionHeight:I

    .line 235
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mHeight:I

    sub-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mReflectionStartY:I

    .line 268
    :goto_63
    return-void

    .line 239
    :cond_64
    add-int v2, v9, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 241
    .local v25, b:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 242
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, v25

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 244
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    .local v15, aMatrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 246
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p2

    move v13, v5

    move v14, v9

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 247
    .local v16, reflectedBitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move/from16 v19, v5

    move/from16 v22, v5

    move/from16 v23, p3

    invoke-virtual/range {v16 .. v23}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 248
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v25

    move-object/from16 v18, v3

    move/from16 v20, v5

    move/from16 v22, v9

    move/from16 v23, v5

    move/from16 v24, p3

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 249
    invoke-static/range {v25 .. v25}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mBitmapNoGradient:Landroid/graphics/Bitmap;

    .line 250
    new-instance v26, Landroid/graphics/Canvas;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v26, canvas:Landroid/graphics/Canvas;
    new-instance v27, Landroid/graphics/Paint;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v27, paint:Landroid/graphics/Paint;
    new-instance v17, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    int-to-float v0, v9

    move/from16 v19, v0

    const/16 v20, 0x0

    add-int v2, v9, p3

    int-to-float v0, v2

    move/from16 v21, v0

    const v22, 0x70ffffff

    const v23, 0xffffff

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 253
    .local v17, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 254
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 261
    const/16 v19, 0x0

    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    add-int v2, v9, p3

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v18, v26

    move-object/from16 v23, v27

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mWidth:I

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mHeight:I

    .line 266
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->mReflectionHeight:I

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mHeight:I

    sub-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/browser/NavTabView$ReflectedImage;->mReflectionStartY:I

    goto/16 :goto_63
.end method
