.class public abstract Lcom/google/android/apps/books/widget/BaseBooksHomeView;
.super Ljava/lang/Object;
.source "BaseBooksHomeView.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/BooksHomeView;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mIsDeviceConnected:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "isDeviceConnected"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BaseBooksHomeView;->mContext:Landroid/content/Context;

    .line 24
    iput-boolean p2, p0, Lcom/google/android/apps/books/widget/BaseBooksHomeView;->mIsDeviceConnected:Z

    .line 25
    return-void
.end method


# virtual methods
.method public onDeviceConnectionChanged(Z)V
    .registers 2
    .parameter "connected"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/BaseBooksHomeView;->mIsDeviceConnected:Z

    .line 30
    return-void
.end method

.method protected setDownloadPercentText(Landroid/widget/TextView;Lcom/google/android/apps/books/model/CarouselVolumeData;Z)V
    .registers 11
    .parameter "view"
    .parameter "data"
    .parameter "showingOfflineUi"

    .prologue
    const/4 v6, 0x0

    .line 40
    iget-wide v2, p2, Lcom/google/android/apps/books/model/CarouselVolumeData;->downloadFraction:D

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 41
    .local v0, fractionInt:I
    iget-wide v2, p2, Lcom/google/android/apps/books/model/CarouselVolumeData;->downloadFraction:D

    invoke-static {v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v1

    .line 44
    .local v1, isFullyDownloaded:Z
    if-lez v0, :cond_11

    if-eqz v1, :cond_15

    :cond_11
    if-eqz p3, :cond_2e

    if-eqz v1, :cond_2e

    .line 48
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/books/widget/BaseBooksHomeView;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0051

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_2d
    return-void

    .line 51
    :cond_2e
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
.end method

.method protected shouldDimCover(Lcom/google/android/apps/books/model/CarouselVolumeData;)Z
    .registers 5
    .parameter "data"

    .prologue
    .line 56
    iget-wide v1, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->downloadFraction:D

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v0

    .line 58
    .local v0, isFullyDownloaded:Z
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/BaseBooksHomeView;->mIsDeviceConnected:Z

    if-nez v1, :cond_e

    if-nez v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
