.class public Lcom/google/android/apps/books/render/WebViewRendererModel;
.super Ljava/lang/Object;
.source "WebViewRendererModel.java"

# interfaces
.implements Lcom/google/android/apps/books/render/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/render/Renderer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCurrentHighlight:Ljava/lang/String;

.field private mHasLoggedPageError:Z

.field private mListener:Lcom/google/android/apps/books/render/RendererListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mPageBoundsPerPassage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/util/PassagePaginationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

.field private final mReaderListener:Lcom/google/android/apps/books/render/ReaderListener;

.field private final mRequestIdToCookie:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mPageBoundsPerPassage:Landroid/util/SparseArray;

    .line 63
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;

    .line 157
    new-instance v0, Lcom/google/android/apps/books/render/WebViewRendererModel$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/render/WebViewRendererModel$1;-><init>(Lcom/google/android/apps/books/render/WebViewRendererModel;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderListener:Lcom/google/android/apps/books/render/ReaderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/render/WebViewRendererModel;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/RendererListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/render/WebViewRendererModel;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mPageBoundsPerPassage:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/render/WebViewRendererModel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mHasLoggedPageError:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/books/render/WebViewRendererModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mHasLoggedPageError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/render/WebViewRendererModel;)Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/render/WebViewRendererModel;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public canProvideText()Z
    .registers 2

    .prologue
    .line 130
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public cancelPendingRequests()V
    .registers 2

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    invoke-interface {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->clearPendingTasks()V

    .line 95
    return-void
.end method

.method public dispatchError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 275
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/render/RendererListener;->onRenderError(Ljava/lang/Exception;)V

    .line 278
    :cond_9
    return-void
.end method

.method public getPageBoundsForPassage(I)Lcom/google/android/apps/books/util/PassagePaginationResult;
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mPageBoundsPerPassage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/PassagePaginationResult;

    return-object v0
.end method

.method public getReaderListener()Lcom/google/android/apps/books/render/ReaderListener;
    .registers 2

    .prologue
    .line 270
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderListener:Lcom/google/android/apps/books/render/ReaderListener;

    return-object v0
.end method

.method public isPassageForbidden(I)Z
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->isPassageForbidden(I)Z

    move-result v0

    return v0
.end method

.method public loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I
    .registers 3
    .parameter "range"

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I

    move-result v0

    return v0
.end method

.method public paintHighlightRectangles(IILandroid/graphics/Bitmap;Ljava/util/List;)V
    .registers 7
    .parameter "passageIndex"
    .parameter "pageIndex"
    .parameter "bitmap"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    .local p4, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WebViewRendererModel#paintHighlightRectangles"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPassageText(ILjava/lang/String;)I
    .registers 4
    .parameter "passageIndex"
    .parameter "position"

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->requestPassageText(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .registers 11
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    const-string v0, "WebViewRenderer"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 100
    const-string v0, "WebViewRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRenderPage called with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_21
    iget-object v0, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 105
    :cond_2f
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    iget-object v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->setHighlight(Ljava/lang/String;)V

    .line 106
    iget-object v0, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    .line 109
    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    iget v1, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v2, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v7

    .line 112
    .local v7, requestId:I
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_5c
    return-void

    .line 113
    .end local v7           #requestId:I
    :cond_5d
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidPosition()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 114
    iget-object v0, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, positionString:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossiblePassageIndexForPosition(Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, passageIndex:I
    invoke-static {v2}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 118
    const/4 v4, 0x0

    .line 119
    .local v4, fallbackChapterIndex:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    iget v3, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v7

    .line 122
    .restart local v7       #requestId:I
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRequestIdToCookie:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 124
    .end local v1           #passageIndex:I
    .end local v2           #positionString:Ljava/lang/String;
    .end local v4           #fallbackChapterIndex:Ljava/lang/Integer;
    .end local v7           #requestId:I
    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "request missing both indices and position"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setJavascriptReader(Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;)V
    .registers 2
    .parameter "client"

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    .line 67
    return-void
.end method

.method public setReaderSettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V
    .registers 5
    .parameter "rs"
    .parameter "displayDensity"
    .parameter "pageHeight"

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V

    .line 83
    return-void
.end method

.method public setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    .local p1, listener:Lcom/google/android/apps/books/render/RendererListener;,"Lcom/google/android/apps/books/render/RendererListener<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    .line 90
    return-void
.end method

.method public setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .registers 7
    .parameter "volumeMetadata"

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 71
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterJsonArray()Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->getVolumeCssLocalUrisJsonArray()Lorg/json/JSONArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;->initializeJavascript(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 76
    :cond_1f
    return-void
.end method
