.class public Lcom/google/android/apps/books/model/TextContentMetadata;
.super Ljava/lang/Object;
.source "TextContentMetadata.java"


# instance fields
.field public final pageIdToSegmentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final passageJsonArray:Lorg/json/JSONArray;

.field public final segmentIdToChapterIndex:Ljava/util/Map;
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

.field public final segmentIdToPassageIndex:Ljava/util/Map;
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


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONArray;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter "passageJsonArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, sectionIdToPassage:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, pageIdToSegmentId:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, segmentIdToChapterIndex:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->segmentIdToPassageIndex:Ljava/util/Map;

    .line 157
    iput-object p2, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->pageIdToSegmentId:Ljava/util/Map;

    .line 158
    iput-object p3, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->segmentIdToChapterIndex:Ljava/util/Map;

    .line 159
    iput-object p4, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->passageJsonArray:Lorg/json/JSONArray;

    .line 160
    return-void
.end method

.method private static buildPageIdToSegmentId(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/util/Map;
    .registers 12
    .parameter "segmentsCursor"
    .parameter "pagesCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 219
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 221
    .local v5, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_11

    .line 223
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 265
    :goto_10
    return-object v7

    .line 226
    :cond_11
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, firstSegmentId:Ljava/lang/String;
    invoke-interface {p0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 229
    :goto_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 230
    const/4 v7, 0x4

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, position:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, page:Ljava/lang/String;
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, segment:Ljava/lang/String;
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 244
    .end local v3           #page:Ljava/lang/String;
    .end local v4           #position:Ljava/lang/String;
    .end local v6           #segment:Ljava/lang/String;
    :cond_2f
    move-object v0, v1

    .line 246
    .local v0, currentSegmentId:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 247
    :goto_33
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 248
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    .restart local v3       #page:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, matchingSegmentId:Ljava/lang/String;
    if-eqz v2, :cond_4b

    .line 256
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object v0, v2

    goto :goto_33

    .line 261
    :cond_4b
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 265
    .end local v2           #matchingSegmentId:Ljava/lang/String;
    .end local v3           #page:Ljava/lang/String;
    :cond_4f
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_10
.end method

.method private static buildPassages(Landroid/database/Cursor;Ljava/util/Map;Lorg/json/JSONArray;Z)V
    .registers 16
    .parameter "segmentsCursor"
    .parameter
    .parameter "passageJsonArray"
    .parameter "includeEmptyPassages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/json/JSONArray;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, segmentIdToPassageIndex:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v6

    .line 174
    .local v6, passageIndexToSegmentId:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 175
    .local v5, passageInd:I
    const/4 v7, 0x0

    .line 176
    .local v7, passageSectionCount:I
    const/4 v3, 0x0

    .line 177
    .local v3, oldChapterId:Ljava/lang/String;
    const/4 v11, -0x1

    invoke-interface {p0, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 178
    :cond_b
    :goto_b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_46

    .line 179
    const/4 v11, 0x3

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, chapterId:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, segmentId:Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 185
    .local v1, contentStatus:I
    if-nez p3, :cond_25

    const/4 v11, 0x1

    if-eq v1, v11, :cond_b

    .line 186
    :cond_25
    add-int/lit8 v7, v7, 0x1

    .line 187
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_30

    const/4 v11, 0x1

    if-le v7, v11, :cond_34

    .line 190
    :cond_30
    move-object v3, v0

    .line 191
    add-int/lit8 v5, v5, 0x1

    .line 192
    const/4 v7, 0x1

    .line 195
    :cond_34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {p1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v11, 0x1

    if-eq v1, v11, :cond_b

    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11, v9}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_b

    .line 208
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v1           #contentStatus:I
    .end local v9           #segmentId:Ljava/lang/String;
    :cond_46
    add-int/lit8 v4, v5, 0x1

    .line 209
    .local v4, passageCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_49
    if-ge v2, v4, :cond_5e

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v10

    .line 211
    .local v10, segmentsList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v8, sections:Lorg/json/JSONArray;
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 214
    .end local v8           #sections:Lorg/json/JSONArray;
    .end local v10           #segmentsList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_5e
    return-void
.end method

.method private static buildSegmentIdToChapterIndex(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/util/Map;
    .registers 10
    .parameter "chaptersCursor"
    .parameter "segmentsCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
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
    const/4 v7, -0x1

    .line 270
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 272
    .local v1, chapterIdToChapterIndex:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, chapterIndex:I
    :goto_9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 275
    const/4 v6, 0x1

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, chapterId:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    goto :goto_9

    .line 280
    .end local v0           #chapterId:Ljava/lang/String;
    :cond_1e
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 282
    .local v3, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 283
    :goto_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 284
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, segmentId:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .restart local v0       #chapterId:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 287
    .local v4, segmentChapterIndex:Ljava/lang/Integer;
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 290
    .end local v0           #chapterId:Ljava/lang/String;
    .end local v4           #segmentChapterIndex:Ljava/lang/Integer;
    .end local v5           #segmentId:Ljava/lang/String;
    :cond_3f
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6
.end method

.method public static from(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Z)Lcom/google/android/apps/books/model/TextContentMetadata;
    .registers 15
    .parameter "chaptersCursor"
    .parameter "segmentsCursor"
    .parameter "pagesCursor"
    .parameter "includeEmptyPassages"

    .prologue
    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 79
    .local v5, segmentIdToPassageIndex:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v3, passageJsonArray:Lorg/json/JSONArray;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 83
    .local v6, start:J
    invoke-static {p1, v5, v3, p3}, Lcom/google/android/apps/books/model/TextContentMetadata;->buildPassages(Landroid/database/Cursor;Ljava/util/Map;Lorg/json/JSONArray;Z)V

    .line 86
    invoke-static {p1, p2}, Lcom/google/android/apps/books/model/TextContentMetadata;->buildPageIdToSegmentId(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2

    .line 89
    .local v2, pageIdToSegmentId:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/books/model/TextContentMetadata;->buildSegmentIdToChapterIndex(Landroid/database/Cursor;Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v4

    .line 92
    .local v4, segmentIdToChapterIndex:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "TextContentMetadata"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 94
    .local v0, elapsed:J
    const-string v8, "TextContentMetadata"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Elapsed time building text content maps: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v8, "TextContentMetadata"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Split "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " chapters into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " passages"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0           #elapsed:J
    :cond_75
    new-instance v8, Lcom/google/android/apps/books/model/TextContentMetadata;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9, v2, v4, v3}, Lcom/google/android/apps/books/model/TextContentMetadata;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONArray;)V

    return-object v8
.end method


# virtual methods
.method public declared-synchronized getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I
    .registers 7
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 107
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, pageId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->pageIdToSegmentId:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, segmentId:Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 110
    iget-object v4, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->segmentIdToChapterIndex:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 111
    .local v0, chapterIndex:Ljava/lang/Integer;
    if-eqz v0, :cond_1e

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_20

    move-result v3

    .line 117
    .end local v0           #chapterIndex:Ljava/lang/Integer;
    :cond_1e
    monitor-exit p0

    return v3

    .line 107
    .end local v1           #pageId:Ljava/lang/String;
    .end local v2           #segmentId:Ljava/lang/String;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getEarliestPossiblePassageIndexForPosition(Ljava/lang/String;)I
    .registers 7
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 125
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, pageId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->pageIdToSegmentId:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, segmentId:Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 128
    iget-object v4, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->segmentIdToPassageIndex:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 129
    .local v1, passageIndex:Ljava/lang/Integer;
    if-eqz v1, :cond_1e

    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_20

    move-result v3

    .line 135
    .end local v1           #passageIndex:Ljava/lang/Integer;
    :cond_1e
    monitor-exit p0

    return v3

    .line 125
    .end local v0           #pageId:Ljava/lang/String;
    .end local v2           #segmentId:Ljava/lang/String;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isPassageForbidden(I)Z
    .registers 5
    .parameter "passageIndex"

    .prologue
    const/4 v1, 0x0

    .line 143
    monitor-enter p0

    if-ltz p1, :cond_19

    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->passageJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1b

    move-result v2

    if-ge p1, v2, :cond_19

    .line 145
    :try_start_c
    iget-object v2, p0, Lcom/google/android/apps/books/model/TextContentMetadata;->passageJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 146
    .local v0, segmentsList:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1b
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_15} :catch_1e

    move-result v2

    if-gtz v2, :cond_19

    const/4 v1, 0x1

    .line 150
    .end local v0           #segmentsList:Lorg/json/JSONArray;
    :cond_19
    :goto_19
    monitor-exit p0

    return v1

    .line 143
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 147
    :catch_1e
    move-exception v2

    goto :goto_19
.end method
