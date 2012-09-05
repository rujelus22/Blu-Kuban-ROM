.class Lcom/google/android/apps/books/render/WebViewRendererModel$1;
.super Lcom/google/android/apps/books/render/StubReaderListener;
.source "WebViewRendererModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/WebViewRendererModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/WebViewRendererModel;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-direct {p0}, Lcom/google/android/apps/books/render/StubReaderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 254
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    const-string v0, "WebViewRenderer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    const-string v0, "WebViewRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_e
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 262
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    const-string v0, "WebViewRenderer"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    const-string v0, "WebViewRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_e
    return-void
.end method

.method public onChapterReady(ILcom/google/android/apps/books/util/PassagePaginationResult;)V
    .registers 4
    .parameter "passageIndex"
    .parameter "paginationResult"

    .prologue
    .line 169
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mPageBoundsPerPassage:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$200(Lcom/google/android/apps/books/render/WebViewRendererModel;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    return-void
.end method

.method public onInvalidPosition(II)V
    .registers 6
    .parameter "margin"
    .parameter "requestId"

    .prologue
    .line 161
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$000(Lcom/google/android/apps/books/render/WebViewRendererModel;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, cookie:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2, p1}, Lcom/google/android/apps/books/render/RendererListener;->onSpecialState(Ljava/lang/Object;II)V

    .line 165
    :cond_20
    return-void
.end method

.method public onLoadedRangeBounds(ILjava/util/List;)V
    .registers 4
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
    .line 246
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    .local p2, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/RendererListener;->onLoadedRangeBounds(ILjava/util/List;)V

    .line 249
    :cond_11
    return-void
.end method

.method public onNoHighlightFound(II)V
    .registers 7
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 227
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    const-string v1, "WebViewRenderer"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 228
    const-string v1, "WebViewRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNoHighlightFound() called with highlightSearch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$000(Lcom/google/android/apps/books/render/WebViewRendererModel;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, cookie:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/google/android/apps/books/render/RendererListener;->onNoHighlightFound(Ljava/lang/Object;I)V

    .line 234
    :cond_40
    return-void
.end method

.method public onPageLoaded(IILjava/lang/String;II)V
    .registers 18
    .parameter "passageIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 175
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v9

    if-nez v9, :cond_9

    .line 223
    :cond_8
    :goto_8
    return-void

    .line 179
    :cond_9
    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$000(Lcom/google/android/apps/books/render/WebViewRendererModel;)Ljava/util/Map;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, cookie:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_8

    .line 181
    const/4 v5, -0x1

    .line 182
    .local v5, pageTop:I
    const/4 v3, -0x1

    .line 183
    .local v3, pageBottom:I
    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mPageBoundsPerPassage:Landroid/util/SparseArray;
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$200(Lcom/google/android/apps/books/render/WebViewRendererModel;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/util/PassagePaginationResult;

    .line 184
    .local v6, pages:Lcom/google/android/apps/books/util/PassagePaginationResult;
    if-eqz v6, :cond_5f

    invoke-virtual {v6}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPagesCount()I

    move-result v9

    if-ge p2, v9, :cond_5f

    .line 185
    invoke-virtual {v6, p2}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPageBounds(I)Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    move-result-object v4

    .line 187
    .local v4, pageBounds:Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    if-eqz v4, :cond_39

    .line 188
    iget v5, v4, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    .line 189
    iget v3, v4, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    .line 199
    .end local v4           #pageBounds:Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    :cond_39
    :goto_39
    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$400(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    move-result-object v9

    invoke-interface {v9, p1, p2, v5, v3}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->takeSnapshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_aa

    .line 204
    new-instance v8, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v8, p3}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 208
    .local v8, position:Lcom/google/android/apps/books/common/Position;
    :goto_4a
    new-instance v2, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$500(Lcom/google/android/apps/books/render/WebViewRendererModel;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, p1, p2, v9}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/String;)V

    .line 221
    .local v2, newPosition:Lcom/google/android/apps/books/render/RenderPosition;
    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v9

    invoke-interface {v9, v2, v1, v0}, Lcom/google/android/apps/books/render/RendererListener;->onRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_8

    .line 191
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #newPosition:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v8           #position:Lcom/google/android/apps/books/common/Position;
    :cond_5f
    const-string v9, "WebViewRenderer"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mHasLoggedPageError:Z
    invoke-static {v9}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$300(Lcom/google/android/apps/books/render/WebViewRendererModel;)Z

    move-result v9

    if-nez v9, :cond_39

    .line 192
    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    const/4 v10, 0x1

    #setter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mHasLoggedPageError:Z
    invoke-static {v9, v10}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$302(Lcom/google/android/apps/books/render/WebViewRendererModel;Z)Z

    .line 193
    if-eqz v6, :cond_a7

    invoke-virtual {v6}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPagesCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, pagesCount:Ljava/lang/String;
    :goto_80
    const-string v9, "WebViewRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to find page index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in the pageBounds array of size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 193
    .end local v7           #pagesCount:Ljava/lang/String;
    :cond_a7
    const-string v7, "null"

    goto :goto_80

    .line 206
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_aa
    const/4 v8, 0x0

    .restart local v8       #position:Lcom/google/android/apps/books/common/Position;
    goto :goto_4a
.end method

.method public onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 6
    .parameter "requestId"
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    .line 239
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel$1;,"Lcom/google/android/apps/books/render/WebViewRendererModel.1;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;->this$0:Lcom/google/android/apps/books/render/WebViewRendererModel;

    #getter for: Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/books/render/RendererListener;->onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 242
    :cond_11
    return-void
.end method
