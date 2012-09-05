.class public interface abstract Lcom/google/android/apps/books/widget/BooksHomeView;
.super Ljava/lang/Object;
.source "BooksHomeView.java"


# virtual methods
.method public abstract moveToHome()V
.end method

.method public abstract onDeviceConnectionChanged(Z)V
.end method

.method public abstract refreshManageOfflineUi()V
.end method

.method public abstract setVolumeData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract toggleMakeAvailableOffline(I)V
.end method
