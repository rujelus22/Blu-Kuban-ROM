.class public Lcom/google/android/apps/books/sync/VolumeManifestFetcher;
.super Ljava/lang/Object;
.source "VolumeManifestFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$Attrs;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ManifestTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterTags;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;,
        Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;)V
    .registers 5
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "config"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 81
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 82
    const-string v0, "missing config"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 83
    return-void
.end method

.method private static clearVolumeColumns(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 6
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 833
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 834
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getValuesToClearManifestContentColumns()Landroid/content/ContentValues;

    move-result-object v2

    .line 835
    .local v2, values:Landroid/content/ContentValues;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 836
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 837
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    return-object v3
.end method

.method private getBatchOperations(Landroid/accounts/Account;Ljava/lang/String;Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 35
    .parameter "account"
    .parameter "volumeId"
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 279
    .local v10, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->clearVolumeColumns(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getManifestContentUris(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 281
    .local v28, uri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 284
    .end local v28           #uri:Landroid/net/Uri;
    :cond_31
    const/4 v8, 0x0

    .line 285
    .local v8, segmentIndex:I
    const/16 v17, 0x0

    .line 286
    .local v17, chapterIndex:I
    const/16 v23, 0x0

    .line 288
    .local v23, pageIndex:I
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 293
    .local v12, chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 294
    .local v13, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 298
    .local v14, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 301
    .local v15, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    new-instance v9, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 303
    .local v9, partialResources:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;
    const/16 v25, 0x0

    .line 304
    .local v25, textModeAvailable:Z
    const/16 v21, 0x0

    .line 305
    .local v21, imageModeAvailable:Z
    const/16 v30, 0x0

    .line 308
    .local v30, version:Ljava/lang/String;
    :try_start_56
    invoke-static {}, Lcom/google/android/apps/books/service/ContentFetchService;->newPullParserLocked()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 309
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v5, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 312
    :cond_60
    :goto_60
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, type:I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_1a8

    .line 313
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 314
    .local v24, tag:Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_60

    .line 315
    const-string v4, "segment"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 316
    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseSegment(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;ILcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;Ljava/util/List;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    move-result-object v22

    .line 319
    .local v22, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    move-object/from16 v0, v22

    invoke-virtual {v13, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    add-int/lit8 v8, v8, 0x1

    .line 321
    goto :goto_60

    .end local v22           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_8e
    const-string v4, "toc_entry"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseChapter(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    move-result-object v22

    .line 326
    .local v22, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->segmentIndex:I

    move-object/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    add-int/lit8 v17, v17, 0x1

    .line 329
    goto :goto_60

    .end local v22           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    :cond_b5
    const-string v4, "page"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parsePage(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    move-result-object v22

    .line 331
    .local v22, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    add-int/lit8 v23, v23, 0x1

    .line 333
    goto :goto_60

    .end local v22           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    :cond_d3
    const-string v4, "preferred_mode"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 334
    const/4 v4, 0x0

    const-string v6, "int"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 335
    .local v29, value:I
    const-string v4, "preferred_mode"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateVolumeColumn(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_fb} :catch_fd

    goto/16 :goto_60

    .line 353
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v24           #tag:Ljava/lang/String;
    .end local v27           #type:I
    .end local v29           #value:I
    :catch_fd
    move-exception v19

    .line 354
    .local v19, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v26, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem parsing manifest for volumeId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 356
    .local v26, thrown:Ljava/net/ProtocolException;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/ProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 357
    throw v26

    .line 337
    .end local v19           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v26           #thrown:Ljava/net/ProtocolException;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24       #tag:Ljava/lang/String;
    .restart local v27       #type:I
    :cond_122
    :try_start_122
    const-string v4, "available_mode"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_158

    .line 338
    const/4 v4, 0x0

    const-string v6, "int"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 339
    .restart local v29       #value:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateAvailableMode(Landroid/accounts/Account;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 340
    const/4 v4, 0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_154

    const/4 v4, 0x1

    :goto_148
    or-int v25, v25, v4

    .line 341
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_156

    const/4 v4, 0x1

    :goto_150
    or-int v21, v21, v4

    .line 342
    goto/16 :goto_60

    .line 340
    :cond_154
    const/4 v4, 0x0

    goto :goto_148

    .line 341
    :cond_156
    const/4 v4, 0x0

    goto :goto_150

    .line 342
    .end local v29           #value:I
    :cond_158
    const-string v4, "volume_version"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17c

    .line 343
    const/4 v4, 0x0

    const-string v6, "data"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 344
    const-string v4, "content_version"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateVolumeColumn(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 346
    :cond_17c
    const-string v4, "first_chapter_start_segment"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 347
    const-string v18, "first_chapter_start_segment_id"

    .line 348
    .local v18, columnName:Ljava/lang/String;
    const/4 v4, 0x0

    const-string v6, "int"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 349
    .restart local v29       #value:I
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->updateVolumeColumn(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_122 .. :try_end_1a6} :catch_fd

    goto/16 :goto_60

    .line 360
    .end local v18           #columnName:Ljava/lang/String;
    .end local v24           #tag:Ljava/lang/String;
    .end local v29           #value:I
    :cond_1a8
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1, v13}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->verifyTextModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V

    .line 361
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1, v15}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->verifyImageModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V

    .line 362
    if-nez v30, :cond_1d3

    .line 368
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing content version for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    :cond_1d3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15, v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->unsparsifyChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 377
    if-eqz v25, :cond_1e4

    .line 379
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v14}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialSegments(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    :cond_1e4
    move-object/from16 v11, p0

    move-object/from16 v16, v10

    .line 383
    invoke-direct/range {v11 .. v16}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialPages(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v9, v1, v2, v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->processPartialResources(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;Landroid/accounts/Account;Ljava/lang/String;Ljava/util/List;)V

    .line 389
    const-string v4, "VolumeManifestFetcher"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_245

    .line 390
    const-string v4, "VolumeManifestFetcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finished parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " manifest: found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " chapters, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " segments, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pages; textMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_245
    return-object v10
.end method

.method public static isForbidden(Ljava/lang/String;)Z
    .registers 4
    .parameter "flagsValue"

    .prologue
    const/4 v1, 0x0

    .line 777
    invoke-static {p0}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 781
    :cond_7
    :goto_7
    return v1

    .line 780
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 781
    .local v0, value:I
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method private parseChapter(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .registers 15
    .parameter "parser"
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 791
    invoke-static {p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 792
    .local v6, uri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 795
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    invoke-direct {v3, v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 796
    .local v3, result:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iput-object v0, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 798
    const-string v8, "account_name"

    iget-object v9, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 799
    const-string v8, "volume_id"

    invoke-virtual {v0, v8, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 802
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 804
    .local v2, depth:I
    :cond_20
    :goto_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_2d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_98

    :cond_2d
    const/4 v8, 0x1

    if-eq v5, v8, :cond_98

    .line 805
    const/4 v8, 0x2

    if-ne v5, v8, :cond_20

    .line 806
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, tag:Ljava/lang/String;
    const-string v8, "label"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 808
    const-string v8, "data"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 809
    .local v7, value:Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_20

    .line 810
    .end local v7           #value:Ljava/lang/String;
    :cond_4b
    const-string v8, "segment_index"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 811
    const-string v8, "int"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 812
    .restart local v7       #value:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->segmentIndex:I

    goto :goto_20

    .line 813
    .end local v7           #value:Ljava/lang/String;
    :cond_60
    const-string v8, "page_index"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 814
    const-string v8, "int"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 815
    .restart local v7       #value:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    goto :goto_20

    .line 816
    .end local v7           #value:Ljava/lang/String;
    :cond_75
    const-string v8, "order"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 817
    const-string v8, "int"

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, chapterIds:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 819
    .local v7, value:I
    iput-object v1, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->chapterId:Ljava/lang/String;

    .line 820
    const-string v8, "chapter_id"

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 821
    const-string v8, "chapter_order"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_20

    .line 826
    .end local v1           #chapterIds:Ljava/lang/String;
    .end local v4           #tag:Ljava/lang/String;
    .end local v7           #value:I
    :cond_98
    return-object v3
.end method

.method private parsePage(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    .registers 20
    .parameter "parser"
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 707
    .local v5, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    invoke-static/range {p2 .. p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 708
    .local v8, pagesDirUri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 711
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v14, "account_name"

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 712
    const-string v14, "volume_id"

    move-object/from16 v0, p3

    invoke-virtual {v1, v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 714
    const/4 v7, 0x0

    .line 717
    .local v7, pageId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 718
    .local v3, depth:I
    const/4 v4, 0x0

    .line 719
    .local v4, hasSrc:Z
    const/4 v6, 0x0

    .line 721
    .local v6, isForbidden:Z
    :cond_25
    :goto_25
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v14, 0x3

    if-ne v11, v14, :cond_32

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v3, :cond_e8

    :cond_32
    const/4 v14, 0x1

    if-eq v11, v14, :cond_e8

    .line 722
    const/4 v14, 0x2

    if-ne v11, v14, :cond_25

    .line 723
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 724
    .local v10, tag:Ljava/lang/String;
    const-string v14, "pid"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_53

    .line 725
    const/4 v14, 0x0

    const-string v15, "data"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 726
    const-string v14, "page_id"

    invoke-virtual {v1, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_25

    .line 727
    :cond_53
    const-string v14, "src"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 728
    const/4 v14, 0x0

    const-string v15, "data"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 729
    .local v12, url:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_25

    .line 730
    invoke-static {v12}, Lcom/google/android/apps/books/util/Config;->makeRelative(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 731
    .local v9, relative:Landroid/net/Uri;
    const-string v14, "remote_url"

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 732
    const/4 v4, 0x1

    goto :goto_25

    .line 734
    .end local v9           #relative:Landroid/net/Uri;
    .end local v12           #url:Ljava/lang/String;
    :cond_79
    const-string v14, "order"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9f

    .line 735
    const/4 v14, 0x0

    const-string v15, "int"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 736
    .local v13, value:I
    const-string v14, "page_order"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 737
    const-string v14, "missing pageId"

    invoke-static {v7, v14}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iput-object v7, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->pageId:Ljava/lang/String;

    goto :goto_25

    .line 739
    .end local v13           #value:I
    :cond_9f
    const-string v14, "title"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 740
    const/4 v14, 0x0

    const-string v15, "data"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 741
    .local v13, value:Ljava/lang/String;
    const-string v14, "title"

    invoke-virtual {v1, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_25

    .line 742
    .end local v13           #value:Ljava/lang/String;
    :cond_b7
    const-string v14, "flags"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cf

    .line 743
    const/4 v14, 0x0

    const-string v15, "int"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 744
    .restart local v13       #value:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->isForbidden(Ljava/lang/String;)Z

    move-result v14

    or-int/2addr v6, v14

    .line 745
    goto/16 :goto_25

    .end local v13           #value:Ljava/lang/String;
    :cond_cf
    const-string v14, "text_segment"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 746
    const/4 v14, 0x0

    const-string v15, "int"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 747
    .restart local v13       #value:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->segmentIndex:I

    goto/16 :goto_25

    .line 752
    .end local v10           #tag:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :cond_e8
    const-string v14, "missing pageId"

    invoke-static {v7, v14}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    if-eqz v6, :cond_fe

    .line 757
    const/4 v2, 0x1

    .line 763
    .local v2, contentStatus:I
    :goto_f0
    const-string v14, "content_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 765
    iput-boolean v6, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->isForbidden:Z

    .line 766
    iput-object v1, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 768
    return-object v5

    .line 758
    .end local v2           #contentStatus:I
    :cond_fe
    if-eqz v4, :cond_102

    .line 759
    const/4 v2, 0x2

    .restart local v2       #contentStatus:I
    goto :goto_f0

    .line 761
    .end local v2           #contentStatus:I
    :cond_102
    const/4 v2, 0x0

    .restart local v2       #contentStatus:I
    goto :goto_f0
.end method

.method private parseResource(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    .registers 14
    .parameter "parser"
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, resourceUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 674
    .local v1, mimeType:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 676
    .local v0, depth:I
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_3c

    :cond_14
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3c

    .line 677
    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    .line 678
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, tag:Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 680
    const-string v6, "data"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 681
    :cond_2d
    const-string v6, "mime_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 682
    const-string v6, "data"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 687
    .end local v3           #tag:Ljava/lang/String;
    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing url for segment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v6, "text/css"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 691
    new-instance v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;

    invoke-direct {v5, v2, v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_69
    return-object v5

    .line 693
    :cond_6a
    const-string v6, "VolumeManifestFetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseResource: unexpected mime type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method private parseSegment(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;ILcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;Ljava/util/List;)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    .registers 30
    .parameter "parser"
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionIndex"
    .parameter "partialResources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    .local p6, batch:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    new-instance v9, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;-><init>(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$1;)V

    .line 576
    .local v9, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    invoke-static/range {p2 .. p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 577
    .local v15, sectionDirUri:Landroid/net/Uri;
    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 579
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v14, resourceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;>;"
    const-string v21, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 585
    const-string v21, "volume_id"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 586
    const-string v21, "segment_order"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 588
    const/16 v16, 0x0

    .line 589
    .local v16, sectionId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 592
    .local v17, startPosition:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 593
    .local v5, depth:I
    const/4 v6, 0x0

    .line 594
    .local v6, hasLink:Z
    const/4 v10, 0x0

    .line 598
    .local v10, isForbidden:Z
    :cond_45
    :goto_45
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_59

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v5, :cond_183

    :cond_59
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_183

    .line 599
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_45

    .line 600
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 601
    .local v18, tag:Ljava/lang/String;
    const-string v21, "label"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_95

    .line 602
    const/16 v21, 0x0

    const-string v22, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 603
    const-string v21, "segment_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 604
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    goto :goto_45

    .line 605
    :cond_95
    const-string v21, "num_pages"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 606
    const/16 v21, 0x0

    const-string v22, "int"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 607
    .local v20, value:I
    const-string v21, "page_count"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_45

    .line 608
    .end local v20           #value:I
    :cond_c1
    const-string v21, "start_position"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e6

    .line 609
    const/16 v21, 0x0

    const-string v22, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 610
    const-string v21, "start_position"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_45

    .line 611
    :cond_e6
    const-string v21, "link"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11f

    .line 612
    const/16 v21, 0x0

    const-string v22, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 613
    .local v11, rawUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11b

    const/4 v7, 0x1

    .line 614
    .local v7, hasUrl:Z
    :goto_107
    if-eqz v7, :cond_11d

    invoke-static {v11}, Lcom/google/android/apps/books/util/Config;->makeRelative(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 616
    .local v12, relativeUri:Ljava/lang/String;
    :goto_111
    const-string v21, "remote_url"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 617
    or-int/2addr v6, v7

    .line 618
    goto/16 :goto_45

    .line 613
    .end local v7           #hasUrl:Z
    .end local v12           #relativeUri:Ljava/lang/String;
    :cond_11b
    const/4 v7, 0x0

    goto :goto_107

    .restart local v7       #hasUrl:Z
    :cond_11d
    move-object v12, v11

    .line 614
    goto :goto_111

    .line 618
    .end local v7           #hasUrl:Z
    .end local v11           #rawUrl:Ljava/lang/String;
    :cond_11f
    const-string v21, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_144

    .line 619
    const/16 v21, 0x0

    const-string v22, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 620
    .local v20, value:Ljava/lang/String;
    const-string v21, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_45

    .line 621
    .end local v20           #value:Ljava/lang/String;
    :cond_144
    const-string v21, "not_viewable"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16c

    .line 622
    const/16 v21, 0x0

    const-string v22, "bool"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 623
    .restart local v20       #value:Ljava/lang/String;
    const-string v21, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    or-int v10, v10, v21

    .line 624
    goto/16 :goto_45

    .end local v20           #value:Ljava/lang/String;
    :cond_16c
    const-string v21, "resource"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_45

    .line 625
    invoke-direct/range {p0 .. p4}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseResource(Lorg/xmlpull/v1/XmlPullParser;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;

    move-result-object v13

    .line 627
    .local v13, resourceInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    if-eqz v13, :cond_45

    .line 628
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 635
    .end local v13           #resourceInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    .end local v18           #tag:Ljava/lang/String;
    :cond_183
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "missing sectionId for segment "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in volume "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "missing startPosition for segment "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in volume "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    if-eqz v10, :cond_20a

    .line 642
    const/4 v4, 0x1

    .line 648
    .local v4, contentStatus:I
    :goto_1de
    const-string v21, "content_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 650
    iput-boolean v10, v9, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->isForbidden:Z

    .line 651
    iput-object v3, v9, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 655
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1f3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_210

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;

    .line 656
    .restart local v13       #resourceInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->setSegmentId(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->addResource(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;)V

    goto :goto_1f3

    .line 643
    .end local v4           #contentStatus:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #resourceInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    :cond_20a
    if-eqz v6, :cond_20e

    .line 644
    const/4 v4, 0x2

    .restart local v4       #contentStatus:I
    goto :goto_1de

    .line 646
    .end local v4           #contentStatus:I
    :cond_20e
    const/4 v4, 0x0

    .restart local v4       #contentStatus:I
    goto :goto_1de

    .line 660
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_210
    return-object v9
.end method

.method private parseVolumeManifest(Landroid/accounts/Account;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 8
    .parameter "account"
    .parameter "volumeId"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->getBatchOperations(Landroid/accounts/Account;Ljava/lang/String;Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.google.android.apps.books"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_b
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_15

    .line 267
    return-void

    .line 262
    :catch_c
    move-exception v1

    .line 263
    .local v1, e:Landroid/content/OperationApplicationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem inserting update"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 264
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_15
    move-exception v1

    .line 265
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem inserting update"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private processPartialChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    .local p1, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p2, segementIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .local p3, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    .local p4, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 412
    .local v1, chapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_26

    .line 413
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 414
    .local v0, chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iget v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    invoke-virtual {p3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    iget-object v3, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->pageId:Ljava/lang/String;

    .line 415
    .local v3, pageId:Ljava/lang/String;
    const-string v5, "missing pageId"

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "start_page_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 420
    .end local v0           #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .end local v3           #pageId:Ljava/lang/String;
    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_56

    .line 421
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 422
    .restart local v0       #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iget v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->segmentIndex:I

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 423
    .local v4, segment:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    if-nez v4, :cond_41

    .line 424
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Manifest parse error: no segment name for index"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    :cond_41
    iget-object v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "start_section_id"

    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 429
    iget-object v5, v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 431
    .end local v0           #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .end local v4           #segment:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_56
    return-void
.end method

.method private processPartialPages(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, chapterIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .local p2, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p3, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    .local p4, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    .local p5, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 494
    .local v2, currentChapterIndex:I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 495
    .local v1, currentChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 497
    .local v5, nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 498
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v0, :cond_68

    .line 499
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    .line 501
    .local v4, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    iget v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->segmentIndex:I

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 502
    .local v6, segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    if-eqz v6, :cond_2e

    .line 503
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v8, "first_section_id"

    iget-object v9, v6, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->segmentId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 507
    :cond_2e
    if-eqz v5, :cond_3f

    iget v7, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    if-ne v7, v3, :cond_3f

    .line 508
    add-int/lit8 v2, v2, 0x1

    .line 509
    move-object v1, v5

    .line 510
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 513
    .restart local v5       #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    :cond_3f
    if-eqz v1, :cond_4a

    .line 514
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    const-string v8, "first_chapter_id"

    iget-object v9, v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->chapterId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 518
    :cond_4a
    :goto_4a
    if-eqz v5, :cond_5c

    iget v7, v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->startPageIndex:I

    if-ne v7, v3, :cond_5c

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 520
    move-object v1, v5

    .line 521
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    check-cast v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .restart local v5       #nextChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    goto :goto_4a

    .line 524
    :cond_5c
    iget-object v7, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 526
    .end local v4           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    .end local v6           #segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_68
    return-void
.end method

.method private processPartialResources(Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;Landroid/accounts/Account;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter "resourceInfos"
    .parameter "account"
    .parameter "volumeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p4, batch:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 538
    .local v4, resourceDirUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->getUniqueResources()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;

    .line 539
    .local v1, info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 541
    .local v2, oper:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "account_name"

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 542
    const-string v6, "volume_id"

    invoke-virtual {v2, v6, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 543
    const-string v6, "resource_id"

    invoke-virtual {v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getResourceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 544
    const-string v6, "resource_type"

    invoke-virtual {v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 545
    const-string v6, "related_section_id"

    invoke-virtual {v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getSegmentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 546
    const-string v6, "resource_order"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 547
    const-string v6, "remote_url"

    invoke-virtual {v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getResourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 548
    const-string v6, "content_status"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 549
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 553
    .end local v1           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    .end local v2           #oper:Landroid/content/ContentProviderOperation$Builder;
    :cond_68
    invoke-static {p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$SegmentResources;->buildDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 554
    .local v5, sectionResourceDirUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PartialResources;->getAllResources()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;

    .line 555
    .restart local v1       #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 557
    .local v3, oper2:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "account_name"

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 558
    const-string v6, "volume_id"

    invoke-virtual {v3, v6, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 559
    const-string v6, "resource_id"

    invoke-virtual {v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getResourceID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    const-string v6, "segment_id"

    invoke-virtual {v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;->getSegmentId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 563
    .end local v1           #info:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ResourceInfo;
    .end local v3           #oper2:Landroid/content/ContentProviderOperation$Builder;
    :cond_aa
    return-void
.end method

.method private processPartialSegments(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p3, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 471
    .local v3, segmentCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v3, :cond_26

    .line 472
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 473
    .local v4, segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 474
    .local v1, chapterInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    iget-object v0, v4, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 475
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "chapter_id"

    iget-object v6, v1, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;->chapterId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 479
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #chapterInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    .end local v4           #segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_26
    return-void
.end method

.method private unsparsifyChapters(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    .local p2, segmentIndexToChapterInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;>;"
    const/4 v2, 0x0

    .line 443
    .local v2, prevChapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 444
    .local v3, segmentCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v3, :cond_24

    .line 445
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;

    .line 446
    .local v0, chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    if-nez v0, :cond_1a

    if-nez v2, :cond_1a

    .line 447
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "missing chapter for first section"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 448
    :cond_1a
    if-nez v0, :cond_22

    .line 450
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 453
    :cond_22
    move-object v2, v0

    goto :goto_1f

    .line 456
    .end local v0           #chapter:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$ChapterInfo;
    :cond_24
    return-void
.end method

.method private updateAvailableMode(Landroid/accounts/Account;Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 10
    .parameter "account"
    .parameter "volumeId"
    .parameter "mode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p4, output:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 866
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 867
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    packed-switch p3, :pswitch_data_40

    .line 875
    const-string v2, "VolumeManifestFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_23
    return-void

    .line 869
    :pswitch_24
    const-string v2, "has_image_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 878
    :goto_2d
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 872
    :pswitch_35
    const-string v2, "has_text_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2d

    .line 867
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_24
        :pswitch_35
    .end packed-switch
.end method

.method private updateVolumeColumn(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation;
    .registers 8
    .parameter "account"
    .parameter "volumeId"
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 846
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 847
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 848
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 849
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method private static verifyImageModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V
    .registers 10
    .parameter "volumeId"
    .parameter "modeAvailable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    .local p2, pageOrderToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;>;"
    if-eqz p1, :cond_33

    .line 913
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 914
    .local v2, pageCount:I
    const/4 v0, 0x0

    .line 915
    .local v0, allowedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_19

    .line 916
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;

    .line 917
    .local v3, pageInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    iget-boolean v4, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;->isForbidden:Z

    if-nez v4, :cond_16

    .line 918
    add-int/lit8 v0, v0, 0x1

    .line 915
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 921
    .end local v3           #pageInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$PageInfo;
    :cond_19
    if-nez v0, :cond_33

    .line 922
    const-string v4, "VolumeManifestFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Image mode allowed, but no pages allowed in volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    .end local v0           #allowedCount:I
    .end local v1           #i:I
    .end local v2           #pageCount:I
    :cond_33
    return-void
.end method

.method private static verifyTextModeConsistency(Ljava/lang/String;ZLandroid/util/SparseArray;)V
    .registers 10
    .parameter "volumeId"
    .parameter "modeAvailable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    .local p2, segmentIndexToInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;>;"
    if-eqz p1, :cond_33

    .line 890
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 891
    .local v2, segmentCount:I
    const/4 v0, 0x0

    .line 892
    .local v0, allowedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_19

    .line 893
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;

    .line 894
    .local v3, segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    iget-boolean v4, v3, Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;->isForbidden:Z

    if-nez v4, :cond_16

    .line 895
    add-int/lit8 v0, v0, 0x1

    .line 892
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 898
    .end local v3           #segmentInfo:Lcom/google/android/apps/books/sync/VolumeManifestFetcher$SegmentInfo;
    :cond_19
    if-nez v0, :cond_33

    .line 899
    const-string v4, "VolumeManifestFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Text mode allowed, but no segments allowed in volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .end local v0           #allowedCount:I
    .end local v1           #i:I
    .end local v2           #segmentCount:I
    :cond_33
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 13
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, volumeId:Ljava/lang/String;
    const-string v7, "VolumeManifestFetcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetching vid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v7, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-static {v7, v6}, Lcom/google/android/apps/books/util/OceanUris;->getManifestUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, manifestUrl:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, req:Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "Accept"

    const-string v8, "application/xml,application/xhtml+xml,text/xml"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "Accept-Charset"

    const-string v8, "utf-8"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v5, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_MANIFEST:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 105
    .local v5, trafficFlag:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    invoke-static {v5}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlag(Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;)V

    .line 107
    :try_start_3a
    iget-object v7, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v8, 0x0

    new-array v8, v8, [I

    invoke-virtual {v7, v3, p2, v8}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 108
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 109
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_6d

    move-result-object v0

    .line 112
    .local v0, entity:Lorg/apache/http/HttpEntity;
    :try_start_4a
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_66

    move-result-object v1

    .line 114
    .local v1, input:Ljava/io/InputStream;
    :try_start_4e
    invoke-direct {p0, p2, v6, v1}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->parseVolumeManifest(Landroid/accounts/Account;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5f

    .line 116
    if-eqz v1, :cond_56

    :try_start_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_66

    .line 119
    :cond_56
    if-eqz v0, :cond_5b

    :try_start_58
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6d

    .line 122
    :cond_5b
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 128
    return-void

    .line 116
    :catchall_5f
    move-exception v7

    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_65
    throw v7
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 119
    .end local v1           #input:Ljava/io/InputStream;
    :catchall_66
    move-exception v7

    if-eqz v0, :cond_6c

    :try_start_69
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_6c
    throw v7
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    .line 122
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    :catchall_6d
    move-exception v7

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    throw v7
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 9
    .parameter "account"
    .parameter "uri"

    .prologue
    .line 136
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, volumeId:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 138
    .local v3, sectionDirUri:Landroid/net/Uri;
    invoke-static {p1, v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    .local v1, pageDirUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 141
    .local v2, sectionCount:I
    iget-object v5, p0, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    .line 144
    .local v0, pageCount:I
    if-gtz v2, :cond_1c

    if-lez v0, :cond_1e

    :cond_1c
    const/4 v5, 0x1

    :goto_1d
    return v5

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1d
.end method
