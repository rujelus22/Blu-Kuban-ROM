.class public Lcom/google/android/apps/books/util/VolumeScrubIndex;
.super Ljava/lang/Object;
.source "VolumeScrubIndex.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAvailableImageFraction:F

.field private mAvailableTextFraction:F

.field private final mChapterIdToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChapterIdToPageId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChaptersCursor:Landroid/database/Cursor;

.field private final mChaptersCursorLock:Ljava/lang/Object;

.field public mImageChapterEnabled:[Z

.field private final mIndexToChapterId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndexToPageId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxPageNumber:Ljava/lang/Long;

.field private final mMissingChapters:Z

.field private final mPageIdToChapterId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageIdToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPagesCursor:Landroid/database/Cursor;

.field private final mPagesCursorLock:Ljava/lang/Object;

.field private mReadingMode:I

.field private mResources:Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;

.field public mTextChapterEnabled:[Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/Object;Landroid/database/Cursor;Ljava/lang/Object;)V
    .registers 7
    .parameter "chaptersCursor"
    .parameter "chaptersCursorLock"
    .parameter "pagesCursor"
    .parameter "pagesCursorLock"

    .prologue
    const/high16 v1, 0x3f80

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    .line 55
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mReadingMode:I

    .line 66
    iput v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mAvailableTextFraction:F

    .line 67
    iput v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mAvailableImageFraction:F

    .line 78
    iput-object p2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursorLock:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_35
    iput-object p1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursor:Landroid/database/Cursor;

    .line 81
    invoke-static {p1}, Lcom/google/android/apps/books/util/RecordingCursor;->logIfClosed(Landroid/database/Cursor;)V

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_67

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->parseChaptersCursor(Landroid/database/Cursor;)V

    .line 84
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_69

    .line 86
    iput-object p4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursorLock:Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_4c
    iput-object p3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    .line 89
    invoke-static {p3}, Lcom/google/android/apps/books/util/RecordingCursor;->logIfClosed(Landroid/database/Cursor;)V

    .line 90
    invoke-direct {p0, p3}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->parsePagesCursor(Landroid/database/Cursor;)V

    .line 92
    invoke-interface {p3}, Landroid/database/Cursor;->moveToLast()Z

    .line 93
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->parsePageNumber(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMaxPageNumber:Ljava/lang/Long;

    .line 94
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_6c

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->computeAvailableFractions()V

    .line 97
    return-void

    .line 82
    :cond_67
    const/4 v0, 0x0

    goto :goto_41

    .line 84
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    .line 94
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method private computeAvailableFractions()V
    .registers 11

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, foundForbiddenTextPassage:Z
    const/4 v1, 0x0

    .line 184
    .local v1, foundForbiddenImagePassage:Z
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 185
    .local v4, pageCount:I
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 187
    .local v7, passageIndex:I
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    .local v5, pageId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 190
    .local v6, pageIndex:I
    if-nez v2, :cond_4e

    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mTextChapterEnabled:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_4e

    .line 191
    int-to-float v8, v6

    int-to-float v9, v4

    div-float/2addr v8, v9

    iput v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mAvailableTextFraction:F

    .line 192
    const/4 v2, 0x1

    .line 195
    :cond_4e
    if-nez v1, :cond_5c

    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mImageChapterEnabled:[Z

    aget-boolean v8, v8, v7

    if-nez v8, :cond_5c

    .line 196
    int-to-float v8, v6

    int-to-float v9, v4

    div-float/2addr v8, v9

    iput v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mAvailableImageFraction:F

    .line 197
    const/4 v1, 0x1

    .line 200
    :cond_5c
    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    .line 204
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5           #pageId:Ljava/lang/String;
    .end local v6           #pageIndex:I
    .end local v7           #passageIndex:I
    :cond_60
    return-void
.end method

.method private parseChaptersCursor(Landroid/database/Cursor;)V
    .registers 12
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 127
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 128
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 129
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 132
    .local v3, count:I
    new-array v8, v3, [Z

    iput-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mTextChapterEnabled:[Z

    .line 133
    new-array v8, v3, [Z

    iput-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mImageChapterEnabled:[Z

    .line 135
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1e
    if-ge v4, v3, :cond_98

    .line 136
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 138
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, chapterId:Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, pageId:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing/empty chapterId for index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing/empty pageId for index + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v8, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_90

    move v1, v6

    .line 149
    .local v1, allSectionsForbidden:Z
    :goto_77
    const/4 v8, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_92

    move v0, v6

    .line 151
    .local v0, allPagesForbidden:Z
    :goto_7f
    iget-object v9, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mTextChapterEnabled:[Z

    if-nez v1, :cond_94

    move v8, v6

    :goto_84
    aput-boolean v8, v9, v4

    .line 152
    iget-object v9, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mImageChapterEnabled:[Z

    if-nez v0, :cond_96

    move v8, v6

    :goto_8b
    aput-boolean v8, v9, v4

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v0           #allPagesForbidden:Z
    .end local v1           #allSectionsForbidden:Z
    :cond_90
    move v1, v7

    .line 147
    goto :goto_77

    .restart local v1       #allSectionsForbidden:Z
    :cond_92
    move v0, v7

    .line 149
    goto :goto_7f

    .restart local v0       #allPagesForbidden:Z
    :cond_94
    move v8, v7

    .line 151
    goto :goto_84

    :cond_96
    move v8, v7

    .line 152
    goto :goto_8b

    .line 154
    .end local v0           #allPagesForbidden:Z
    .end local v1           #allSectionsForbidden:Z
    .end local v2           #chapterId:Ljava/lang/String;
    .end local v5           #pageId:Ljava/lang/String;
    :cond_98
    return-void
.end method

.method private static parsePageNumber(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "pageTitle"

    .prologue
    .line 116
    const-string v3, "\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 117
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 118
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 119
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, match:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 122
    .end local v0           #match:Ljava/lang/String;
    :goto_18
    return-object v3

    :cond_19
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private parsePagesCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 157
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 158
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 159
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 162
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v1, :cond_69

    .line 163
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 165
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, pageId:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, chapterId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing/empty pageId for index + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing/empty chapterId for index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 174
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v3           #pageId:Ljava/lang/String;
    :cond_69
    return-void
.end method


# virtual methods
.method public getAvailableContentFraction()F
    .registers 3

    .prologue
    const/high16 v0, 0x3f80

    .line 300
    iget-boolean v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-eqz v1, :cond_7

    .line 309
    :goto_6
    return v0

    .line 301
    :cond_7
    iget v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mReadingMode:I

    packed-switch v1, :pswitch_data_14

    goto :goto_6

    .line 306
    :pswitch_d
    iget v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mAvailableImageFraction:F

    goto :goto_6

    .line 303
    :pswitch_10
    iget v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mAvailableTextFraction:F

    goto :goto_6

    .line 301
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public getCalloutChapterLabel(IZ)Ljava/lang/CharSequence;
    .registers 8
    .parameter "itemIndex"
    .parameter "scrubActive"

    .prologue
    .line 209
    iget-boolean v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    .line 224
    :cond_5
    :goto_5
    return-object v0

    .line 212
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->getGroupForItem(I)I

    move-result v1

    .line 215
    .local v1, groupIndex:I
    iget-object v3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 216
    :try_start_d
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/google/android/apps/books/util/RecordingCursor;->logIfClosed(Landroid/database/Cursor;)V

    .line 217
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, chapterTitle:Ljava/lang/String;
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_28

    .line 220
    invoke-static {v0}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    const-string v0, ""

    goto :goto_5

    .line 219
    .end local v0           #chapterTitle:Ljava/lang/String;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getCalloutPageLabelLong(IZ)Ljava/lang/CharSequence;
    .registers 11
    .parameter "itemIndex"
    .parameter "scrubActive"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    iget-object v3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :try_start_6
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/google/android/apps/books/util/RecordingCursor;->logIfClosed(Landroid/database/Cursor;)V

    .line 232
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, pageTitle:Ljava/lang/String;
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_41

    .line 236
    invoke-static {v1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->parsePageNumber(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 238
    .local v0, pageLong:Ljava/lang/Long;
    if-eqz v0, :cond_44

    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMaxPageNumber:Ljava/lang/Long;

    if-eqz v2, :cond_44

    .line 240
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mResources:Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;

    iget-object v2, v2, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;->intPageCalloutFormat:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "%1$s"

    aput-object v4, v3, v5

    const-string v4, "%2$s"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/CharSequence;

    aput-object v1, v4, v5

    iget-object v5, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMaxPageNumber:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    :goto_40
    return-object v2

    .line 234
    .end local v0           #pageLong:Ljava/lang/Long;
    .end local v1           #pageTitle:Ljava/lang/String;
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2

    .line 246
    .restart local v0       #pageLong:Ljava/lang/Long;
    .restart local v1       #pageTitle:Ljava/lang/String;
    :cond_44
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mResources:Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;

    iget-object v2, v2, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;->stringPageCalloutFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "%1$s"

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/CharSequence;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_40
.end method

.method public getCalloutPageLabelShort(IZ)Ljava/lang/CharSequence;
    .registers 9
    .parameter "itemIndex"
    .parameter "scrubActive"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 256
    :try_start_5
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/google/android/apps/books/util/RecordingCursor;->logIfClosed(Landroid/database/Cursor;)V

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 258
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPagesCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, pageTitle:Ljava/lang/String;
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_2a

    .line 262
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mResources:Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;

    iget-object v1, v1, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;->stringPageCalloutFormat:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "%1$s"

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0           #pageTitle:Ljava/lang/String;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getGroupForItem(I)I
    .registers 7
    .parameter "itemIndex"

    .prologue
    .line 284
    iget-boolean v3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    .line 295
    :goto_5
    return v3

    .line 286
    :cond_6
    iget-object v3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, pageId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing page ID for item index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, chapterId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing chapter ID for page ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v3, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 293
    .local v1, groupIndex:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing group index for chapter ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public setReadingMode(I)V
    .registers 2
    .parameter "readingMode"

    .prologue
    .line 104
    iput p1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mReadingMode:I

    .line 105
    return-void
.end method

.method public setResources(Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;)V
    .registers 2
    .parameter "resources"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mResources:Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;

    .line 101
    return-void
.end method
