.class Lcom/sec/android/app/ve/view/PreviewViewGroup$8;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;->toggleSurfaceVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 848
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateImageDurationButton()V

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->imageDuration:Landroid/widget/Button;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$58(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$59(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    const v3, 0x7f0b0094

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$60(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/widget/ImageView;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v1, :cond_97

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$61(Lcom/sec/android/app/ve/view/PreviewViewGroup;Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$62(Lcom/sec/android/app/ve/view/PreviewViewGroup;Lcom/samsung/app/video/editor/external/Element;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 859
    :cond_97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    if-eqz v1, :cond_3a6

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kenburn start rect::L:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " R:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kenburn end rect::L:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " R:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 863
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4396

    const/high16 v6, 0x432a

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$63(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/graphics/RectF;)V

    .line 867
    const/16 v1, 0x280

    const/16 v2, 0x1e0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 868
    .local v10, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x280

    const/16 v7, 0x1e0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B

    move-result-object v11

    .line 870
    .local v11, bytes:[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bytes length:::::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got kenburn bytes from engine::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 873
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 874
    .local v14, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v14}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 877
    const/16 v1, 0x1c7

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {v10, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 878
    .local v16, scaledBitmap:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 879
    .local v12, drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 881
    .local v15, r:Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rect r "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2ba

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2ba

    .line 883
    const/4 v13, 0x0

    .local v13, j:I
    :goto_259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v13, v1, :cond_3a7

    .line 911
    const-string v1, "starting..."

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$37(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 915
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 916
    const v1, 0x7f080098

    const/4 v2, -0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 919
    .end local v13           #j:I
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->init:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$40(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$57(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rRight:F
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$41(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rBottom:F
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$42(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Orig Rect::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Matrix of imageView:::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zoom_M:::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 930
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #bytes:[B
    .end local v12           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v14           #pixelBuffer:Ljava/nio/ByteBuffer;
    .end local v15           #r:Landroid/graphics/Rect;
    .end local v16           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_3a6
    :goto_3a6
    return-void

    .line 884
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #bytes:[B
    .restart local v12       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v13       #j:I
    .restart local v14       #pixelBuffer:Ljava/nio/ByteBuffer;
    .restart local v15       #r:Landroid/graphics/Rect;
    .restart local v16       #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_3a7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5b5

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_5b5

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1ZL::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2ZL::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SEt matrix::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/Element;->getMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 890
    const/16 v1, 0x9

    new-array v9, v1, [F

    .line 891
    .local v9, array:[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "3ZL::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "4ZL::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "5ZL::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$37(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->init:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$40(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rRight:F
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$41(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rBottom:F
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$42(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Orig Rect::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Matrix of imageView:::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 907
    const v1, 0x7f080098

    const/4 v2, -0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto/16 :goto_3a6

    .line 883
    .end local v9           #array:[F
    :cond_5b5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_259
.end method
