.class public Lcom/google/android/apps/books/render/StubReaderListener;
.super Ljava/lang/Object;
.source "StubReaderListener.java"

# interfaces
.implements Lcom/google/android/apps/books/render/ReaderListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 71
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 75
    return-void
.end method

.method public onChapterReady(ILcom/google/android/apps/books/util/PassagePaginationResult;)V
    .registers 3
    .parameter "chapterIndex"
    .parameter "paginationResult"

    .prologue
    .line 37
    return-void
.end method

.method public onContentLoading()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public onContentReady()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public onDocumentChanged()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 67
    return-void
.end method

.method public onInvalidPosition(II)V
    .registers 3
    .parameter "margin"
    .parameter "requestId"

    .prologue
    .line 50
    return-void
.end method

.method public onJsApiReady()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public onLoadedRangeBounds(ILjava/util/List;)V
    .registers 3
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
    .line 63
    .local p2, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public onNearbyTextLoaded(Ljava/lang/String;I)V
    .registers 3
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 83
    return-void
.end method

.method public onNoHighlightFound(II)V
    .registers 3
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 54
    return-void
.end method

.method public onPageLoaded(IILjava/lang/String;II)V
    .registers 6
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 46
    return-void
.end method

.method public onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 5
    .parameter "requestId"
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    .line 59
    return-void
.end method

.method public onPreferencesApplied()V
    .registers 1

    .prologue
    .line 29
    return-void
.end method

.method public onReaderInitialized()V
    .registers 1

    .prologue
    .line 25
    return-void
.end method
