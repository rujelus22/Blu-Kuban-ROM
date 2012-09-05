.class Lcom/google/android/apps/books/render/WebViewRenderer$Reader;
.super Lcom/google/android/apps/books/render/BasicReaderController;
.source "WebViewRenderer.java"

# interfaces
.implements Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRenderer;Lcom/google/android/apps/books/render/ReaderListener;)V
    .registers 5
    .parameter
    .parameter "listener"

    .prologue
    .line 453
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Reader;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Reader;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    .line 454
    new-instance v0, Lcom/google/android/apps/books/render/BasicTextReader;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mJavaScript:Lcom/google/android/apps/books/render/JavaScriptExecutor;
    invoke-static {p1}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$800(Lcom/google/android/apps/books/render/WebViewRenderer;)Lcom/google/android/apps/books/render/JavaScriptExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/render/BasicTextReader;-><init>(Lcom/google/android/apps/books/render/JavaScriptExecutor;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/render/BasicReaderController;-><init>(Lcom/google/android/apps/books/render/TextReader;Lcom/google/android/apps/books/render/ReaderListener;)V

    .line 455
    return-void
.end method


# virtual methods
.method public takeSnapshot(IIII)Landroid/graphics/Bitmap;
    .registers 26
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "pageTop"
    .parameter "pageBottom"

    .prologue
    .line 459
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer$Reader;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Reader;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->getPageWidth()I
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)I

    move-result v19

    .line 460
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #calls: Lcom/google/android/apps/books/render/WebViewRenderer;->getPageHeight()I
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1000(Lcom/google/android/apps/books/render/WebViewRenderer;)I

    move-result v10

    .line 462
    .local v10, height:I
    if-lez v19, :cond_14

    if-gtz v10, :cond_1c

    .line 463
    :cond_14
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "invalid WebView size"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_1c
    const-string v2, "WebViewRenderer"

    const/4 v6, 0x3

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 466
    const-string v2, "WebViewRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "takeSnapshot() with w="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v20, ", h="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_75

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v10, :cond_bd

    .line 472
    :cond_75
    const-string v2, "WebViewRenderer"

    const/4 v6, 0x3

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 473
    const-string v2, "WebViewRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Creating new WebView snapshot bitmap with dimensions ("

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v10, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1102(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 479
    :cond_bd
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 482
    .local v1, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v11

    .line 484
    .local v11, isNightMode:Z
    const-string v2, "WebViewRenderer"

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 485
    const v7, -0xff0001

    .line 489
    .local v7, backgroundColor:I
    :goto_e6
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    .line 492
    .local v14, parentHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    .line 494
    .local v15, parentWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1300(Lcom/google/android/apps/books/render/WebViewRenderer;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v12, v14, v2

    .line 495
    .local v12, pageHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1400(Lcom/google/android/apps/books/render/WebViewRenderer;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v13, v15, v2

    .line 499
    .local v13, pageWidth:I
    const/16 v17, 0x0

    .line 502
    .local v17, translateX:I
    if-ltz p3, :cond_184

    if-ltz p4, :cond_184

    .line 503
    move/from16 v18, p3

    .line 504
    .local v18, translateY:I
    sub-int v16, p4, p3

    .line 511
    .local v16, textHeight:I
    :goto_123
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v8

    .line 512
    .local v8, canvasSave:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1400(Lcom/google/android/apps/books/render/WebViewRenderer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    move/from16 v0, v18

    neg-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1300(Lcom/google/android/apps/books/render/WebViewRenderer;)I

    move-result v20

    add-int v6, v6, v20

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 513
    const/4 v9, 0x0

    .line 514
    .local v9, clipLeft:F
    move/from16 v0, v18

    int-to-float v3, v0

    .line 515
    .local v3, clipTop:F
    add-int/lit8 v2, v13, 0x0

    int-to-float v4, v2

    .line 516
    .local v4, clipRight:F
    add-int v2, v16, v18

    int-to-float v5, v2

    .line 517
    .local v5, clipBottom:F
    const/4 v2, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 519
    const-string v2, "WebViewRenderer"

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_165

    .line 520
    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 524
    :cond_165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$700(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 526
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->this$0:Lcom/google/android/apps/books/render/WebViewRenderer;

    #getter for: Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/books/render/WebViewRenderer;->access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 487
    .end local v3           #clipTop:F
    .end local v4           #clipRight:F
    .end local v5           #clipBottom:F
    .end local v7           #backgroundColor:I
    .end local v8           #canvasSave:I
    .end local v9           #clipLeft:F
    .end local v12           #pageHeight:I
    .end local v13           #pageWidth:I
    .end local v14           #parentHeight:I
    .end local v15           #parentWidth:I
    .end local v16           #textHeight:I
    .end local v17           #translateX:I
    .end local v18           #translateY:I
    :cond_17c
    if-eqz v11, :cond_182

    const/high16 v7, -0x100

    .restart local v7       #backgroundColor:I
    :goto_180
    goto/16 :goto_e6

    .end local v7           #backgroundColor:I
    :cond_182
    const/4 v7, -0x1

    goto :goto_180

    .line 507
    .restart local v7       #backgroundColor:I
    .restart local v12       #pageHeight:I
    .restart local v13       #pageWidth:I
    .restart local v14       #parentHeight:I
    .restart local v15       #parentWidth:I
    .restart local v17       #translateX:I
    :cond_184
    mul-int v18, p2, v12

    .line 508
    .restart local v18       #translateY:I
    move/from16 v16, v12

    .restart local v16       #textHeight:I
    goto :goto_123
.end method
