.class public Lcom/google/android/apps/books/render/TextHighlightRenderer;
.super Ljava/lang/Object;
.source "TextHighlightRenderer.java"


# instance fields
.field private mMaskBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaskBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 118
    const/4 v0, 0x1

    .line 126
    .local v0, allocateBitmap:Z
    :goto_5
    if-eqz v0, :cond_f

    .line 129
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 132
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 119
    .end local v0           #allocateBitmap:Z
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_29

    .line 121
    :cond_22
    iget-object v1, p0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    const/4 v0, 0x1

    .restart local v0       #allocateBitmap:Z
    goto :goto_5

    .line 124
    .end local v0           #allocateBitmap:Z
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #allocateBitmap:Z
    goto :goto_5
.end method


# virtual methods
.method public paintHighlightRectangles(Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Canvas;)V
    .registers 24
    .parameter "verticalPageBounds"
    .parameter "pageContentRect"
    .parameter
    .parameter "canvas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    .line 45
    .local v18, width:I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 46
    .local v9, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 47
    .local v15, passageWidth:I
    const/4 v14, 0x0

    .line 50
    .local v14, passageOffset:I
    new-instance v13, Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    add-int/lit8 v5, v15, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    invoke-direct {v13, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .local v13, pageBounds:Landroid/graphics/Rect;
    const/4 v12, 0x0

    .line 60
    .local v12, maskBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 61
    .local v2, maskCanvas:Landroid/graphics/Canvas;
    const/4 v7, 0x0

    .line 63
    .local v7, maskPaint:Landroid/graphics/Paint;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 65
    .local v16, rect:Landroid/graphics/Rect;
    const-string v3, "TextHighlighter"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 66
    const-string v3, "TextHighlighter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Highlighting rectangle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_55
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .local v17, rectCopy:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v11

    .line 73
    .local v11, intersects:Z
    if-eqz v11, :cond_b6

    .line 74
    if-nez v2, :cond_89

    .line 75
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/google/android/apps/books/render/TextHighlightRenderer;->getMaskBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 79
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #maskCanvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/render/TextHighlightRenderer;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .restart local v2       #maskCanvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    new-instance v7, Landroid/graphics/Paint;

    .end local v7           #maskPaint:Landroid/graphics/Paint;
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .restart local v7       #maskPaint:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    :cond_89
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 89
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_24

    .line 92
    :cond_b6
    const-string v3, "TextHighlighter"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 93
    const-string v3, "TextHighlighter"

    const-string v4, "rectangle did not intersect page and therefore not getting drawn"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 98
    .end local v11           #intersects:Z
    .end local v16           #rect:Landroid/graphics/Rect;
    .end local v17           #rectCopy:Landroid/graphics/Rect;
    :cond_c8
    if-eqz v12, :cond_e0

    .line 99
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .local v8, copyPaint:Landroid/graphics/Paint;
    const/16 v3, -0x100

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/16 v3, 0x3f

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    .end local v8           #copyPaint:Landroid/graphics/Paint;
    :cond_e0
    return-void
.end method
