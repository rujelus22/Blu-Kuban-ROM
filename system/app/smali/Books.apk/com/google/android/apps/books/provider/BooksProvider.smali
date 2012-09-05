.class public Lcom/google/android/apps/books/provider/BooksProvider;
.super Landroid/content/ContentProvider;
.source "BooksProvider.java"


# static fields
.field private static mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountsProv:Lcom/google/android/apps/books/provider/AccountsProvidelet;

.field private mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

.field private mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

.field private mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

.field private mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

.field private mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

.field private mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

.field private mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

.field private mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

.field private mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

.field private mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/apps/books/provider/BooksProvider$1;

    invoke-direct {v0}, Lcom/google/android/apps/books/provider/BooksProvider$1;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/books/util/pool/Pools;->simplePool(Lcom/google/android/apps/books/util/pool/PoolableManager;)Lcom/google/android/apps/books/util/pool/Pool;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/pool/Pools;->synchronizedPool(Lcom/google/android/apps/books/util/pool/Pool;)Lcom/google/android/apps/books/util/pool/Pool;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private dispatchQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 326
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v1

    .line 327
    .local v1, match:I
    sparse-switch v1, :sswitch_data_b0

    .line 389
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :sswitch_20
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    :goto_2b
    return-object v0

    .line 336
    :sswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 348
    :sswitch_38
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 353
    :sswitch_44
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 357
    :sswitch_50
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 361
    :sswitch_5c
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 366
    :sswitch_68
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    :sswitch_74
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 369
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/provider/BooksProvider;->queryCollectionVolumes(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 373
    :sswitch_7f
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 379
    :sswitch_8b
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 382
    :sswitch_97
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2b

    .line 386
    :sswitch_a3
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAccountsProv:Lcom/google/android/apps/books/provider/AccountsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/AccountsProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2b

    .line 327
    :sswitch_data_b0
    .sparse-switch
        0x64 -> :sswitch_2c
        0x6e -> :sswitch_2c
        0x78 -> :sswitch_2c
        0xc8 -> :sswitch_38
        0xc9 -> :sswitch_38
        0xca -> :sswitch_44
        0xcd -> :sswitch_38
        0xce -> :sswitch_38
        0x12c -> :sswitch_38
        0x12d -> :sswitch_38
        0x12e -> :sswitch_44
        0x15e -> :sswitch_38
        0x15f -> :sswitch_38
        0x190 -> :sswitch_38
        0x191 -> :sswitch_38
        0x192 -> :sswitch_44
        0x1ae -> :sswitch_50
        0x1af -> :sswitch_50
        0x1c2 -> :sswitch_5c
        0x1c3 -> :sswitch_5c
        0x1f4 -> :sswitch_8b
        0x1f5 -> :sswitch_8b
        0x1f6 -> :sswitch_8b
        0x258 -> :sswitch_20
        0x259 -> :sswitch_20
        0x25a -> :sswitch_20
        0x2bc -> :sswitch_68
        0x2bd -> :sswitch_68
        0x2be -> :sswitch_68
        0x2c6 -> :sswitch_7f
        0x2c7 -> :sswitch_74
        0x2c8 -> :sswitch_7f
        0x2d0 -> :sswitch_8b
        0x320 -> :sswitch_97
        0x3e8 -> :sswitch_a3
        0x3e9 -> :sswitch_a3
    .end sparse-switch
.end method

.method private ensureResourceContent(Landroid/net/Uri;)V
    .registers 19
    .parameter "resContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 563
    .local v4, context:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, accountName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 565
    .local v13, volumeId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, resId:Ljava/lang/String;
    invoke-static {v2, v13, v9}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 569
    .local v10, resourceUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "content_status"

    invoke-static {v14, v10, v15}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 571
    .local v3, contentStatus:I
    const/4 v14, 0x3

    if-ne v3, v14, :cond_2a

    .line 613
    :cond_29
    return-void

    .line 573
    :cond_2a
    new-instance v1, Landroid/accounts/Account;

    const-string v14, "com.google"

    invoke-direct {v1, v2, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v1, account:Landroid/accounts/Account;
    const/4 v8, 0x0

    .line 582
    .local v8, handler:Landroid/os/Handler;
    new-instance v7, Ljava/util/concurrent/Semaphore;

    const/4 v14, 0x0

    invoke-direct {v7, v14}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 583
    .local v7, ensureSemaphore:Ljava/util/concurrent/Semaphore;
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v14, 0x5

    invoke-direct {v12, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 585
    .local v12, resultCodeOutput:Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Lcom/google/android/apps/books/provider/BooksProvider$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v12, v7}, Lcom/google/android/apps/books/provider/BooksProvider$2;-><init>(Lcom/google/android/apps/books/provider/BooksProvider;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Semaphore;)V

    move-object/from16 v0, p1

    invoke-static {v4, v0, v14, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->createFetchIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v6

    .line 598
    .local v6, ensureIntent:Landroid/content/Intent;
    :try_start_4b
    invoke-virtual {v4, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 599
    const-wide/16 v14, 0x3c

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v14

    if-nez v14, :cond_91

    .line 600
    new-instance v14, Ljava/io/FileNotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "timeout while ensuring resource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_75} :catch_75

    .line 603
    :catch_75
    move-exception v5

    .line 604
    .local v5, e:Ljava/lang/InterruptedException;
    new-instance v14, Ljava/io/FileNotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "interrupted while ensuring resource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 608
    .end local v5           #e:Ljava/lang/InterruptedException;
    :cond_91
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    .line 609
    .local v11, resultCode:I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_29

    .line 610
    new-instance v14, Ljava/io/FileNotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid resultCode when ensuring resource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static externalStorageIsAvailable(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 711
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/books/util/StorageUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 715
    .local v1, result:Z
    :goto_8
    return v1

    .line 712
    .end local v1           #result:Z
    :catch_9
    move-exception v0

    .line 713
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_8
.end method

.method public static getAllAccountNames(Landroid/content/Context;)Ljava/util/Set;
    .registers 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 620
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Collections;->CONTENT_URI:Landroid/net/Uri;

    .line 621
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "DISTINCT(account_name)"

    aput-object v4, v2, v5

    .line 624
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v4, v3

    move-object v5, v3

    .line 625
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 626
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v8, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1a
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 629
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 630
    .local v7, name:Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 633
    .end local v7           #name:Ljava/lang/String;
    :catchall_29
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 635
    return-object v8
.end method

.method public static getFileStorageDirectory(Landroid/content/ContentResolver;)Ljava/io/File;
    .registers 10
    .parameter "contentResolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 724
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 725
    .local v2, columns:[Ljava/lang/String;
    const-string v8, "key=?"

    .line 726
    .local v8, where:Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "base_path"

    aput-object v0, v4, v1

    .line 727
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Configuration;->CONFIGURATION_URI:Landroid/net/Uri;

    const-string v3, "key=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 729
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3d

    .line 731
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 732
    new-instance v7, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_38

    .line 737
    .local v7, result:Ljava/io/File;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 742
    return-object v7

    .line 734
    .end local v7           #result:Ljava/io/File;
    :cond_30
    :try_start_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No rows returned for base path query"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    .line 737
    :catchall_38
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 740
    :cond_3d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null cursor returned for base path query"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVolumesUpdateCounter(Ljava/lang/String;)I
    .registers 2
    .parameter "volumeId"

    .prologue
    .line 773
    invoke-static {p0}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->getUpdateCounter(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private queryCollectionVolumes(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 294
    const/16 v0, 0x2c7

    if-eq p1, v0, :cond_1d

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static removeAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 24
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 644
    .local v15, resolver:Landroid/content/ContentResolver;
    sget-object v8, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->CONTENT_URI:Landroid/net/Uri;

    .line 645
    .local v8, collectionVolumesUri:Landroid/net/Uri;
    const-string v6, "account_name=?"

    .line 646
    .local v6, collectionVolumesSelection:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object p1, v7, v20

    .line 647
    .local v7, collectionVolumesSelectionArgs:[Ljava/lang/String;
    const-string v20, "account_name=?"

    move-object/from16 v0, v20

    invoke-virtual {v15, v8, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    sget-object v11, Lcom/google/android/apps/books/provider/BooksContract$Collections;->CONTENT_URI:Landroid/net/Uri;

    .line 651
    .local v11, collectionsUri:Landroid/net/Uri;
    const-string v9, "account_name=?"

    .line 652
    .local v9, collectionsSelection:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object p1, v10, v20

    .line 653
    .local v10, collectionsSelectionArgs:[Ljava/lang/String;
    const-string v20, "account_name=?"

    move-object/from16 v0, v20

    invoke-virtual {v15, v11, v0, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    sget-object v18, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->CONTENT_URI:Landroid/net/Uri;

    .line 656
    .local v18, statesUri:Landroid/net/Uri;
    const-string v16, "account_name=?"

    .line 657
    .local v16, statesSelection:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aput-object p1, v17, v20

    .line 658
    .local v17, statesSelectionArgs:[Ljava/lang/String;
    const-string v20, "account_name=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 660
    sget-object v14, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    .line 661
    .local v14, keysUri:Landroid/net/Uri;
    const-string v12, "account_name=?"

    .line 662
    .local v12, keysSelection:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object p1, v13, v20

    .line 663
    .local v13, keysSelectionArgs:[Ljava/lang/String;
    const-string v20, "account_name=?"

    move-object/from16 v0, v20

    invoke-virtual {v15, v14, v0, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 665
    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    .line 666
    .local v5, accountsUri:Landroid/net/Uri;
    const-string v3, "account_name=?"

    .line 667
    .local v3, accountsSelection:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    aput-object p1, v4, v20

    .line 668
    .local v4, accountsSelectionArgs:[Ljava/lang/String;
    const-string v20, "account_name=?"

    move-object/from16 v0, v20

    invoke-virtual {v15, v5, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 671
    .local v19, volumesUri:Landroid/net/Uri;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method public static resetFileStorageLocation(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->resetBasePath(Landroid/content/ContentResolver;)V

    .line 767
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 680
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 681
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 683
    :try_start_9
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 684
    .local v1, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 687
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catchall_14
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 455
    const-string v1, "BooksProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 456
    const-string v1, "BooksProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selectionArgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 461
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 462
    .local v0, match:I
    sparse-switch v0, :sswitch_data_ae

    .line 515
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI for delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :sswitch_60
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 513
    :goto_66
    return v1

    .line 470
    :sswitch_67
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 481
    :sswitch_6e
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 490
    :sswitch_75
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 493
    :sswitch_7c
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 496
    :sswitch_83
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 500
    :sswitch_8a
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 504
    :sswitch_91
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 507
    :sswitch_98
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 509
    :sswitch_9f
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->deleteAllFiles()V

    .line 510
    const/4 v1, 0x0

    goto :goto_66

    .line 513
    :sswitch_a6
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAccountsProv:Lcom/google/android/apps/books/provider/AccountsProvidelet;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/apps/books/provider/AccountsProvidelet;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_66

    .line 462
    nop

    :sswitch_data_ae
    .sparse-switch
        0x64 -> :sswitch_67
        0x6e -> :sswitch_67
        0x78 -> :sswitch_67
        0x96 -> :sswitch_75
        0x97 -> :sswitch_75
        0xc8 -> :sswitch_6e
        0xc9 -> :sswitch_6e
        0xca -> :sswitch_75
        0xcd -> :sswitch_6e
        0xce -> :sswitch_6e
        0x12c -> :sswitch_6e
        0x12d -> :sswitch_6e
        0x15e -> :sswitch_6e
        0x15f -> :sswitch_6e
        0x190 -> :sswitch_6e
        0x191 -> :sswitch_6e
        0x192 -> :sswitch_75
        0x19a -> :sswitch_75
        0x19b -> :sswitch_75
        0x19c -> :sswitch_75
        0x19d -> :sswitch_75
        0x1ae -> :sswitch_7c
        0x1af -> :sswitch_7c
        0x1c2 -> :sswitch_83
        0x1c3 -> :sswitch_83
        0x258 -> :sswitch_60
        0x259 -> :sswitch_60
        0x25a -> :sswitch_60
        0x2bc -> :sswitch_8a
        0x2bd -> :sswitch_8a
        0x2be -> :sswitch_8a
        0x2c6 -> :sswitch_91
        0x2c7 -> :sswitch_91
        0x2c8 -> :sswitch_91
        0x2d0 -> :sswitch_98
        0x384 -> :sswitch_9f
        0x3e8 -> :sswitch_a6
        0x3e9 -> :sswitch_a6
    .end sparse-switch
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 165
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 166
    .local v0, match:I
    sparse-switch v0, :sswitch_data_64

    .line 234
    const/4 v1, 0x0

    :goto_8
    return-object v1

    .line 168
    :sswitch_9
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    goto :goto_8

    .line 171
    :sswitch_c
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    goto :goto_8

    .line 174
    :sswitch_f
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.state"

    goto :goto_8

    .line 176
    :sswitch_12
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.state"

    goto :goto_8

    .line 179
    :sswitch_15
    const-string v1, "image/png"

    goto :goto_8

    .line 181
    :sswitch_18
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.section"

    goto :goto_8

    .line 183
    :sswitch_1b
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    goto :goto_8

    .line 185
    :sswitch_1e
    const-string v1, "text/html"

    goto :goto_8

    .line 187
    :sswitch_21
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.chapter"

    goto :goto_8

    .line 189
    :sswitch_24
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    goto :goto_8

    .line 191
    :sswitch_27
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.resource"

    goto :goto_8

    .line 193
    :sswitch_2a
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.resource"

    goto :goto_8

    .line 195
    :sswitch_2d
    const-string v1, "application/octet-stream"

    goto :goto_8

    .line 197
    :sswitch_30
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.segment_resource"

    goto :goto_8

    .line 199
    :sswitch_33
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.segment_resource"

    goto :goto_8

    .line 201
    :sswitch_36
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.page"

    goto :goto_8

    .line 203
    :sswitch_39
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    goto :goto_8

    .line 205
    :sswitch_3c
    const-string v1, "image/png"

    goto :goto_8

    .line 207
    :sswitch_3f
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.annotation"

    goto :goto_8

    .line 209
    :sswitch_42
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.annotation"

    goto :goto_8

    .line 213
    :sswitch_45
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    goto :goto_8

    .line 216
    :sswitch_48
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.account.collection"

    goto :goto_8

    .line 218
    :sswitch_4b
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.account.collection"

    goto :goto_8

    .line 220
    :sswitch_4e
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.account.collection.volume"

    goto :goto_8

    .line 222
    :sswitch_51
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    goto :goto_8

    .line 224
    :sswitch_54
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    goto :goto_8

    .line 226
    :sswitch_57
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.volume"

    goto :goto_8

    .line 228
    :sswitch_5a
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.session_key"

    goto :goto_8

    .line 230
    :sswitch_5d
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.session_key"

    goto :goto_8

    .line 232
    :sswitch_60
    const-string v1, "vnd.android.cursor.dir/com.google.android.apps.books.configuration"

    goto :goto_8

    .line 166
    nop

    :sswitch_data_64
    .sparse-switch
        0x50 -> :sswitch_c
        0x64 -> :sswitch_9
        0x78 -> :sswitch_c
        0x96 -> :sswitch_15
        0x97 -> :sswitch_15
        0xc8 -> :sswitch_18
        0xc9 -> :sswitch_1b
        0xca -> :sswitch_1e
        0xcd -> :sswitch_21
        0xce -> :sswitch_24
        0x12c -> :sswitch_27
        0x12d -> :sswitch_2a
        0x12e -> :sswitch_2d
        0x15e -> :sswitch_30
        0x15f -> :sswitch_33
        0x190 -> :sswitch_36
        0x191 -> :sswitch_39
        0x192 -> :sswitch_3c
        0x1ae -> :sswitch_3f
        0x1af -> :sswitch_42
        0x1c2 -> :sswitch_5a
        0x1c3 -> :sswitch_5d
        0x1f4 -> :sswitch_45
        0x1f5 -> :sswitch_45
        0x1f6 -> :sswitch_45
        0x258 -> :sswitch_f
        0x259 -> :sswitch_f
        0x25a -> :sswitch_12
        0x2bc -> :sswitch_48
        0x2bd -> :sswitch_48
        0x2be -> :sswitch_4b
        0x2c6 -> :sswitch_4e
        0x2c7 -> :sswitch_51
        0x2c8 -> :sswitch_54
        0x2d0 -> :sswitch_57
        0x320 -> :sswitch_60
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 240
    const-string v1, "BooksProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 241
    const-string v1, "BooksProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 245
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 246
    .local v0, match:I
    sparse-switch v0, :sswitch_data_9c

    .line 274
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI for insert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :sswitch_56
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 272
    :goto_5c
    return-object v1

    .line 250
    :sswitch_5d
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 256
    :sswitch_64
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 258
    :sswitch_6b
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 261
    :sswitch_72
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 263
    :sswitch_79
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 265
    :sswitch_80
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 267
    :sswitch_87
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 269
    :sswitch_8e
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 272
    :sswitch_95
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAccountsProv:Lcom/google/android/apps/books/provider/AccountsProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/AccountsProvidelet;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5c

    .line 246
    :sswitch_data_9c
    .sparse-switch
        0x64 -> :sswitch_5d
        0xc8 -> :sswitch_64
        0xcd -> :sswitch_64
        0x12c -> :sswitch_64
        0x15e -> :sswitch_64
        0x190 -> :sswitch_64
        0x1ae -> :sswitch_6b
        0x1c2 -> :sswitch_72
        0x1c3 -> :sswitch_72
        0x258 -> :sswitch_56
        0x2bc -> :sswitch_79
        0x2c6 -> :sswitch_80
        0x2d0 -> :sswitch_87
        0x320 -> :sswitch_8e
        0x3e8 -> :sswitch_95
        0x3e9 -> :sswitch_95
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 135
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/google/android/apps/books/provider/database/BooksDatabase;

    new-instance v3, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;

    invoke-direct {v3, v1}, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v1, v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/ContentFileManager;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 136
    invoke-static {}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->shouldLogSizes()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->shouldLogColumns()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 137
    :cond_1c
    new-instance v0, Lcom/google/android/apps/books/provider/database/DbAnalyzer;

    iget-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    .local v0, analyzer:Lcom/google/android/apps/books/provider/database/DbAnalyzer;
    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->maybeLogSizes()V

    .line 139
    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->maybeLogColumns()V

    .line 142
    .end local v0           #analyzer:Lcom/google/android/apps/books/provider/database/DbAnalyzer;
    :cond_2d
    new-instance v2, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v2, v1, v3}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    .line 144
    new-instance v2, Lcom/google/android/apps/books/provider/ManifestProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/apps/books/provider/ManifestProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    .line 145
    new-instance v2, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-direct {v2, v1, v3}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/ConfigurationProvidelet;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    .line 146
    new-instance v2, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    .line 147
    new-instance v2, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    .line 148
    new-instance v2, Lcom/google/android/apps/books/provider/AccountsProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/apps/books/provider/AccountsProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAccountsProv:Lcom/google/android/apps/books/provider/AccountsProvidelet;

    .line 150
    new-instance v2, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v2, v1, v3, v4, p0}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;Landroid/content/ContentProvider;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    .line 152
    new-instance v2, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v2, v1, v3}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    .line 154
    new-instance v2, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    sget-object v4, Lcom/google/android/apps/books/provider/BooksProvider;->mBuilderPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    .line 156
    new-instance v2, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v2, v1, v3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    .line 158
    new-instance v2, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-direct {v2, v1, v3}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V

    iput-object v2, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    .line 160
    const/4 v2, 0x1

    return v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 522
    const-string v1, "BooksProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 523
    const-string v1, "BooksProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 527
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 528
    .local v0, match:I
    sparse-switch v0, :sswitch_data_6e

    .line 553
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 532
    :sswitch_3f
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 551
    :goto_45
    return-object v1

    .line 536
    :sswitch_46
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_45

    .line 541
    :sswitch_4d
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_45

    .line 543
    :sswitch_54
    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 546
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider;->ensureResourceContent(Landroid/net/Uri;)V

    .line 548
    :cond_5f
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mVolumeContentProv:Lcom/google/android/apps/books/provider/VolumeContentProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_45

    .line 551
    :sswitch_66
    iget-object v1, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_45

    .line 528
    nop

    :sswitch_data_6e
    .sparse-switch
        0x64 -> :sswitch_3f
        0x6e -> :sswitch_3f
        0x78 -> :sswitch_3f
        0x96 -> :sswitch_4d
        0x97 -> :sswitch_4d
        0xca -> :sswitch_4d
        0x12e -> :sswitch_54
        0x192 -> :sswitch_4d
        0x258 -> :sswitch_46
        0x259 -> :sswitch_46
        0x25a -> :sswitch_46
        0x2d0 -> :sswitch_66
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 304
    const-string v1, "BooksProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 305
    const-string v1, "BooksProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", projection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selectionArgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sortOrder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 311
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/books/provider/BooksProvider;->dispatchQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 312
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_61

    .line 316
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 318
    :cond_61
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 395
    const-string v0, "BooksProvider"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 396
    const-string v0, "BooksProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selectionArgs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/ProviderUtils;->ensureNotOnMainThread(Landroid/content/Context;Landroid/net/Uri;)V

    .line 401
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v1

    .line 402
    .local v1, match:I
    sparse-switch v1, :sswitch_data_dc

    .line 448
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI for update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :sswitch_6e
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalStatesProvidelet:Lcom/google/android/apps/books/provider/LocalStatesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 446
    :goto_78
    return v0

    .line 410
    :sswitch_79
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalVolumesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 421
    :sswitch_84
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mManifestProv:Lcom/google/android/apps/books/provider/ManifestProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/ManifestProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 424
    :sswitch_8f
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAnnotationsProv:Lcom/google/android/apps/books/provider/AnnotationsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/AnnotationsProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 427
    :sswitch_9a
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mSessionKeysProv:Lcom/google/android/apps/books/provider/SessionKeysProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/SessionKeysProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 431
    :sswitch_a5
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionsProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 436
    :sswitch_b0
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalCollectionVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 439
    :sswitch_bb
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mLocalLibraryVolumesProvidelet:Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 442
    :sswitch_c6
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 446
    :sswitch_d1
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider;->mAccountsProv:Lcom/google/android/apps/books/provider/AccountsProvidelet;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/provider/AccountsProvidelet;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_78

    .line 402
    :sswitch_data_dc
    .sparse-switch
        0x64 -> :sswitch_79
        0x6e -> :sswitch_79
        0x78 -> :sswitch_79
        0xc8 -> :sswitch_84
        0xc9 -> :sswitch_84
        0xcd -> :sswitch_84
        0xce -> :sswitch_84
        0x12c -> :sswitch_84
        0x12d -> :sswitch_84
        0x15e -> :sswitch_84
        0x15f -> :sswitch_84
        0x190 -> :sswitch_84
        0x191 -> :sswitch_84
        0x1ae -> :sswitch_8f
        0x1af -> :sswitch_8f
        0x1c2 -> :sswitch_9a
        0x1c3 -> :sswitch_9a
        0x258 -> :sswitch_6e
        0x259 -> :sswitch_6e
        0x25a -> :sswitch_6e
        0x2bc -> :sswitch_a5
        0x2bd -> :sswitch_a5
        0x2be -> :sswitch_a5
        0x2c6 -> :sswitch_b0
        0x2c7 -> :sswitch_b0
        0x2c8 -> :sswitch_b0
        0x2d0 -> :sswitch_bb
        0x320 -> :sswitch_c6
        0x3e8 -> :sswitch_d1
        0x3e9 -> :sswitch_d1
    .end sparse-switch
.end method
