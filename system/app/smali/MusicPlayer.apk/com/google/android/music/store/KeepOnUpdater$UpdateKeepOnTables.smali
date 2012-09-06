.class public Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;
.super Landroid/app/IntentService;
.source "KeepOnUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/KeepOnUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateKeepOnTables"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 523
    const-string v0, "KeepOnUpdater"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private static getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .parameter "intent"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 20
    .parameter "intent"

    .prologue
    .line 533
    const-string v14, "deselectedArtists"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 534
    .local v4, deselectedArtists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v14, "deselectedAlbums"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 535
    .local v3, deselectedAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v14, "deselectedPlaylists"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    .line 538
    .local v5, deselectedPlaylists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v14, "selectedArtists"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    .line 539
    .local v10, selectedArtists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v14, "selectedAlbums"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v9

    .line 540
    .local v9, selectedAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v14, "selectedPlaylists"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getLongCollection(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v11

    .line 542
    .local v11, selectedPlaylists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v12

    .line 543
    .local v12, store:Lcom/google/android/music/store/Store;
    const/4 v6, 0x0

    .line 544
    .local v6, fileCleanupNeeded:Z
    const/4 v1, 0x0

    .line 546
    .local v1, changesMade:Z
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v8

    .line 547
    .local v8, newKeeponIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 550
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3e
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v7, i:Landroid/content/Intent;
    const/4 v13, 0x0

    .line 554
    .local v13, totalChanges:I
    #calls: Lcom/google/android/music/store/KeepOnUpdater;->deleteArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    invoke-static {v2, v4}, Lcom/google/android/music/store/KeepOnUpdater;->access$100(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 556
    #calls: Lcom/google/android/music/store/KeepOnUpdater;->deleteAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    invoke-static {v2, v3}, Lcom/google/android/music/store/KeepOnUpdater;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 557
    #calls: Lcom/google/android/music/store/KeepOnUpdater;->deletePlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    invoke-static {v2, v5}, Lcom/google/android/music/store/KeepOnUpdater;->access$300(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 559
    invoke-static {v2, v10}, Lcom/google/android/music/store/KeepOnUpdater;->insertArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 560
    invoke-static {v2, v9}, Lcom/google/android/music/store/KeepOnUpdater;->insertAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 561
    #calls: Lcom/google/android/music/store/KeepOnUpdater;->insertPlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v2, v11}, Lcom/google/android/music/store/KeepOnUpdater;->access$400(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 563
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v14

    add-int/2addr v13, v14

    .line 564
    if-lez v13, :cond_8e

    const/4 v1, 0x1

    .line 566
    :goto_70
    if-eqz v1, :cond_76

    .line 567
    invoke-static {v2, v8}, Lcom/google/android/music/store/KeepOnUpdater;->updateNeedToKeepOn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    :try_end_75
    .catchall {:try_start_3e .. :try_end_75} :catchall_90

    move-result v6

    .line 570
    :cond_76
    invoke-virtual {v12, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 572
    if-eqz v1, :cond_8d

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 575
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/android/music/store/KeepOnUpdater;->sendShouldKeeponUpdatedBroadcast(Landroid/content/Context;Z)V

    .line 577
    :cond_8d
    return-void

    .line 564
    :cond_8e
    const/4 v1, 0x0

    goto :goto_70

    .line 570
    .end local v7           #i:Landroid/content/Intent;
    .end local v13           #totalChanges:I
    :catchall_90
    move-exception v14

    invoke-virtual {v12, v2, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v14
.end method
