.class public Lcom/google/android/apps/books/model/SectionContent;
.super Ljava/lang/Object;
.source "SectionContent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/SectionContent$PositionSource;,
        Lcom/google/android/apps/books/model/SectionContent$PageQuery;,
        Lcom/google/android/apps/books/model/SectionContent$SectionQuery;,
        Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;,
        Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SectionContent"


# instance fields
.field private final mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field private final mAccount:Landroid/accounts/Account;

.field private final mChaptersCursor:Landroid/database/Cursor;

.field private final mContentVersion:Ljava/lang/String;

.field private final mCreator:Ljava/lang/String;

.field private final mDate:Ljava/lang/String;

.field private final mHasImageMode:Z

.field private final mHasTextMode:Z

.field private final mLastAccess:Ljava/lang/Long;

.field private final mPagePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPagesCursor:Landroid/database/Cursor;

.field private final mPosition:Ljava/lang/String;

.field private final mPositionSource:I

.field private final mPublisher:Ljava/lang/String;

.field private final mSectionId:Ljava/lang/String;

.field private final mSectionsCursor:Landroid/database/Cursor;

.field private final mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

.field private final mTextZoom:F

.field private final mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeCssLocalUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeCursor:Landroid/database/Cursor;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/model/SectionContentFactory;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/util/Map;FLjava/util/Set;)V
    .registers 19
    .parameter "factory"
    .parameter "volumeCursor"
    .parameter "chaptersCursor"
    .parameter "sectionsCursor"
    .parameter "pagesCursor"
    .parameter "sectionId"
    .parameter "position"
    .parameter "positionSource"
    .parameter "lastAccess"
    .parameter
    .parameter "textZoom"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/model/SectionContentFactory;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;F",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p10, pageIdToPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p12, cssLocalUris:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "missing account"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccount:Landroid/accounts/Account;

    .line 754
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "missing uri"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mUri:Landroid/net/Uri;

    .line 755
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "missing/empty volumeId"

    invoke-static {v2, v3}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    .line 757
    iput-object p6, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    .line 758
    const-string v2, "missing/empty position"

    invoke-static {p7, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    .line 759
    new-instance v3, Lcom/google/android/apps/books/util/RecordingCursor;

    const-string v2, "missing volumeCursor"

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-direct {v3, v2}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    .line 761
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextZoom:F

    .line 762
    new-instance v3, Lcom/google/android/apps/books/util/RecordingCursor;

    const-string v2, "missing chaptersCursor"

    invoke-static {p3, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-direct {v3, v2}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    .line 764
    new-instance v3, Lcom/google/android/apps/books/util/RecordingCursor;

    const-string v2, "missing sectionsCursor"

    invoke-static {p4, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-direct {v3, v2}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    .line 766
    new-instance v3, Lcom/google/android/apps/books/util/RecordingCursor;

    const-string v2, "missing pagesCursor"

    invoke-static {p5, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    invoke-direct {v3, v2}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    .line 768
    iput p8, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    .line 769
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCssLocalUris:Ljava/util/Set;

    .line 770
    const/4 v2, 0x2

    if-eq p8, v2, :cond_84

    const/4 v2, 0x1

    if-eq p8, v2, :cond_84

    const/4 v2, 0x3

    if-ne p8, v2, :cond_e2

    :cond_84
    const/4 v2, 0x1

    :goto_85
    const-string v3, "Bad positionSource"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 773
    iput-object p9, p0, Lcom/google/android/apps/books/model/SectionContent;->mLastAccess:Ljava/lang/Long;

    .line 774
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagePositionMap:Ljava/util/Map;

    .line 778
    const/4 v1, 0x0

    .line 779
    .local v1, includeEmptyPassages:Z
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/books/model/TextContentMetadata;->from(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Z)Lcom/google/android/apps/books/model/TextContentMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    .line 783
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 784
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mTitle:Ljava/lang/String;

    .line 785
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mCreator:Ljava/lang/String;

    .line 786
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e4

    const/4 v2, 0x1

    :goto_b7
    iput-boolean v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mHasImageMode:Z

    .line 787
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e6

    const/4 v2, 0x1

    :goto_c1
    iput-boolean v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mHasTextMode:Z

    .line 788
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mContentVersion:Ljava/lang/String;

    .line 789
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mPublisher:Ljava/lang/String;

    .line 790
    const/16 v2, 0xa

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mDate:Ljava/lang/String;

    .line 791
    invoke-static {p2}, Lcom/google/android/apps/books/model/SectionContent;->extractAccess(Landroid/database/Cursor;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 792
    return-void

    .line 770
    .end local v1           #includeEmptyPassages:Z
    :cond_e2
    const/4 v2, 0x0

    goto :goto_85

    .line 786
    .restart local v1       #includeEmptyPassages:Z
    :cond_e4
    const/4 v2, 0x0

    goto :goto_b7

    .line 787
    :cond_e6
    const/4 v2, 0x0

    goto :goto_c1
.end method

.method private static extractAccess(Landroid/database/Cursor;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 798
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 799
    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, viewability:Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, openAccess:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, buyUrl:Ljava/lang/String;
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v3

    return-object v3
.end method

.method private getPageOrder(Ljava/lang/String;)I
    .registers 5
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 566
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 568
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static getSectionIdForPosition(Landroid/database/Cursor;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "pagesCursor"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, pageIdToPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p2}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, pageId:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 706
    .local v1, pagePosition:Ljava/lang/Integer;
    if-nez v1, :cond_2b

    .line 707
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in column page_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 710
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isValidPosition(Ljava/lang/String;Landroid/database/Cursor;Ljava/util/Map;)Z
    .registers 7
    .parameter "position"
    .parameter "pagesCursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, pageIdToPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 719
    invoke-static {p0}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 729
    :cond_7
    :goto_7
    return v1

    .line 723
    :cond_8
    :try_start_8
    invoke-static {p1, p2, p0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionIdForPosition(Landroid/database/Cursor;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_b} :catch_d

    .line 724
    const/4 v1, 0x1

    goto :goto_7

    .line 725
    :catch_d
    move-exception v0

    .line 726
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v2, "SectionContent"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 727
    const-string v2, "SectionContent"

    const-string v3, "Bad saved reading position.  Content changed?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private moveToFirstPossibleSectionIdLocked(Ljava/lang/String;)V
    .registers 6
    .parameter "position"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 578
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 579
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, startPosition:Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/model/SectionContent;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    .line 586
    .end local v0           #startPosition:Ljava/lang/String;
    :goto_20
    return-void

    .line 584
    :cond_21
    const-string v1, "SectionContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not appear to be in book?!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_20
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 217
    const-string v0, "SectionContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing section content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/model/SectionContent;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "position1"
    .parameter "position2"

    .prologue
    .line 555
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, pageId1:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, pageId2:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/model/SectionContent;->getPageOrder(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 559
    .local v0, order1:Ljava/lang/Integer;
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/model/SectionContent;->getPageOrder(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 561
    .local v1, order2:Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v4

    return v4
.end method

.method public getAccess()Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getChapterId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 260
    const/4 v0, 0x0

    .line 265
    :goto_5
    return-object v0

    .line 262
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 263
    :try_start_9
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_5

    .line 266
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized getChapterTitleForPage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "pageId"

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_28

    .line 275
    :try_start_4
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-static {v1, v3, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, chapterId:Ljava/lang/String;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_25

    .line 278
    :try_start_12
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_28

    .line 279
    :try_start_15
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_2b

    monitor-exit p0

    return-object v1

    .line 277
    .end local v0           #chapterId:Ljava/lang/String;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 274
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1

    .line 282
    .restart local v0       #chapterId:Ljava/lang/String;
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_28
.end method

.method public getChaptersCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getContentVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mContentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPossibleSectionId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "position"

    .prologue
    .line 596
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v2

    .line 598
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToFirstPossibleSectionIdLocked(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_6} :catch_f

    .line 603
    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 599
    :catch_f
    move-exception v0

    .line 600
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "SectionContent"

    const-string v3, "Invalid position, defaulting to start of book"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_6

    .line 604
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getInitialPassageIndex()I
    .registers 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionId()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, segmentId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPassageIndex(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLastAccess()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mLastAccess:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinPossiblePassageIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "position"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/TextContentMetadata;->getEarliestPossiblePassageIndexForPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPageContentStatus()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPageContentStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPageContentStatus(Ljava/lang/String;)I
    .registers 5
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 381
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 383
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getPageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIdAfter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPageIdAfter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIdAfter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pageId"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 472
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    monitor-exit v1

    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15

    .line 474
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getPageIdBefore()Ljava/lang/String;
    .registers 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPageIdBefore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIdBefore(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pageId"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 483
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    monitor-exit v1

    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15

    .line 485
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public declared-synchronized getPageTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pageId"

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    .line 493
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v0, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 495
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 492
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPagesCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPassageCount()I
    .registers 3

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPassageJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 660
    .local v0, passages:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    return v1
.end method

.method public getPassageIndex(Ljava/lang/String;)I
    .registers 6
    .parameter "segmentId"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/TextContentMetadata;->segmentIdToPassageIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 668
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 669
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 672
    :goto_10
    return v1

    .line 671
    :cond_11
    const-string v1, "SectionContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find segment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getPassageJsonArray()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/TextContentMetadata;->passageJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionSource()I
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionContentStatus()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 359
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 362
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getSectionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionIdAfter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionIdAfter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionIdAfter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "sectionId"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 504
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    monitor-exit v1

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 508
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getSectionIdBefore()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionIdBefore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionIdBefore(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "sectionId"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 521
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    monitor-exit v1

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 525
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getSectionStartPosition(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "sectionId"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 430
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 433
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getSectionsCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getStartPositionForSection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionStartPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()F
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextZoom:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVolumeCssLocalUrisJsonArray()Lorg/json/JSONArray;
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCssLocalUris:Ljava/util/Set;

    const-string v1, "missing mVolumeCssLocalUris"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCssLocalUris:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getVolumeCursor()Landroid/database/Cursor;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hasImageMode()Z
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mHasImageMode:Z

    return v0
.end method

.method public hasTextMode()Z
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mHasTextMode:Z

    return v0
.end method

.method public isContentAvailable(ZZ)Z
    .registers 8
    .parameter "needSectionContent"
    .parameter "needPageContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 400
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionContentStatus()I

    move-result v4

    if-ne v4, v2, :cond_19

    move v1, v2

    .line 402
    .local v1, sectionBad:Z
    :goto_b
    if-eqz p2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageContentStatus()I

    move-result v4

    if-ne v4, v2, :cond_1b

    move v0, v2

    .line 403
    .local v0, pageBad:Z
    :goto_14
    if-nez v1, :cond_1d

    if-nez v0, :cond_1d

    :goto_18
    return v2

    .end local v0           #pageBad:Z
    .end local v1           #sectionBad:Z
    :cond_19
    move v1, v3

    .line 400
    goto :goto_b

    .restart local v1       #sectionBad:Z
    :cond_1b
    move v0, v3

    .line 402
    goto :goto_14

    .restart local v0       #pageBad:Z
    :cond_1d
    move v2, v3

    .line 403
    goto :goto_18
.end method

.method public isPassageForbidden(I)Z
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mTextContentMetadata:Lcom/google/android/apps/books/model/TextContentMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/TextContentMetadata;->isPassageForbidden(I)Z

    move-result v0

    return v0
.end method

.method public isValidPosition(Ljava/lang/String;)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagePositionMap:Ljava/util/Map;

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/books/model/SectionContent;->isValidPosition(Ljava/lang/String;Landroid/database/Cursor;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public moveToPageLocked(Ljava/lang/String;)Z
    .registers 5
    .parameter "pageId"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagePositionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 462
    .local v0, pagePosition:Ljava/lang/Integer;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public moveToPageOrThrowLocked(Ljava/lang/String;)V
    .registers 5
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 451
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in column page_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_25
    return-void
.end method

.method public reportEmptyCursors()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 416
    .local v0, empties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_11

    .line 417
    const-string v1, "volumes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1e

    .line 420
    const-string v1, "chapters"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_1e
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2b

    .line 423
    const-string v1, "pages"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_2b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": vol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", section "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
