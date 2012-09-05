.class public Lcom/google/android/apps/books/model/VolumeMetadata;
.super Ljava/lang/Object;
.source "VolumeMetadata.java"

# interfaces
.implements Lcom/google/android/apps/books/util/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/VolumeMetadata$VolumeStatesQuery;,
        Lcom/google/android/apps/books/model/VolumeMetadata$VolumesQuery;
    }
.end annotation


# instance fields
.field public access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field public adapterChapters:Landroid/database/Cursor;

.field public buyUrl:Ljava/lang/String;

.field public canonicalUrl:Ljava/lang/String;

.field public creator:Ljava/lang/CharSequence;

.field public date:Ljava/lang/CharSequence;

.field public fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public hasImageMode:Z

.field public hasTextMode:Z

.field public lastPageTitle:Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field private mChapters:Landroid/database/Cursor;

.field private volatile mClosed:Z

.field private mDefaultPosition:Lcom/google/android/apps/books/common/Position;

.field private mIsInMyEBooksCollection:Z

.field private mLastAccess:J

.field private mLastMode:I

.field private mLastPosition:Lcom/google/android/apps/books/common/Position;

.field private mPages:Landroid/database/Cursor;

.field private mPagesToTrimmed:[I

.field private mPinned:Z

.field private mPreferredMode:I

.field private mSections:Landroid/database/Cursor;

.field private mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

.field private mTextZoom:F

.field private mTrimmedToPages:[I

.field private mVolumeCssLocalUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public publisher:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;

.field public ttsPermission:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

.field public volumeId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    .line 80
    iput v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 81
    iput v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    .line 109
    iput-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    .line 117
    iput-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 6
    .parameter "volumeId"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    .line 80
    iput v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 81
    iput v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    .line 109
    iput-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    .line 117
    iput-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    .line 127
    const-string v0, "missing volumeid"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 128
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    .line 129
    return-void
.end method

.method public static buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 5
    .parameter "original"

    .prologue
    .line 600
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    return-object v0
.end method

.method private static buildPreviewGap(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 5
    .parameter "original"

    .prologue
    .line 604
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    return-object v0
.end method

.method private static buildStartOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 5
    .parameter "original"

    .prologue
    .line 596
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;II)V

    return-object v0
.end method

.method private buildTrimmedMappingLocked()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 644
    iget-object v13, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 645
    .local v3, pageCount:I
    new-array v5, v3, [I

    .line 646
    .local v5, pagesToTrimmed:[I
    new-array v9, v3, [I

    .line 648
    .local v9, trimmedToPages:[I
    const/4 v7, 0x0

    .line 649
    .local v7, trimmedIndex:I
    const/high16 v2, -0x8000

    .line 651
    .local v2, lastTrimmedValue:I
    const/4 v0, 0x0

    .line 652
    .local v0, gapCount:I
    const/4 v10, 0x0

    .line 655
    .local v10, validCount:I
    iget-object v13, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v14, -0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 656
    :goto_17
    iget-object v13, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_49

    .line 657
    iget-object v13, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 658
    .local v4, pageIndex:I
    iget-object v13, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v14, 0x7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v11, :cond_47

    move v1, v11

    .line 662
    .local v1, isForbidden:Z
    :goto_2f
    aput v7, v5, v4

    .line 665
    if-eqz v1, :cond_82

    const/4 v13, -0x2

    if-eq v2, v13, :cond_82

    .line 666
    const/4 v2, -0x2

    .line 667
    add-int/lit8 v8, v7, 0x1

    .end local v7           #trimmedIndex:I
    .local v8, trimmedIndex:I
    aput v2, v9, v7

    .line 668
    add-int/lit8 v0, v0, 0x1

    .line 672
    :goto_3d
    if-nez v1, :cond_80

    .line 673
    move v2, v4

    .line 674
    add-int/lit8 v7, v8, 0x1

    .end local v8           #trimmedIndex:I
    .restart local v7       #trimmedIndex:I
    aput v2, v9, v8

    .line 675
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .end local v1           #isForbidden:Z
    :cond_47
    move v1, v12

    .line 658
    goto :goto_2f

    .line 680
    .end local v4           #pageIndex:I
    :cond_49
    iput-object v5, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    .line 683
    if-eq v7, v3, :cond_7d

    .line 684
    new-array v6, v7, [I

    .line 685
    .local v6, temp:[I
    invoke-static {v9, v12, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iput-object v6, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    .line 691
    .end local v6           #temp:[I
    :goto_54
    const-string v11, "VolumeMetadata"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "buildPreviewGaps() found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " gaps and "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " valid pages"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 688
    :cond_7d
    iput-object v9, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    goto :goto_54

    .end local v7           #trimmedIndex:I
    .restart local v1       #isForbidden:Z
    .restart local v4       #pageIndex:I
    .restart local v8       #trimmedIndex:I
    :cond_80
    move v7, v8

    .end local v8           #trimmedIndex:I
    .restart local v7       #trimmedIndex:I
    goto :goto_17

    :cond_82
    move v8, v7

    .end local v7           #trimmedIndex:I
    .restart local v8       #trimmedIndex:I
    goto :goto_3d
.end method

.method private static clamp(III)I
    .registers 3
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 809
    if-ge p0, p1, :cond_3

    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static getChapterStartPositionLocked(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 9
    .parameter "chapters"
    .parameter "sections"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 493
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_18

    const/4 v0, 0x1

    .line 494
    .local v0, hasSections:Z
    :goto_9
    if-eqz v0, :cond_1a

    .line 495
    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, startSectionId:Ljava/lang/String;
    invoke-static {p1, v4, v3}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 498
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    .end local v3           #startSectionId:Ljava/lang/String;
    :goto_17
    return-object v1

    .end local v0           #hasSections:Z
    :cond_18
    move v0, v4

    .line 493
    goto :goto_9

    .line 502
    .restart local v0       #hasSections:Z
    :cond_1a
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, startPageId:Ljava/lang/String;
    move-object v1, v2

    .line 503
    goto :goto_17
.end method

.method private getDefaultPosition(Landroid/content/ContentResolver;)Lcom/google/android/apps/books/common/Position;
    .registers 13
    .parameter "resolver"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 704
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 705
    .local v10, volumeUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 707
    .local v1, sectionDirUri:Landroid/net/Uri;
    const-string v0, "first_chapter_start_segment_id"

    invoke-static {p1, v10, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, defaultSectionOrder:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "start_position"

    aput-object v0, v2, v5

    .line 711
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "segment_order=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 714
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 715
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 716
    .local v9, position:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v0, v9}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_57

    .line 723
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v9           #position:Ljava/lang/String;
    :goto_3d
    return-object v0

    .line 718
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 720
    .local v8, pageId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    invoke-static {v8}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_57

    .line 723
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .end local v8           #pageId:Ljava/lang/String;
    :catchall_57
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 734
    monitor-enter p0

    :try_start_1
    const-string v0, "VolumeMetadata"

    const-string v1, "VolumeMetadata.close() closing all cursors"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 737
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    .line 741
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 742
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    .line 746
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_44

    .line 747
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    .line 751
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_58

    .line 752
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 756
    :cond_58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 758
    monitor-exit p0

    return-void

    .line 734
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBookPreferredReadingMode()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    return v0
.end method

.method public declared-synchronized getChapterCount()I
    .registers 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterId(I)Ljava/lang/String;
    .registers 4
    .parameter "chapterIndex"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 443
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterIndex(Ljava/lang/String;)I
    .registers 4
    .parameter "chapterId"

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 448
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getChapterIndexForPageId(Ljava/lang/String;)I
    .registers 5
    .parameter "pageId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, chapterId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1c

    move-result v1

    monitor-exit p0

    return v1

    .line 460
    .end local v0           #chapterId:Ljava/lang/String;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getChapterJsonArray()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 625
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/TextContentMetadata;->passageJsonArray:Lorg/json/JSONArray;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterStartPosition(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;
    .registers 5
    .parameter "chapterId"

    .prologue
    .line 488
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 489
    new-instance v0, Lcom/google/android/apps/books/common/Position;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterStartPositionLocked(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 488
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterTitle(I)Ljava/lang/String;
    .registers 4
    .parameter "chapterIndex"

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 454
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 453
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChaptersCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 439
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultPosition()Lcom/google/android/apps/books/common/Position;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mDefaultPosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method public declared-synchronized getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I
    .registers 3
    .parameter "position"

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/TextContentMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEarliestPossiblePassageIndexForPosition(Ljava/lang/String;)I
    .registers 3
    .parameter "position"

    .prologue
    .line 478
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/TextContentMetadata;->getEarliestPossiblePassageIndexForPosition(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastAccess()J
    .registers 3

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastAccess:J

    return-wide v0
.end method

.method public declared-synchronized getPageCount()I
    .registers 2

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageId(I)Ljava/lang/String;
    .registers 4
    .parameter "pageIndex"

    .prologue
    .line 395
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 395
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageIndex(Lcom/google/android/apps/books/common/Position;)I
    .registers 4
    .parameter "position"

    .prologue
    .line 405
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, pageId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v1

    monitor-exit p0

    return v1

    .line 405
    .end local v0           #pageId:Ljava/lang/String;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .registers 4
    .parameter "pageId"

    .prologue
    .line 400
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 400
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageTitle(I)Ljava/lang/String;
    .registers 4
    .parameter "pageIndex"

    .prologue
    .line 410
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 410
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPagesCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 391
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPassageCount()I
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/TextContentMetadata;->passageJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getPosition()Lcom/google/android/apps/books/common/Position;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_7

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    .line 331
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getDefaultPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v0

    goto :goto_6
.end method

.method public declared-synchronized getStartPageIndex(I)I
    .registers 5
    .parameter "chapterIndex"

    .prologue
    .line 482
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 483
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, pageId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result v1

    monitor-exit p0

    return v1

    .line 482
    .end local v0           #pageId:Ljava/lang/String;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTextZoom()F
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextZoom:F

    return v0
.end method

.method public getUserPreferredReadingMode()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    return v0
.end method

.method public declared-synchronized getVolumeCssLocalUrisJsonArray()Lorg/json/JSONArray;
    .registers 3

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mVolumeCssLocalUris:Ljava/util/Set;

    const-string v1, "missing mVolumeCssLocalUris"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mVolumeCssLocalUris:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 637
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasReadableSections()Z
    .registers 4

    .prologue
    .line 608
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 609
    :goto_7
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 610
    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    move-result v0

    .line 611
    .local v0, contentStatus:I
    packed-switch v0, :pswitch_data_22

    goto :goto_7

    .line 614
    :pswitch_1a
    const/4 v1, 0x1

    .line 617
    .end local v0           #contentStatus:I
    :goto_1b
    monitor-exit p0

    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b

    .line 608
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 611
    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z

    return v0
.end method

.method public isInMyEBooksCollection()Z
    .registers 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mIsInMyEBooksCollection:Z

    return v0
.end method

.method public declared-synchronized isPageEnabled(Ljava/lang/String;I)Z
    .registers 8
    .parameter "pageId"
    .parameter "readingMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 419
    monitor-enter p0

    packed-switch p2, :pswitch_data_32

    move v1, v2

    .line 429
    :cond_7
    :goto_7
    monitor-exit p0

    return v1

    .line 421
    :pswitch_9
    :try_start_9
    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_7

    move v1, v2

    goto :goto_7

    .line 424
    :pswitch_1a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, chapterIndex:I
    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 426
    iget-object v3, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2e

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_7

    .line 419
    .end local v0           #chapterIndex:I
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method

.method public declared-synchronized isPassageForbidden(I)Z
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 629
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/TextContentMetadata;->isPassageForbidden(I)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPinned()Z
    .registers 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    return v0
.end method

.method public declared-synchronized normalizePosition(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 15
    .parameter "request"

    .prologue
    .line 518
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidPosition()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 519
    iget-object v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v10}, Lcom/google/android/apps/books/common/Position;->getPageId()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, pageId:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_fe
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_10} :catch_4a

    move-result v9

    .line 537
    .end local v3           #pageId:Ljava/lang/String;
    .local v9, volumePageIndex:I
    :goto_11
    :try_start_11
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    if-eqz v10, :cond_8b

    .line 540
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPagesToTrimmed:[I

    aget v8, v10, v9

    .line 541
    .local v8, trimmedIndex:I
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    add-int/2addr v8, v10

    .line 544
    if-gez v8, :cond_75

    .line 545
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildStartOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_fe

    move-result-object v10

    .line 592
    .end local v8           #trimmedIndex:I
    :goto_22
    monitor-exit p0

    return-object v10

    .line 522
    .end local v9           #volumePageIndex:I
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v10

    if-eqz v10, :cond_42

    .line 523
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v10, v11, v12}, Lcom/google/android/apps/books/model/VolumeMetadata;->clamp(III)I

    move-result v1

    .line 524
    .local v1, chapterIndex:I
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getStartPageIndex(I)I

    move-result v5

    .line 525
    .local v5, pageStartIndex:I
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    add-int v9, v5, v10

    .line 527
    .restart local v9       #volumePageIndex:I
    goto :goto_11

    .line 528
    .end local v1           #chapterIndex:I
    .end local v5           #pageStartIndex:I
    .end local v9           #volumePageIndex:I
    :cond_42
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "request missing both indices and position"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4a
    .catchall {:try_start_24 .. :try_end_4a} :catchall_fe
    .catch Ljava/util/NoSuchElementException; {:try_start_24 .. :try_end_4a} :catch_4a

    .line 530
    :catch_4a
    move-exception v2

    .line 533
    .local v2, e:Ljava/util/NoSuchElementException;
    :try_start_4b
    const-string v10, "VolumeMetadata"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalizePosition() in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v9, 0x0

    .restart local v9       #volumePageIndex:I
    goto :goto_11

    .line 546
    .end local v2           #e:Ljava/util/NoSuchElementException;
    .restart local v8       #trimmedIndex:I
    :cond_75
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    array-length v10, v10

    if-lt v8, v10, :cond_7f

    .line 547
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_22

    .line 551
    :cond_7f
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTrimmedToPages:[I

    aget v9, v10, v8

    .line 553
    const/4 v10, -0x2

    if-ne v9, v10, :cond_a2

    .line 554
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildPreviewGap(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_22

    .line 559
    .end local v8           #trimmedIndex:I
    :cond_8b
    iget v10, p1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    add-int/2addr v9, v10

    .line 562
    if-gez v9, :cond_95

    .line 563
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildStartOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_22

    .line 564
    :cond_95
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lt v9, v10, :cond_a2

    .line 565
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto :goto_22

    .line 569
    :cond_a2
    const-string v10, "VolumeMetadata"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalizePosition() found volumePageIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v10, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 573
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_cf

    .line 574
    invoke-static {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildPreviewGap(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v10

    goto/16 :goto_22

    .line 578
    :cond_cf
    iget-object v10, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, chapterId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterIndex(Ljava/lang/String;)I

    move-result v1

    .line 582
    .restart local v1       #chapterIndex:I
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getStartPageIndex(I)I

    move-result v7

    .line 583
    .local v7, startPageIndex:I
    sub-int v4, v9, v7

    .line 586
    .local v4, pageIndex:I
    if-ltz v4, :cond_101

    const/4 v10, 0x1

    :goto_e3
    const-string v11, "invalid page index"

    invoke-static {v10, v11}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 589
    invoke-virtual {p0, v9}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageId(I)Ljava/lang/String;

    move-result-object v3

    .line 590
    .restart local v3       #pageId:Ljava/lang/String;
    new-instance v6, Lcom/google/android/apps/books/common/Position;

    invoke-static {v3}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 592
    .local v6, position:Lcom/google/android/apps/books/common/Position;
    new-instance v10, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-direct {v10, v6, v1, v4, v11}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_4b .. :try_end_fc} :catchall_fe

    goto/16 :goto_22

    .line 518
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v1           #chapterIndex:I
    .end local v3           #pageId:Ljava/lang/String;
    .end local v4           #pageIndex:I
    .end local v6           #position:Lcom/google/android/apps/books/common/Position;
    .end local v7           #startPageIndex:I
    .end local v9           #volumePageIndex:I
    :catchall_fe
    move-exception v10

    monitor-exit p0

    throw v10

    .line 586
    .restart local v0       #chapterId:Ljava/lang/String;
    .restart local v1       #chapterIndex:I
    .restart local v4       #pageIndex:I
    .restart local v7       #startPageIndex:I
    .restart local v9       #volumePageIndex:I
    :cond_101
    const/4 v10, 0x0

    goto :goto_e3
.end method

.method public populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZ)V
    .registers 12
    .parameter "fetchService"
    .parameter "resolver"
    .parameter "updateVolumeOverview"
    .parameter "checkShelfMembership"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v6, 0x1

    .line 138
    .local v6, populateVolumeState:Z
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZZ)V

    .line 140
    return-void
.end method

.method public declared-synchronized populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZZ)V
    .registers 11
    .parameter "fetchService"
    .parameter "resolver"
    .parameter "populateVolumeState"
    .parameter "updateVolumeOverview"
    .parameter "checkShelfMembership"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    const-string v0, "missing fetchService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1, p4}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/books/provider/PublisherCssUtils;->calculateAndEnsureBookCssUris(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mVolumeCssLocalUris:Ljava/util/Set;

    .line 167
    invoke-virtual {p0, p2, p3, p5}, Lcom/google/android/apps/books/model/VolumeMetadata;->populateFromAfterEnsure(Landroid/content/ContentResolver;ZZ)V

    .line 170
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract;->requestManualVolumeContentSync(ZLandroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 172
    monitor-exit p0

    return-void

    .line 150
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized populateFromAfterEnsure(Landroid/content/ContentResolver;ZZ)V
    .registers 29
    .parameter "resolver"
    .parameter "populateVolumeState"
    .parameter "checkShelfMembership"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 180
    .local v3, pageDirUri:Landroid/net/Uri;
    sget-object v4, Lcom/google/android/apps/books/model/SectionContent$PageQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "page_order ASC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_43

    .line 183
    const-string v2, "VolumeMetadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing pages for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->lastPageTitle:Ljava/lang/String;

    .line 190
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 191
    .local v5, sectionDirUri:Landroid/net/Uri;
    sget-object v6, Lcom/google/android/apps/books/model/SectionContent$SectionQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "segment_order COLLATE NOCASE ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_9c

    .line 194
    const-string v2, "VolumeMetadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing sections for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_9c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 198
    .local v7, chapterDirUri:Landroid/net/Uri;
    sget-object v8, Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "chapter_order ASC"

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_de

    .line 201
    const-string v2, "VolumeMetadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing chapters for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_de
    const/16 v20, 0x1

    .line 210
    .local v20, includeEmptyPassages:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mChapters:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mSections:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPages:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-static {v2, v4, v6, v8}, Lcom/google/android/apps/books/model/TextContentMetadata;->from(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Z)Lcom/google/android/apps/books/model/TextContentMetadata;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    .line 213
    sget-object v8, Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "chapter_order ASC"

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_12b

    .line 216
    const-string v2, "VolumeMetadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing chapters for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_12b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 221
    .local v9, volumeUri:Landroid/net/Uri;
    sget-object v10, Lcom/google/android/apps/books/model/VolumeMetadata$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_141
    .catchall {:try_start_1 .. :try_end_141} :catchall_35f

    move-result-object v19

    .line 223
    .local v19, cursor:Landroid/database/Cursor;
    :try_start_142
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_351

    const/4 v2, 0x1

    :goto_14a
    const-string v4, "unexpected volumes cursor"

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 224
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_236

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    .line 226
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    .line 227
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->publisher:Ljava/lang/CharSequence;

    .line 228
    const/16 v2, 0x9

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->date:Ljava/lang/CharSequence;

    .line 229
    const/16 v2, 0xc

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->canonicalUrl:Ljava/lang/String;

    .line 231
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getDefaultPosition(Landroid/content/ContentResolver;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mDefaultPosition:Lcom/google/android/apps/books/common/Position;

    .line 232
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 234
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_354

    const/4 v2, 0x1

    :goto_1ac
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    .line 235
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_357

    const/4 v2, 0x1

    :goto_1ba
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    .line 237
    const/16 v2, 0xb

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->ttsPermission:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    .line 242
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 243
    .local v24, viewability:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->buyUrl:Ljava/lang/String;

    .line 244
    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 246
    .local v22, openAccess:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->buyUrl:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 247
    const-string v2, "VolumeMetadata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VolumeMetadata found vid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with access="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 250
    .local v21, isSample:Z
    if-eqz v21, :cond_236

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    if-eqz v2, :cond_236

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildTrimmedMappingLocked()V
    :try_end_236
    .catchall {:try_start_142 .. :try_end_236} :catchall_35a

    .line 257
    .end local v21           #isSample:Z
    .end local v22           #openAccess:Ljava/lang/String;
    .end local v24           #viewability:Ljava/lang/String;
    :cond_236
    :try_start_236
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->hasReadableSections()Z

    move-result v2

    if-nez v2, :cond_244

    .line 262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    .line 266
    :cond_244
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    if-nez v2, :cond_25c

    .line 267
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    if-eqz v2, :cond_362

    const/4 v2, 0x2

    :goto_258
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 269
    :cond_25c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_274

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    if-nez v2, :cond_274

    .line 270
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    if-eqz v2, :cond_365

    const/4 v2, 0x1

    :goto_270
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPreferredMode:I

    .line 273
    :cond_274
    if-eqz p2, :cond_307

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 275
    .local v11, stateUri:Landroid/net/Uri;
    sget-object v12, Lcom/google/android/apps/books/model/VolumeMetadata$VolumeStatesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28e
    .catchall {:try_start_236 .. :try_end_28e} :catchall_35f

    move-result-object v23

    .line 278
    .local v23, stateCursor:Landroid/database/Cursor;
    :try_start_28f
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2d3

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/common/Position;->createPositionOrNull(Ljava/lang/String;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    .line 281
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastAccess:J

    .line 282
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mLastMode:I

    .line 283
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_368

    const/4 v2, 0x1

    :goto_2c4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mPinned:Z

    .line 284
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextZoom:F
    :try_end_2d3
    .catchall {:try_start_28f .. :try_end_2d3} :catchall_36b

    .line 287
    :cond_2d3
    :try_start_2d3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 290
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextZoom:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_307

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/books/provider/VolumeStatesUtils;->getMedianTextZoom(Landroid/accounts/Account;Landroid/content/ContentResolver;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextZoom:F

    .line 292
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextZoom:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_307

    .line 295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mTextZoom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v4, v6, v0}, Lcom/google/android/apps/books/provider/VolumeStatesUtils;->saveTextZoomForVolume(FLandroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;)V
    :try_end_307
    .catchall {:try_start_2d3 .. :try_end_307} :catchall_35f

    .line 302
    .end local v11           #stateUri:Landroid/net/Uri;
    .end local v23           #stateCursor:Landroid/database/Cursor;
    :cond_307
    if-eqz p3, :cond_34a

    .line 303
    const/16 v18, 0x0

    .line 305
    .local v18, collectionItemCursor:Landroid/database/Cursor;
    :try_start_30b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v15, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-wide v0, v15

    invoke-static {v2, v0, v1, v4}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 307
    .local v13, itemUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "COUNT(*)"

    aput-object v4, v14, v2

    .line 308
    .local v14, projection:[Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 309
    if-eqz v18, :cond_345

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_345

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_370

    const/4 v2, 0x1

    :goto_341
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mIsInMyEBooksCollection:Z
    :try_end_345
    .catchall {:try_start_30b .. :try_end_345} :catchall_372

    .line 313
    :cond_345
    if-eqz v18, :cond_34a

    .line 314
    :try_start_347
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 320
    .end local v13           #itemUri:Landroid/net/Uri;
    .end local v14           #projection:[Ljava/lang/String;
    .end local v18           #collectionItemCursor:Landroid/database/Cursor;
    :cond_34a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->mClosed:Z
    :try_end_34f
    .catchall {:try_start_347 .. :try_end_34f} :catchall_35f

    .line 321
    monitor-exit p0

    return-void

    .line 223
    :cond_351
    const/4 v2, 0x0

    goto/16 :goto_14a

    .line 234
    :cond_354
    const/4 v2, 0x0

    goto/16 :goto_1ac

    .line 235
    :cond_357
    const/4 v2, 0x0

    goto/16 :goto_1ba

    .line 257
    :catchall_35a
    move-exception v2

    :try_start_35b
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_35f
    .catchall {:try_start_35b .. :try_end_35f} :catchall_35f

    .line 179
    .end local v3           #pageDirUri:Landroid/net/Uri;
    .end local v5           #sectionDirUri:Landroid/net/Uri;
    .end local v7           #chapterDirUri:Landroid/net/Uri;
    .end local v9           #volumeUri:Landroid/net/Uri;
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v20           #includeEmptyPassages:Z
    :catchall_35f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 267
    .restart local v3       #pageDirUri:Landroid/net/Uri;
    .restart local v5       #sectionDirUri:Landroid/net/Uri;
    .restart local v7       #chapterDirUri:Landroid/net/Uri;
    .restart local v9       #volumeUri:Landroid/net/Uri;
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v20       #includeEmptyPassages:Z
    :cond_362
    const/4 v2, -0x1

    goto/16 :goto_258

    .line 270
    :cond_365
    const/4 v2, -0x1

    goto/16 :goto_270

    .line 283
    .restart local v11       #stateUri:Landroid/net/Uri;
    .restart local v23       #stateCursor:Landroid/database/Cursor;
    :cond_368
    const/4 v2, 0x0

    goto/16 :goto_2c4

    .line 287
    :catchall_36b
    move-exception v2

    :try_start_36c
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v2

    .line 310
    .end local v11           #stateUri:Landroid/net/Uri;
    .end local v23           #stateCursor:Landroid/database/Cursor;
    .restart local v13       #itemUri:Landroid/net/Uri;
    .restart local v14       #projection:[Ljava/lang/String;
    .restart local v18       #collectionItemCursor:Landroid/database/Cursor;
    :cond_370
    const/4 v2, 0x0

    goto :goto_341

    .line 313
    .end local v13           #itemUri:Landroid/net/Uri;
    .end local v14           #projection:[Ljava/lang/String;
    :catchall_372
    move-exception v2

    if-eqz v18, :cond_378

    .line 314
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_378
    throw v2
    :try_end_379
    .catchall {:try_start_36c .. :try_end_379} :catchall_35f
.end method
