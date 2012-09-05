.class Lcom/google/android/apps/books/render/BasicReaderController$MyListener;
.super Ljava/lang/Object;
.source "BasicReaderController.java"

# interfaces
.implements Lcom/google/android/apps/books/render/ReaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/BasicReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/BasicReaderController;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;)V
    .registers 2
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;Lcom/google/android/apps/books/render/BasicReaderController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/render/ReaderListener;->d(Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/render/ReaderListener;->e(Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public onChapterReady(ILcom/google/android/apps/books/util/PassagePaginationResult;)V
    .registers 4
    .parameter "passageIndex"
    .parameter "paginationResult"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/ReaderListener;->onChapterReady(ILcom/google/android/apps/books/util/PassagePaginationResult;)V

    .line 596
    return-void
.end method

.method public onContentLoading()V
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onContentLoading()V

    .line 589
    return-void
.end method

.method public onContentReady()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onContentReady()V

    .line 603
    return-void
.end method

.method public onDocumentChanged()V
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onDocumentChanged()V

    .line 675
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "error"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/render/ReaderListener;->onError(Ljava/lang/Throwable;)V

    .line 685
    return-void
.end method

.method public onInvalidPosition(II)V
    .registers 6
    .parameter "margin"
    .parameter "requestId"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnInvalidPositionHandlers:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;

    .line 637
    .local v0, handler:Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;
    if-eqz v0, :cond_16

    .line 638
    invoke-interface {v0, p1}, Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;->run(I)V

    .line 645
    :goto_15
    return-void

    .line 640
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/books/render/ReaderListener;->onInvalidPosition(II)V

    goto :goto_15
.end method

.method public onJsApiReady()V
    .registers 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onJsApiReady()V

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 564
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderAlive:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1402(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 565
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 566
    return-void
.end method

.method public onLoadedRangeBounds(ILjava/util/List;)V
    .registers 5
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
    .line 667
    .local p2, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/ReaderListener;->onLoadedRangeBounds(ILjava/util/List;)V

    .line 668
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 669
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 670
    return-void
.end method

.method public onNearbyTextLoaded(Ljava/lang/String;I)V
    .registers 4
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/ReaderListener;->onNearbyTextLoaded(Ljava/lang/String;I)V

    .line 680
    return-void
.end method

.method public onNoHighlightFound(II)V
    .registers 5
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/ReaderListener;->onNoHighlightFound(II)V

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 651
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 652
    return-void
.end method

.method public onPageLoaded(IILjava/lang/String;II)V
    .registers 14
    .parameter "passageIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    .line 609
    const-string v0, "ReaderController"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 610
    const-string v0, "ReaderController"

    const-string v1, "onPageLoaded(%d, %d, %s, %d, %d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mPositionToPassage:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mLoadedPassages:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/books/render/ReaderListener;->onPageLoaded(IILjava/lang/String;II)V

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;

    .line 621
    .local v6, handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;
    if-eqz v6, :cond_72

    .line 622
    invoke-interface {v6, p1, p2, p3, p5}, Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;->run(IILjava/lang/String;I)V

    .line 627
    :cond_72
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnInvalidPositionHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v7}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 630
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 631
    return-void
.end method

.method public onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 8
    .parameter "requestId"
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    .line 657
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPassageTextReadyHandlers:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$600(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;

    .line 658
    .local v0, handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;
    if-eqz v0, :cond_15

    .line 659
    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;->run(ILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 661
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 662
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 663
    return-void
.end method

.method public onPreferencesApplied()V
    .registers 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onPreferencesApplied()V

    .line 579
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 580
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mSettingsApplied:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1702(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 581
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 582
    return-void
.end method

.method public onReaderInitialized()V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onReaderInitialized()V

    .line 571
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 572
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderInitialized:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1602(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 573
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$MyListener;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->advance()V
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1500(Lcom/google/android/apps/books/render/BasicReaderController;)V

    .line 574
    return-void
.end method
