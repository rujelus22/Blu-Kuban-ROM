.class public interface abstract Lcom/google/android/apps/books/render/ReaderListener;
.super Ljava/lang/Object;
.source "ReaderListener.java"


# virtual methods
.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract onChapterReady(ILcom/google/android/apps/books/util/PassagePaginationResult;)V
.end method

.method public abstract onContentLoading()V
.end method

.method public abstract onContentReady()V
.end method

.method public abstract onDocumentChanged()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onInvalidPosition(II)V
.end method

.method public abstract onJsApiReady()V
.end method

.method public abstract onLoadedRangeBounds(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNearbyTextLoaded(Ljava/lang/String;I)V
.end method

.method public abstract onNoHighlightFound(II)V
.end method

.method public abstract onPageLoaded(IILjava/lang/String;II)V
.end method

.method public abstract onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
.end method

.method public abstract onPreferencesApplied()V
.end method

.method public abstract onReaderInitialized()V
.end method
