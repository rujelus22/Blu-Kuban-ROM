.class public final Lcom/google/android/apps/books/model/CarouselVolumeData;
.super Ljava/lang/Object;
.source "CarouselVolumeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/CarouselVolumeData$VolumesQuery;
    }
.end annotation


# instance fields
.field public final author:Ljava/lang/String;

.field public final buyUrl:Ljava/lang/String;

.field public final canonicalUrl:Ljava/lang/String;

.field public final coverUri:Landroid/net/Uri;

.field public final downloadFraction:D

.field public final isLimitedPreviewLocked:Z

.field public final pageCount:I

.field public final pageFraction:Ljava/lang/Double;

.field public final pinned:Z

.field public final preferredMode:I

.field public final resourceFraction:Ljava/lang/Double;

.field public final sectionFraction:Ljava/lang/Double;

.field public final slotIndex:I

.field public final title:Ljava/lang/String;

.field public final viewability:Ljava/lang/String;

.field public final volumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/database/Cursor;I)V
    .registers 10
    .parameter "account"
    .parameter "cursor"
    .parameter "slotIndex"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p2, :cond_b

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 89
    :cond_b
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 91
    :cond_17
    iput p3, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->slotIndex:I

    .line 92
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->coverUri:Landroid/net/Uri;

    .line 94
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->title:Ljava/lang/String;

    .line 95
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->author:Ljava/lang/String;

    .line 96
    const/16 v2, 0xe

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pageCount:I

    .line 99
    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->viewability:Ljava/lang/String;

    .line 100
    const/16 v2, 0xc

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->buyUrl:Ljava/lang/String;

    .line 101
    const/16 v2, 0xd

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, openAccess:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->viewability:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->buyUrl:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v0

    .line 104
    .local v0, access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->isLimitedPreviewLocked:Z

    .line 106
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->preferredMode:I

    .line 107
    const/4 v2, 0x7

    invoke-static {p2, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->sectionFraction:Ljava/lang/Double;

    .line 108
    const/16 v2, 0x8

    invoke-static {p2, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->resourceFraction:Ljava/lang/Double;

    .line 109
    const/16 v2, 0x9

    invoke-static {p2, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pageFraction:Ljava/lang/Double;

    .line 110
    iget v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->preferredMode:I

    iget-object v3, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->sectionFraction:Ljava/lang/Double;

    iget-object v4, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->resourceFraction:Ljava/lang/Double;

    iget-object v5, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pageFraction:Ljava/lang/Double;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->downloadFraction:D

    .line 113
    const/16 v2, 0xa

    invoke-static {p2, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getBoolean(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pinned:Z

    .line 114
    const/16 v2, 0xf

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/CarouselVolumeData;->canonicalUrl:Ljava/lang/String;

    .line 115
    return-void
.end method
