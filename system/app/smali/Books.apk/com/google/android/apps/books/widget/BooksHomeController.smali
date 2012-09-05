.class public interface abstract Lcom/google/android/apps/books/widget/BooksHomeController;
.super Ljava/lang/Object;
.source "BooksHomeController.java"


# virtual methods
.method public abstract blockingGetFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCoverLoadEnsurer(Landroid/net/Uri;)Lcom/google/android/apps/books/common/ImageManager$Ensurer;
.end method

.method public abstract getDetailView()Landroid/view/View;
.end method

.method public abstract getExternalStorageExceptionRunnable()Ljava/lang/Runnable;
.end method

.method public abstract isPinned(Ljava/lang/String;)Z
.end method

.method public abstract isShowingOfflineUi()Z
.end method

.method public abstract openBookInReader(Ljava/lang/String;)V
.end method

.method public abstract populateBookMenu(Ljava/lang/String;Landroid/view/Menu;)V
.end method

.method public abstract togglePinned(Ljava/lang/String;)V
.end method
