.class Lcom/cooliris/media/CropImage$24;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .registers 3
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    .line 1203
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/cooliris/media/CropImage$24;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$2700(Lcom/cooliris/media/CropImage$24;Landroid/media/FaceDetector$Face;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImage$24;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/cooliris/media/CropImage$24;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/cooliris/media/CropImage$24;->makeDefault()V

    return-void
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .registers 15
    .parameter "f"

    .prologue
    .line 1211
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 1213
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 1214
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 1215
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 1216
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 1218
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 1219
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 1221
    .local v9, midY:I
    new-instance v0, Lcom/cooliris/media/HighlightView;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cooliris/media/HighlightView;-><init>(Landroid/view/View;)V

    .line 1223
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1224
    .local v11, width:I
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1226
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1228
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1229
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1230
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6c

    .line 1231
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1234
    :cond_6c
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7c

    .line 1235
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1238
    :cond_7c
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_94

    .line 1239
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1242
    :cond_94
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_ac

    .line 1243
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1247
    :cond_ac
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$2300(Lcom/cooliris/media/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v5

    if-eqz v5, :cond_d2

    const/4 v5, 0x1

    :goto_c5
    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1249
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cooliris/media/CropImageView;->add(Lcom/cooliris/media/HighlightView;)V

    .line 1250
    return-void

    .line 1247
    :cond_d2
    const/4 v5, 0x0

    goto :goto_c5
.end method

.method private makeDefault()V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 1254
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_11

    .line 1255
    const-string v1, "CropImage"

    const-string v4, "makeDefault() : mBitmap is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_10
    return-void

    .line 1259
    :cond_11
    new-instance v0, Lcom/cooliris/media/HighlightView;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cooliris/media/HighlightView;-><init>(Landroid/view/View;)V

    .line 1261
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1262
    .local v9, width:I
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1263
    .local v8, height:I
    const-string v1, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bitmap width : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", bitmap height : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1269
    .local v2, imageRect:Landroid/graphics/Rect;
    move v7, v9

    .line 1270
    .local v7, cropWidth:I
    move v6, v8

    .line 1272
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->isHomeScreen()Z
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$2400(Lcom/cooliris/media/CropImage;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->isLockScreen()Z
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$2500(Lcom/cooliris/media/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 1273
    :cond_69
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v1

    if-eqz v1, :cond_96

    .line 1274
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_145

    .line 1275
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 1281
    :cond_96
    :goto_96
    if-le v6, v8, :cond_156

    .line 1282
    mul-int v1, v7, v8

    div-int v7, v1, v6

    .line 1283
    move v6, v8

    .line 1300
    :cond_9d
    :goto_9d
    const-string v1, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop frame aspect x : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", crop frame aspect y : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v1, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop frame width : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", crop frame height : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 1304
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 1306
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1308
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mIsClick:Z
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1500(Lcom/cooliris/media/CropImage;)Z

    move-result v1

    if-nez v1, :cond_1a8

    .line 1309
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    if-eqz v1, :cond_11e

    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    iget-object v1, v1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_11e

    .line 1310
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    iget-object v1, v1, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    iget-object v3, v1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 1315
    :cond_11e
    :goto_11e
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$2300(Lcom/cooliris/media/CropImage;)Z

    move-result v4

    iget-object v12, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v12

    if-eqz v12, :cond_137

    iget-object v12, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v12

    if-eqz v12, :cond_137

    const/4 v5, 0x1

    :cond_137
    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1316
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cooliris/media/CropImageView;->add(Lcom/cooliris/media/HighlightView;)V

    goto/16 :goto_10

    .line 1277
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_145
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto/16 :goto_96

    .line 1284
    :cond_156
    if-le v7, v9, :cond_9d

    .line 1285
    mul-int v1, v6, v9

    div-int v6, v1, v7

    .line 1286
    move v7, v9

    goto/16 :goto_9d

    .line 1289
    :cond_15f
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v7, v1, 0x3

    .line 1290
    move v6, v7

    .line 1292
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v1

    if-eqz v1, :cond_9d

    .line 1293
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_197

    .line 1294
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    goto/16 :goto_9d

    .line 1296
    :cond_197
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$900(Lcom/cooliris/media/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$1000(Lcom/cooliris/media/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto/16 :goto_9d

    .line 1312
    .restart local v3       #cropRect:Landroid/graphics/RectF;
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_1a8
    iget-object v1, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #setter for: Lcom/cooliris/media/CropImage;->mIsClick:Z
    invoke-static {v1, v5}, Lcom/cooliris/media/CropImage;->access$1502(Lcom/cooliris/media/CropImage;Z)Z

    goto/16 :goto_11e
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 1321
    iget-object v9, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_b

    move-object v2, v8

    .line 1342
    :goto_a
    return-object v2

    .line 1326
    :cond_b
    :try_start_b
    iget-object v9, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1327
    .local v7, width:I
    iget-object v9, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1328
    .local v4, height:I
    const-wide v9, 0x40fd4c0000000000L

    mul-int v11, v7, v4

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v5, v9

    .line 1329
    .local v5, scale:F
    iput v5, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    .line 1332
    int-to-float v9, v7

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v6, v9, -0x2

    .line 1333
    .local v6, w:I
    int-to-float v9, v4

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1334
    .local v3, h:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1335
    .local v2, faceBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1336
    .local v0, canvas:Landroid/graphics/Canvas;
    int-to-float v9, v6

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v3

    int-to-float v11, v4

    div-float/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1337
    iget-object v9, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_5d} :catch_5e

    goto :goto_a

    .line 1340
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #faceBitmap:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #height:I
    .end local v5           #scale:F
    .end local v6           #w:I
    .end local v7           #width:I
    :catch_5e
    move-exception v1

    .line 1341
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v2, v8

    .line 1342
    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1347
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1300(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/CropImage$24;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1348
    invoke-direct {p0}, Lcom/cooliris/media/CropImage$24;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1350
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/cooliris/media/CropImage$24;->mScale:F

    .line 1351
    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$2600(Lcom/cooliris/media/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1352
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/cooliris/media/CropImage$24;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 1354
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/cooliris/media/CropImage$24;->mNumFaces:I

    .line 1357
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_39
    if-eqz v1, :cond_4a

    iget-object v2, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$400(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1358
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1361
    :cond_4a
    iget-object v2, p0, Lcom/cooliris/media/CropImage$24;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1700(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/CropImage$24$1;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$24$1;-><init>(Lcom/cooliris/media/CropImage$24;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1387
    return-void
.end method
