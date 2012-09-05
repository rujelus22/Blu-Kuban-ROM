.class public Lcom/google/android/apps/books/sync/VolumesSynchronizable;
.super Ljava/lang/Object;
.source "VolumesSynchronizable.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Synchronizable;


# static fields
.field static final FULL_INITIAL_VERSION:Ljava/lang/String; = "full-1.0.0"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PREVIEW_INITIAL_VERSION:Ljava/lang/String; = "preview-1.0.0"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROJECTION:[Ljava/lang/String; = null

.field static final UNKNOWN_VERSION_NUMBER:Ljava/lang/String; = "unknown-version"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sColumnToClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getVolumeColumnToClass()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->createProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .registers 5
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    .line 75
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    .line 76
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "empty account"

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkIsGraphic(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    return-void
.end method

.method private blockContentWipe(Landroid/content/ContentValues;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)Z
    .registers 22
    .parameter "oldValues"
    .parameter "oldAccess"
    .parameter "oldVersion"
    .parameter "newAccess"
    .parameter "newVersion"

    .prologue
    .line 287
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->shouldHonorTransition(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;)Z

    move-result v11

    .line 288
    .local v11, honor:Z
    if-eqz v11, :cond_c

    .line 291
    const/4 v2, 0x0

    .line 323
    :cond_b
    :goto_b
    return v2

    .line 294
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 296
    const/4 v2, 0x0

    goto :goto_b

    .line 301
    :cond_22
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 302
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "preferred_mode"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "segment_fraction"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "resource_fraction"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "page_fraction"

    aput-object v5, v4, v2

    .line 308
    .local v4, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 310
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_48
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 311
    const-string v2, "VolumesSynchronizable"

    const-string v5, "shouldHonorTransition() could not move to first, honoring transition"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_7e

    .line 312
    const/4 v2, 0x0

    .line 322
    if-eqz v8, :cond_b

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 314
    :cond_5c
    const/4 v2, 0x0

    :try_start_5d
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 315
    .local v13, preferredMode:I
    const/4 v2, 0x1

    invoke-static {v8, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v15

    .line 316
    .local v15, sectionFrac:Ljava/lang/Double;
    const/4 v2, 0x2

    invoke-static {v8, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v14

    .line 317
    .local v14, resourceFrac:Ljava/lang/Double;
    const/4 v2, 0x3

    invoke-static {v8, v2}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v12

    .line 318
    .local v12, pageFrac:Ljava/lang/Double;
    invoke-static {v13, v15, v14, v12}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v9

    .line 320
    .local v9, fraction:D
    invoke-static {v9, v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_7e

    move-result v2

    .line 322
    if-eqz v8, :cond_b

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 322
    .end local v9           #fraction:D
    .end local v12           #pageFrac:Ljava/lang/Double;
    .end local v13           #preferredMode:I
    .end local v14           #resourceFrac:Ljava/lang/Double;
    .end local v15           #sectionFrac:Ljava/lang/Double;
    :catchall_7e
    move-exception v2

    if-eqz v8, :cond_84

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_84
    throw v2
.end method

.method private contentWedged(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 8
    .parameter "access"
    .parameter "volumeId"
    .parameter "oldValues"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_12
    move v0, v1

    .line 392
    .local v0, shouldHaveAllContent:Z
    :goto_13
    if-eqz v0, :cond_1e

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenContent(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1b
    return v1

    .end local v0           #shouldHaveAllContent:Z
    :cond_1c
    move v0, v2

    .line 390
    goto :goto_13

    .restart local v0       #shouldHaveAllContent:Z
    :cond_1e
    move v1, v2

    .line 392
    goto :goto_1b
.end method

.method private static createProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "oldValue"
    .parameter "newValues"
    .parameter "columnName"

    .prologue
    .line 335
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 336
    .local v0, hasValue:Z
    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_a
    return-object p0
.end method

.method private getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "values"

    .prologue
    .line 87
    const-string v1, "volume_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, volumeId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private hasForbiddenContent(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 10
    .parameter "volumeId"
    .parameter "oldValues"

    .prologue
    const/4 v5, 0x1

    .line 343
    const-string v6, "has_text_mode"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 344
    .local v1, hasText:Ljava/lang/Integer;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2c

    .line 345
    :cond_f
    iget-object v6, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 346
    .local v3, resourcesUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 347
    .local v4, sectionsUri:Landroid/net/Uri;
    const-string v6, "content_status"

    invoke-direct {p0, v4, v6}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    const-string v6, "content_status"

    invoke-direct {p0, v3, v6}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 354
    .end local v3           #resourcesUri:Landroid/net/Uri;
    .end local v4           #sectionsUri:Landroid/net/Uri;
    :cond_2b
    :goto_2b
    return v5

    .line 352
    :cond_2c
    const-string v6, "has_image_mode"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 353
    .local v0, hasImage:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 354
    .local v2, pagesUri:Landroid/net/Uri;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_48

    :cond_40
    const-string v6, "content_status"

    invoke-direct {p0, v2, v6}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    :cond_48
    const/4 v5, 0x0

    goto :goto_2b
.end method

.method private hasForbiddenRows(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 12
    .parameter "uri"
    .parameter "contentStatusColumn"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 362
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v8

    .line 363
    .local v2, PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 366
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6b

    .line 367
    .local v7, hasForbidden:Z
    :goto_35
    if-eqz v7, :cond_67

    const-string v0, "VolumesSynchronizable"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 368
    const-string v0, "VolumesSynchronizable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " has "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " forbidden rows"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_28 .. :try_end_67} :catchall_6d

    .line 372
    :cond_67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v7

    .end local v7           #hasForbidden:Z
    :cond_6b
    move v7, v8

    .line 366
    goto :goto_35

    .line 372
    :catchall_6d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isInitialVersion(Ljava/lang/String;)Z
    .registers 3
    .parameter "version"

    .prologue
    .line 381
    const-string v0, "full-1.0.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "preview-1.0.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isManifestParsed(Ljava/lang/String;)Z
    .registers 7
    .parameter "volumeId"

    .prologue
    .line 402
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v4, p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 403
    .local v3, sectionDirUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v4, p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    .local v1, pageDirUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 406
    .local v2, sectionCount:I
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForDirCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    .line 409
    .local v0, pageCount:I
    if-gtz v2, :cond_1c

    if-lez v0, :cond_1e

    :cond_1c
    const/4 v4, 0x1

    :goto_1d
    return v4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public delete(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, rows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    return-void
.end method

.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 33
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    .line 160
    const-string v3, "viewability"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    .line 161
    .local v22, hasViewability:Z
    const-string v3, "open_access"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    .line 162
    .local v21, hasOpenAccess:Z
    const-string v3, "buy_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    .line 163
    .local v20, hasBuyUrl:Z
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    move/from16 v0, v22

    move/from16 v1, v20

    if-eq v0, v1, :cond_49

    .line 164
    :cond_24
    const-string v3, "VolumesSynchronizable"

    const-string v4, ""

    new-instance v27, Ljava/lang/IllegalArgumentException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Incomplete access information in : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_49
    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v23

    .line 171
    .local v23, rawUpdates:Landroid/content/ContentValues;
    const-string v3, "viewability"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "open_access"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "buy_url"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "content_version"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 275
    .end local v23           #rawUpdates:Landroid/content/ContentValues;
    :goto_75
    return-object v23

    .line 177
    .restart local v23       #rawUpdates:Landroid/content/ContentValues;
    :cond_76
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 179
    .local v24, updates:Landroid/content/ContentValues;
    const-string v3, "viewability"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, oldViewability:Ljava/lang/String;
    const-string v3, "open_access"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, oldOpenAccess:Ljava/lang/String;
    const-string v3, "buy_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, oldBuyUrl:Ljava/lang/String;
    const-string v3, "content_version"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, oldVersion:Ljava/lang/String;
    invoke-static {v9, v11, v10}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v5

    .line 185
    .local v5, oldAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    const-string v3, "viewability"

    move-object/from16 v0, p2

    invoke-static {v9, v0, v3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, newViewability:Ljava/lang/String;
    const-string v3, "open_access"

    move-object/from16 v0, p2

    invoke-static {v11, v0, v3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 187
    .local v14, newOpenAccess:Ljava/lang/String;
    const-string v3, "buy_url"

    move-object/from16 v0, p2

    invoke-static {v10, v0, v3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, newBuyUrl:Ljava/lang/String;
    const-string v3, "content_version"

    move-object/from16 v0, p2

    invoke-static {v6, v0, v3}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getNewValue(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, newVersion:Ljava/lang/String;
    invoke-static {v12, v14, v13}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v7

    .line 191
    .local v7, newAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    const-string v3, "volume_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, volumeId:Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 192
    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->blockContentWipe(Landroid/content/ContentValues;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)Z

    move-result v15

    .line 194
    .local v15, blockWipe:Z
    if-eqz v15, :cond_27e

    .line 196
    if-ne v5, v7, :cond_f3

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1af

    .line 200
    :cond_f3
    const-string v3, "viewability"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 201
    .local v19, explicitViewability:Ljava/lang/String;
    const-string v3, "open_access"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 202
    .local v17, explicitOpenAccess:Ljava/lang/String;
    const-string v3, "buy_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 203
    .local v16, explicitBuyUrl:Ljava/lang/String;
    const-string v3, "content_version"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 204
    .local v18, explicitVersion:Ljava/lang/String;
    const-string v3, "VolumesSynchronizable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Not honoring "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " for "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\nviewability: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\nopenAccess: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\nbuyUrl: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\nversion: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v16           #explicitBuyUrl:Ljava/lang/String;
    .end local v17           #explicitOpenAccess:Ljava/lang/String;
    .end local v18           #explicitVersion:Ljava/lang/String;
    .end local v19           #explicitViewability:Ljava/lang/String;
    :cond_1af
    const-string v3, "viewability"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 215
    const-string v3, "open_access"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 224
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eq v3, v4, :cond_1ce

    .line 225
    const-string v3, "buy_url"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 228
    :cond_1ce
    if-eqz v6, :cond_232

    .line 230
    const-string v3, "content_version"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 231
    const-string v3, "VolumesSynchronizable"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22e

    .line 232
    const-string v3, "VolumesSynchronizable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Blocking "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " and version already known: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; rawUpdates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; updates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22e
    :goto_22e
    move-object/from16 v23, v24

    .line 275
    goto/16 :goto_75

    .line 241
    :cond_232
    const-string v3, "content_version"

    const-string v4, "unknown-version"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v3, "VolumesSynchronizable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Setting version to unknown-version, but blocking "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; rawUpdates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, ";  updates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22e

    .line 246
    :cond_27e
    if-nez v6, :cond_22e

    .line 249
    invoke-static/range {v9 .. v14}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isContentInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 252
    .local v26, willWipe:Z
    if-nez v26, :cond_290

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->isManifestParsed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_317

    .line 255
    :cond_290
    const-string v3, "content_version"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 256
    const-string v3, "VolumesSynchronizable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Allowing "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " (willWipe="

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "), blocking version: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " -> "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; parsed: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->isManifestParsed(Ljava/lang/String;)Z

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; rawUpdates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; updates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22e

    .line 260
    :cond_317
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->isInitialVersion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32b

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->contentWedged(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_39c

    .line 263
    :cond_32b
    const-string v3, "content_version"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 264
    const-string v3, "VolumesSynchronizable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Requesting content clear on version: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "->"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " or content wedged: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->contentWedged(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, " for "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; rawUpdates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "; updates: "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22e

    .line 272
    :cond_39c
    const-string v3, "VolumesSynchronizable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Old version unknown, setting version normally for "

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22e
.end method

.method public getRowKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string v0, "volume_id"

    return-object v0
.end method

.method public getWritableColumnToClass()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    return-object v0
.end method

.method public insertOrThrow(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "values"

    .prologue
    .line 127
    const-string v1, "VolumesSynchronizable"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 128
    const-string v1, "VolumesSynchronizable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 131
    .local v0, insertValues:Landroid/content/ContentValues;
    const-string v1, "content_version"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .registers 8
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryAll()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .registers 8
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->getRowUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "VolumesSynchronizable"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 141
    const-string v1, "VolumesSynchronizable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
