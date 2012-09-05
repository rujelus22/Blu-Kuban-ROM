.class public Lcom/google/android/apps/books/model/SectionContentFactory;
.super Ljava/lang/Object;
.source "SectionContentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/SectionContentFactory$VolumeStatesQuery;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SectionContentFactory"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mChapterIdFromUri:Ljava/lang/String;

.field private final mPositionFromUri:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSectionIdFromUri:Ljava/lang/String;

.field private final mService:Lcom/google/android/apps/books/service/FetchService;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "service"
    .parameter "resolver"
    .parameter "account"
    .parameter "uri"
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "position"
    .parameter "chapterId"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "missing service"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/service/FetchService;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    .line 79
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    .line 80
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    .line 81
    const-string v0, "missing uri"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mUri:Landroid/net/Uri;

    .line 82
    const-string v0, "missing/empty volumeId"

    invoke-static {p5, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionIdFromUri:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionFromUri:Ljava/lang/String;

    .line 85
    iput-object p8, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChapterIdFromUri:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private buildPageIdToPosition(Landroid/database/Cursor;)Ljava/util/Map;
    .registers 6
    .parameter "pagesCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 463
    .local v1, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, position:I
    :cond_f
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    add-int/lit8 v0, v0, 0x1

    .line 468
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 470
    .end local v0           #position:I
    :cond_23
    return-object v1
.end method

.method private chaptersQuery()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 396
    .local v1, chaptersDirUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "chapter_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static extractChapterId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 182
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getChapterId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_10
    return-object v1

    .line 183
    :cond_11
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 186
    :cond_29
    const/4 v1, 0x0

    goto :goto_10

    .line 188
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extractPosition(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 167
    :cond_1c
    const/4 v1, 0x0

    .line 169
    :goto_1d
    return-object v1

    .line 168
    :cond_1e
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 169
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 171
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extractSectionId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 149
    :cond_1c
    const/4 v1, 0x0

    .line 151
    :goto_1d
    return-object v1

    .line 150
    :cond_1e
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 151
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 153
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extractVolumeId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 127
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeIdFromIntent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 133
    :goto_10
    return-object v1

    .line 128
    :cond_11
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 129
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 130
    :cond_1e
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 131
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 132
    :cond_2b
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 133
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 135
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFirstPageIdForVolume(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 5
    .parameter "pagesCursor"

    .prologue
    .line 427
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_21

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No pages in volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_21
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPositionForSection(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "sectionsCursor"
    .parameter "sectionId"

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 445
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStartSectionIdForChapter(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "chaptersCursor"
    .parameter "chapterId"

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 439
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStartSectionIdForVolume(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .parameter "volumeCursor"
    .parameter "sectionsCursor"

    .prologue
    .line 415
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 416
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, sectionOrder:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {p2, v2, v1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueLocked(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v0

    .line 420
    .local v0, found:Z
    if-eqz v0, :cond_19

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private getUpdateVolumeCounter()I
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksProvider;->getVolumesUpdateCounter(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private makeSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    iget-object v10, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v8, v9, v10}, Lcom/google/android/apps/books/provider/PublisherCssUtils;->calculateAndEnsureBookCssUris(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v6

    .line 261
    .local v6, cssLocalUris:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 265
    .local v7, result:Lcom/google/android/apps/books/model/SectionContent;
    const/4 v1, 0x0

    .line 266
    .local v1, volumeCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 267
    .local v2, chaptersCursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 268
    .local v3, sectionsCursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 269
    .local v4, pagesCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 271
    .local v5, volumeStatesCursor:Landroid/database/Cursor;
    :try_start_12
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->volumeQuery()Landroid/database/Cursor;

    move-result-object v1

    .line 272
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->chaptersQuery()Landroid/database/Cursor;

    move-result-object v2

    .line 273
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->sectionsQuery()Landroid/database/Cursor;

    move-result-object v3

    .line 274
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->pagesQuery()Landroid/database/Cursor;

    move-result-object v4

    .line 275
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->stateQuery()Landroid/database/Cursor;

    move-result-object v5

    move-object v0, p0

    .line 277
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/model/SectionContentFactory;->tryMakeSectionContent(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/Set;)Lcom/google/android/apps/books/model/SectionContent;
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_47

    move-result-object v7

    .line 281
    if-eqz v5, :cond_30

    .line 283
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_30
    if-nez v7, :cond_46

    .line 287
    if-eqz v1, :cond_37

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_37
    if-eqz v2, :cond_3c

    .line 291
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_3c
    if-eqz v3, :cond_41

    .line 294
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_41
    if-eqz v4, :cond_46

    .line 297
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_46
    return-object v7

    .line 281
    :catchall_47
    move-exception v0

    if-eqz v5, :cond_4d

    .line 283
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_4d
    if-nez v7, :cond_63

    .line 287
    if-eqz v1, :cond_54

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_54
    if-eqz v2, :cond_59

    .line 291
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_59
    if-eqz v3, :cond_5e

    .line 294
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_5e
    if-eqz v4, :cond_63

    .line 297
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v0
.end method

.method public static newInstance(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;)Lcom/google/android/apps/books/model/SectionContentFactory;
    .registers 33
    .parameter "service"
    .parameter "resolver"
    .parameter "account"
    .parameter "uri"

    .prologue
    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractVolumeId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, volumeId:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    .line 99
    .local v28, type:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 100
    new-instance v2, Lcom/google/android/apps/books/model/SectionContentFactory;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/books/model/SectionContentFactory;-><init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_2a
    return-object v2

    .line 102
    :cond_2b
    const-string v2, "vnd.android.cursor.item/com.google.android.apps.books.section"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 103
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractSectionId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, sectionId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/books/model/SectionContentFactory;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/books/model/SectionContentFactory;-><init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 106
    .end local v8           #sectionId:Ljava/lang/String;
    :cond_4d
    const-string v2, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 107
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractChapterId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 108
    .local v17, chapterId:Ljava/lang/String;
    new-instance v9, Lcom/google/android/apps/books/model/SectionContentFactory;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/google/android/apps/books/model/SectionContentFactory;-><init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    goto :goto_2a

    .line 110
    .end local v17           #chapterId:Ljava/lang/String;
    :cond_72
    const-string v2, "vnd.android.cursor.item/com.google.android.apps.books.page"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 111
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractPosition(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v27

    .line 112
    .local v27, position:Ljava/lang/String;
    new-instance v18, Lcom/google/android/apps/books/model/SectionContentFactory;

    const/16 v24, 0x0

    invoke-static/range {v27 .. v27}, Lcom/google/android/apps/books/model/SectionContentFactory;->normalizePosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v26}, Lcom/google/android/apps/books/model/SectionContentFactory;-><init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v18

    goto :goto_2a

    .line 115
    .end local v27           #position:Ljava/lang/String;
    :cond_9e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static normalizePosition(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "position"

    .prologue
    .line 196
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private pagesQuery()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 408
    .local v1, pagesUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$PageQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "page_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private sectionsQuery()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, sectionsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$SectionQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "segment_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private stateQuery()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContentFactory$VolumeStatesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private tryMakeSectionContent(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/util/Set;)Lcom/google/android/apps/books/model/SectionContent;
    .registers 29
    .parameter "volumeCursor"
    .parameter "chaptersCursor"
    .parameter "sectionsCursor"
    .parameter "pagesCursor"
    .parameter "volumeStatesCursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/books/model/SectionContent;"
        }
    .end annotation

    .prologue
    .line 313
    .local p6, cssLocalUris:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->buildPageIdToPosition(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v20

    .line 316
    .local v20, pageIdToPosition:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionIdFromUri:Ljava/lang/String;

    .line 317
    .local v9, sectionId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionFromUri:Ljava/lang/String;

    .line 318
    .local v10, position:Ljava/lang/String;
    if-nez v9, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChapterIdFromUri:Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChapterIdFromUri:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/model/SectionContentFactory;->getStartSectionIdForChapter(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 322
    :cond_24
    const/4 v14, 0x0

    .line 323
    .local v14, textZoom:F
    const/4 v11, -0x1

    .line 324
    .local v11, positionSource:I
    const/4 v12, 0x0

    .line 325
    .local v12, lastAccess:Ljava/lang/Long;
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 326
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 327
    .local v18, dbPosition:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 328
    .local v16, dbLastAccess:J
    const/4 v3, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    .line 331
    if-nez v9, :cond_5b

    if-nez v10, :cond_5b

    .line 332
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/model/SectionContent;->isValidPosition(Ljava/lang/String;Landroid/database/Cursor;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 333
    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/books/model/SectionContentFactory;->normalizePosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 334
    const/4 v11, 0x1

    .line 335
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 341
    .end local v16           #dbLastAccess:J
    .end local v18           #dbPosition:Ljava/lang/String;
    :cond_5b
    const/4 v3, 0x0

    cmpg-float v3, v14, v3

    if-gtz v3, :cond_80

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4}, Lcom/google/android/apps/books/provider/VolumeStatesUtils;->getMedianTextZoom(Landroid/accounts/Account;Landroid/content/ContentResolver;)F

    move-result v14

    .line 343
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-lez v3, :cond_80

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v14, v3, v4, v5}, Lcom/google/android/apps/books/provider/VolumeStatesUtils;->saveTextZoomForVolume(FLandroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 351
    :cond_80
    if-nez v9, :cond_9c

    if-nez v10, :cond_9c

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/model/SectionContentFactory;->getStartSectionIdForVolume(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 354
    if-nez v9, :cond_9c

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getFirstPageIdForVolume(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/model/SectionContentFactory;->normalizePosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 361
    :cond_9c
    if-eqz v10, :cond_d4

    const/16 v19, 0x1

    .line 362
    .local v19, pageIdDefined:Z
    :goto_a0
    if-eqz v9, :cond_d7

    const/16 v21, 0x1

    .line 363
    .local v21, sectionIdDefined:Z
    :goto_a4
    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_da

    const/4 v3, 0x1

    :goto_ab
    const-string v4, "Exactly one of pageId and sectionId must be defined"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 366
    if-eqz v10, :cond_dc

    .line 367
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lcom/google/android/apps/books/model/SectionContent;->getSectionIdForPosition(Landroid/database/Cursor;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    const/4 v3, 0x1

    if-eq v11, v3, :cond_be

    .line 370
    const/4 v11, 0x2

    .line 379
    :cond_be
    :goto_be
    new-instance v3, Lcom/google/android/apps/books/model/SectionContent;

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v15, p6

    invoke-direct/range {v3 .. v15}, Lcom/google/android/apps/books/model/SectionContent;-><init>(Lcom/google/android/apps/books/model/SectionContentFactory;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/util/Map;FLjava/util/Set;)V

    return-object v3

    .line 361
    .end local v19           #pageIdDefined:Z
    .end local v21           #sectionIdDefined:Z
    :cond_d4
    const/16 v19, 0x0

    goto :goto_a0

    .line 362
    .restart local v19       #pageIdDefined:Z
    :cond_d7
    const/16 v21, 0x0

    goto :goto_a4

    .line 363
    .restart local v21       #sectionIdDefined:Z
    :cond_da
    const/4 v3, 0x0

    goto :goto_ab

    .line 372
    :cond_dc
    if-eqz v9, :cond_ec

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/google/android/apps/books/model/SectionContentFactory;->getPositionForSection(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/model/SectionContentFactory;->normalizePosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 374
    const/4 v11, 0x3

    goto :goto_be

    .line 376
    :cond_ec
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Undefined reading position. programming error?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private volumeQuery()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 386
    .local v1, volumeUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method getVolumeId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method public newSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v3, 0x0

    .line 210
    .local v3, result:Lcom/google/android/apps/books/model/SectionContent;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getUpdateVolumeCounter()I

    move-result v0

    .line 214
    .local v0, currCount:I
    iget-object v4, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    iget-object v5, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/apps/books/service/FetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 215
    iget-object v4, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    iget-object v5, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    invoke-interface {v4, v5, v6}, Lcom/google/android/apps/books/service/FetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 220
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getUpdateVolumeCounter()I

    move-result v2

    .line 221
    .local v2, newCount:I
    if-ne v2, v0, :cond_2b

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->makeSectionContent()Lcom/google/android/apps/books/model/SectionContent;

    move-result-object v3

    .line 225
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getUpdateVolumeCounter()I

    move-result v2

    .line 226
    if-le v2, v0, :cond_2b

    .line 227
    invoke-virtual {v3}, Lcom/google/android/apps/books/model/SectionContent;->close()V

    .line 234
    :cond_2b
    if-gt v2, v0, :cond_1

    .line 239
    if-eqz v3, :cond_5c

    .line 240
    invoke-virtual {v3}, Lcom/google/android/apps/books/model/SectionContent;->reportEmptyCursors()Ljava/util/List;

    move-result-object v1

    .line 241
    .local v1, empties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 242
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty cursors: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 246
    .end local v1           #empties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5c
    return-object v3
.end method
