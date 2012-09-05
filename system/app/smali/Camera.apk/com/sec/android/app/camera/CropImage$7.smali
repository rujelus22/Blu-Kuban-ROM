.class Lcom/sec/android/app/camera/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImageMatrix:Landroid/graphics/Matrix;

.field mScale:F

.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .registers 3
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CropImage$7;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage$7;->makeDefault()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CropImage$7;Landroid/graphics/RectF;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage$7;->handleBlinkFace(Landroid/graphics/RectF;)V

    return-void
.end method

.method private handleBlinkFace(Landroid/graphics/RectF;)V
    .registers 20
    .parameter "rect"

    .prologue
    .line 608
    new-instance v1, Lcom/sec/android/app/camera/HighlightView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 609
    .local v1, hv:Lcom/sec/android/app/camera/HighlightView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v13

    .line 611
    .local v13, img:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v13, :cond_37

    .line 612
    const-string v2, "CropImage"

    const-string v5, "handleBlinkFace : img == null is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_36
    return-void

    .line 616
    :cond_37
    const/4 v8, 0x0

    .line 617
    .local v8, exif:Landroid/media/ExifInterface;
    invoke-interface {v13}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, filePath:Ljava/lang/String;
    :try_start_3c
    new-instance v8, Landroid/media/ExifInterface;

    .end local v8           #exif:Landroid/media/ExifInterface;
    invoke-direct {v8, v9}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_142

    .line 626
    .restart local v8       #exif:Landroid/media/ExifInterface;
    :goto_41
    invoke-interface {v13}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v14

    .line 627
    .local v14, w:I
    invoke-interface {v13}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v10

    .line 629
    .local v10, h:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 630
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 632
    .local v12, height:I
    const/4 v15, 0x0

    .line 633
    .local v15, w_ratio:F
    const/4 v11, 0x0

    .line 635
    .local v11, h_ratio:F
    if-eqz v8, :cond_159

    .line 636
    const-string v2, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Orientation"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v6, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v2, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v8, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_178

    .line 646
    :pswitch_91
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v14

    div-float v15, v2, v5

    .line 647
    int-to-float v2, v12

    int-to-float v5, v10

    div-float v11, v2, v5

    .line 661
    :goto_9b
    const-string v2, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBlinkFace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-direct {v3, v2, v5, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 664
    .local v3, imageRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v11

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    mul-float v17, v17, v11

    move/from16 v0, v17

    invoke-direct {v4, v2, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 669
    .local v4, blinkRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v5, v5, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_175

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v6

    if-eqz v6, :cond_175

    const/4 v6, 0x1

    :goto_12d
    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 672
    sget-object v2, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v2}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    goto/16 :goto_36

    .line 621
    .end local v3           #imageRect:Landroid/graphics/Rect;
    .end local v4           #blinkRect:Landroid/graphics/RectF;
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v10           #h:I
    .end local v11           #h_ratio:F
    .end local v12           #height:I
    .end local v14           #w:I
    .end local v15           #w_ratio:F
    .end local v16           #width:I
    :catch_142
    move-exception v7

    .line 622
    .local v7, e:Ljava/io/IOException;
    const-string v2, "CropImage"

    const-string v5, "handleBlinkFace : failed to load exif"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v8, 0x0

    .restart local v8       #exif:Landroid/media/ExifInterface;
    goto/16 :goto_41

    .line 640
    .end local v7           #e:Ljava/io/IOException;
    .restart local v10       #h:I
    .restart local v11       #h_ratio:F
    .restart local v12       #height:I
    .restart local v14       #w:I
    .restart local v15       #w_ratio:F
    .restart local v16       #width:I
    :pswitch_14d
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v10

    div-float v15, v2, v5

    .line 641
    int-to-float v2, v12

    int-to-float v5, v14

    div-float v11, v2, v5

    .line 642
    goto/16 :goto_9b

    .line 652
    :cond_159
    move/from16 v0, v16

    if-ge v0, v12, :cond_169

    .line 653
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v10

    div-float v15, v2, v5

    .line 654
    int-to-float v2, v12

    int-to-float v5, v14

    div-float v11, v2, v5

    goto/16 :goto_9b

    .line 656
    :cond_169
    move/from16 v0, v16

    int-to-float v2, v0

    int-to-float v5, v14

    div-float v15, v2, v5

    .line 657
    int-to-float v2, v12

    int-to-float v5, v10

    div-float v11, v2, v5

    goto/16 :goto_9b

    .line 669
    .restart local v3       #imageRect:Landroid/graphics/Rect;
    .restart local v4       #blinkRect:Landroid/graphics/RectF;
    :cond_175
    const/4 v6, 0x0

    goto :goto_12d

    .line 637
    nop

    :pswitch_data_178
    .packed-switch 0x6
        :pswitch_14d
        :pswitch_91
        :pswitch_14d
    .end packed-switch
.end method

.method private makeDefault()V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 723
    new-instance v0, Lcom/sec/android/app/camera/HighlightView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 725
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 726
    .local v9, width:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 728
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 731
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 732
    .local v7, cropWidth:I
    move v6, v7

    .line 734
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_5b

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_94

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 742
    :cond_5b
    :goto_5b
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 743
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 745
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 746
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iget-object v12, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v12

    if-eqz v12, :cond_87

    iget-object v12, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v12

    if-eqz v12, :cond_87

    const/4 v5, 0x1

    :cond_87
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    .line 749
    return-void

    .line 738
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_94
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_5b
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    .line 772
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/CropImage$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CropImage$7$1;-><init>(Lcom/sec/android/app/camera/CropImage$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    return-void
.end method
