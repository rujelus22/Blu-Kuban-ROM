.class Lcom/google/android/apps/books/widget/PageTurnView$2;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/render/RendererListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/render/RendererListener",
        "<",
        "Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEndView(I)Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .registers 3
    .parameter "slot"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2600(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v0

    if-eqz v0, :cond_17

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_17

    .line 1303
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getBlankPageView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    .line 1305
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getEndView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_16
.end method

.method private redrawPages(Ljava/util/Set;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1390
    .local p1, pages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1391
    .local v2, slot:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v1

    .line 1392
    .local v1, position:Lcom/google/android/apps/books/render/RenderPosition;
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;IZ)V
    invoke-static {v3, v1, v4, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3700(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;IZ)V

    goto :goto_4

    .line 1394
    .end local v1           #position:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v2           #slot:Ljava/lang/Integer;
    :cond_30
    return-void
.end method

.method private turnToPage(II)V
    .registers 6
    .parameter "passageIndex"
    .parameter "pageIndex"

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    new-instance v2, Lcom/google/android/apps/books/render/RenderPosition;

    invoke-direct {v2, p1, p2}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(II)V

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3402(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    .line 1385
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V

    .line 1386
    .local v0, task:Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3600(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    .line 1387
    return-void
.end method


# virtual methods
.method public onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;)V
    .registers 3
    .parameter "position"
    .parameter "cookie"

    .prologue
    .line 1367
    return-void
.end method

.method public bridge synthetic onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1219
    check-cast p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;)V

    return-void
.end method

.method public onLoadedRangeBounds(ILjava/util/List;)V
    .registers 14
    .parameter "requestId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v10, 0x3

    .line 1398
    const-string v7, "PageTurnView"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1399
    const-string v7, "PageTurnView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onLoadedRangeBounds() called with rectangles "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v7, "PageTurnView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current page index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v9}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v9

    iget v9, v9, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_41
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightBoundsRequestId:I
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3800(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v7

    if-eq p1, v7, :cond_4a

    .line 1464
    :cond_49
    :goto_49
    return-void

    .line 1408
    :cond_4a
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;
    invoke-static {v7, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2202(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/util/List;)Ljava/util/List;

    .line 1410
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/TextRange;

    move-result-object v7

    if-eqz v7, :cond_49

    .line 1415
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v7

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v7

    instance-of v7, v7, Lcom/google/android/apps/books/render/WebViewRenderer;

    if-eqz v7, :cond_49

    .line 1421
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/TextRange;

    move-result-object v7

    iget v6, v7, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    .line 1422
    .local v6, ttsPassageIndex:I
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->getCurrentRelativeSlots()Ljava/util/Set;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3900(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/util/Set;

    move-result-object v2

    .line 1423
    .local v2, currentSlots:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-virtual {v7, v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->getPaginationResultFor(I)Lcom/google/android/apps/books/util/PassagePaginationResult;

    move-result-object v4

    .line 1425
    .local v4, pages:Lcom/google/android/apps/books/util/PassagePaginationResult;
    invoke-static {p2}, Lcom/google/android/apps/books/util/MathUtils;->getBoundingRect(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1426
    .local v1, boundingRect:Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1427
    .local v5, topOfHighlight:I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1430
    .local v0, botOfHighlight:I
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    iget v7, v7, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    if-ne v6, v7, :cond_d9

    .line 1431
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    iget v7, v7, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-virtual {v4, v7}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPageBounds(I)Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->intersects(II)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 1435
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    iget v3, v7, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    .line 1444
    .local v3, newPageIndex:I
    :goto_b5
    const/4 v7, -0x1

    if-ne v3, v7, :cond_df

    .line 1448
    invoke-virtual {v4}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getBottomOfLastPage()I

    move-result v7

    if-le v5, v7, :cond_c4

    .line 1449
    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/google/android/apps/books/widget/PageTurnView$2;->turnToPage(II)V

    .line 1463
    :cond_c4
    :goto_c4
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/widget/PageTurnView$2;->redrawPages(Ljava/util/Set;)V

    goto :goto_49

    .line 1437
    .end local v3           #newPageIndex:I
    :cond_c8
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    iget v7, v7, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPageIndexForPosition(ILjava/lang/Integer;)I

    move-result v3

    .restart local v3       #newPageIndex:I
    goto :goto_b5

    .line 1441
    .end local v3           #newPageIndex:I
    :cond_d9
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPageIndexForPosition(ILjava/lang/Integer;)I

    move-result v3

    .restart local v3       #newPageIndex:I
    goto :goto_b5

    .line 1451
    :cond_df
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    iget v7, v7, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    if-eq v6, v7, :cond_ed

    .line 1452
    invoke-direct {p0, v6, v3}, Lcom/google/android/apps/books/widget/PageTurnView$2;->turnToPage(II)V

    goto :goto_c4

    .line 1453
    :cond_ed
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v7

    iget v7, v7, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    if-eq v3, v7, :cond_c4

    .line 1455
    const-string v7, "PageTurnView"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_117

    .line 1456
    const-string v7, "PageTurnView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "turning to next page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_117
    invoke-direct {p0, v6, v3}, Lcom/google/android/apps/books/widget/PageTurnView$2;->turnToPage(II)V

    goto :goto_c4
.end method

.method public onNoHighlightFound(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;I)V
    .registers 8
    .parameter "cookie"
    .parameter "highlightSearch"

    .prologue
    .line 1468
    if-nez p1, :cond_24

    .line 1469
    const-string v1, "PageTurnView"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1470
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNoHighlightFound null cookie, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_23
    :goto_23
    return-void

    .line 1476
    :cond_24
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mLastHighlight:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;Ljava/lang/String;)V

    .line 1478
    .local v0, position:Lcom/google/android/apps/books/render/RenderPosition;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;IZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3700(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;IZ)V

    .line 1480
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onNoHighlightFound(I)V

    goto :goto_23
.end method

.method public bridge synthetic onNoHighlightFound(Ljava/lang/Object;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1219
    check-cast p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onNoHighlightFound(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;I)V

    return-void
.end method

.method public onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 8
    .parameter "requestId"
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3300(Lcom/google/android/apps/books/widget/PageTurnView;Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v0

    .local v0, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz v0, :cond_c

    .line 1379
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/books/tts/TextToSpeechController;->setPassageText(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 1381
    :cond_c
    return-void
.end method

.method public onRenderError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onError(Ljava/lang/Exception;)V

    .line 1291
    return-void
.end method

.method public onRendered(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "position"
    .parameter "cookie"
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x3

    .line 1224
    const-string v1, "PageTurnView"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1225
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRendered() for position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fraction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_3c
    iget-object v1, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    if-nez v1, :cond_61

    const-string v1, "PageTurnView"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1230
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing reading position for position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_61
    if-nez p2, :cond_73

    .line 1235
    const-string v1, "PageTurnView"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1236
    const-string v1, "PageTurnView"

    const-string v2, "Ignoring render result for unknown request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_72
    :goto_72
    return-void

    .line 1241
    :cond_73
    iget-object v1, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1242
    const-string v1, "PageTurnView"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1243
    const-string v1, "PageTurnView"

    const-string v2, "Ignoring render result for old base position"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1248
    :cond_91
    iget v1, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->rendererSequenceNumber:I

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v2

    if-eq v1, v2, :cond_ab

    .line 1249
    const-string v1, "PageTurnView"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1250
    const-string v1, "PageTurnView"

    const-string v2, "Ignoring render result for old rendering context"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 1255
    :cond_ab
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1900(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1259
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1900(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/RenderPosition;

    .line 1260
    .local v0, normalizedAnchor:Lcom/google/android/apps/books/render/RenderPosition;
    if-eqz v0, :cond_cf

    .line 1261
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$902(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    .line 1266
    :cond_cf
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->finishPositionUpdate()V
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 1268
    if-eqz p3, :cond_11d

    .line 1270
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/TextRange;

    move-result-object v1

    if-eqz v1, :cond_114

    iget v1, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/TextRange;

    move-result-object v2

    iget v2, v2, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    if-ne v1, v2, :cond_114

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2200(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 1274
    const-string v1, "PageTurnView"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 1275
    const-string v1, "PageTurnView"

    const-string v2, "Applying highlight rects to page"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_101
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2200(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/google/android/apps/books/render/ReaderRenderer;->paintHighlightRectangles(IILandroid/graphics/Bitmap;Ljava/util/List;)V

    .line 1282
    :cond_114
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->setPageToBitmap(ILandroid/graphics/Bitmap;)V
    invoke-static {v1, v2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2400(Lcom/google/android/apps/books/widget/PageTurnView;ILandroid/graphics/Bitmap;)V

    goto/16 :goto_72

    .line 1284
    :cond_11d
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->setPageError(I)V
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2500(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    goto/16 :goto_72
.end method

.method public bridge synthetic onRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1219
    check-cast p2, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onRendered(Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSpecialState(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;II)V
    .registers 9
    .parameter "cookie"
    .parameter "specialState"
    .parameter "margin"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x3

    .line 1311
    if-nez p1, :cond_14

    .line 1312
    const-string v1, "PageTurnView"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1313
    const-string v1, "PageTurnView"

    const-string v2, "Ignoring special state for null cookie"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_13
    :goto_13
    return-void

    .line 1318
    :cond_14
    iget-object v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->basePosition:Lcom/google/android/apps/books/common/Position;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 1319
    const-string v1, "PageTurnView"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1320
    const-string v1, "PageTurnView"

    const-string v2, "Ignoring special state for old base position"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1325
    :cond_32
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    const-string v2, "missing SpecialViews"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string v1, "PageTurnView"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1328
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSpecialState() for targetSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_5f
    const/4 v0, 0x0

    .line 1332
    .local v0, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    packed-switch p2, :pswitch_data_d8

    .line 1358
    :goto_63
    if-eqz v0, :cond_13

    .line 1359
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1360
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3200(Lcom/google/android/apps/books/widget/PageTurnView;ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    goto :goto_13

    .line 1334
    :pswitch_78
    if-ge p3, v4, :cond_85

    .line 1336
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getBlankPageView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_63

    .line 1337
    :cond_85
    if-ne p3, v4, :cond_a7

    .line 1340
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->maxIgnoringNull(Ljava/lang/Integer;I)I
    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2900(Ljava/lang/Integer;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2802(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1341
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getStartView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_63

    .line 1342
    :cond_a7
    if-nez p3, :cond_c5

    .line 1344
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->minIgnoringNull(Ljava/lang/Integer;I)I
    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3100(Ljava/lang/Integer;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3002(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1345
    iget v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView$2;->getEndView(I)Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_63

    .line 1347
    :cond_c5
    iget v1, p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;->targetSlot:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView$2;->getEndView(I)Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    .line 1349
    goto :goto_63

    .line 1352
    :pswitch_cc
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$2;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getGapView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    goto :goto_63

    .line 1332
    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_78
    .end packed-switch
.end method

.method public bridge synthetic onSpecialState(Ljava/lang/Object;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1219
    check-cast p1, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView$2;->onSpecialState(Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;II)V

    return-void
.end method
