.class public interface abstract Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
.super Ljava/lang/Object;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReaderDelegate"
.end annotation


# virtual methods
.method public abstract getPassageIndexForPosition(Lcom/google/android/apps/books/common/Position;)I
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onFadeInComplete()V
.end method

.method public abstract onFinishedSpeaking()V
.end method

.method public abstract onNoHighlightFound(I)V
.end method

.method public abstract onPositionChanged(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
.end method

.method public abstract toggleChrome()V
.end method
