.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;
.super Ljava/lang/Object;
.source "MapFlashService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private catalogRecordBytes:I

.field private catalogUpdatedSinceLastWrite:Z

.field private final flashRecords:Ljava/util/Vector;

.field private highestRecordId:I

.field private lastChangedTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private maxFlashSize:I

.field private maxRecordBlocks:I

.field private needsScavenge:Z

.field private nextPersistTime:J

.field private final recordStoreBaseName:Ljava/lang/String;

.field private final store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private textSize:I

.field private tileEdition:I

.field private final tileToRecordMap:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V
    .registers 11
    .parameter "mapService"
    .parameter "recordStoreBaseName"
    .parameter "maxFlashSize"
    .parameter "maxRecordStores"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v2

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    .line 122
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    .line 125
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    .line 129
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    .line 133
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    .line 137
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    .line 140
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 214
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    .line 215
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    .line 216
    add-int/lit16 v2, p3, -0x7d0

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    .line 217
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, now:J
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    .line 219
    const-wide/16 v2, 0x841

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    .line 220
    add-int/lit8 v2, p4, -0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    .line 222
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 223
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->readCatalog()V

    .line 224
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    .line 225
    return-void
.end method

.method private addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .registers 7
    .parameter "newRecord"

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    .line 844
    .local v2, numEntries:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 845
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    .line 846
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 848
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v2, :cond_2b

    .line 849
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 850
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 852
    .end local v0           #entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_2b
    return-void
.end method

.method private canCreateAnEmptyRecordStore()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    :try_start_16
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {v2, v3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    .line 798
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-interface {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z
    :try_end_23
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_16 .. :try_end_23} :catch_25

    .line 802
    const/4 v0, 0x1

    :goto_24
    return v0

    .line 799
    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method private fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .registers 12
    .parameter "mapCache"
    .parameter "maxDataSize"

    .prologue
    .line 811
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    invoke-direct {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    .line 812
    .local v4, newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    const/4 v2, 0x1

    .line 813
    .local v2, newDataSize:I
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v5

    .line 816
    .local v5, sortedMemoryTiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    array-length v8, v5

    add-int/lit8 v7, v8, -0x1

    .local v7, tileIndex:I
    :goto_f
    if-ltz v7, :cond_3e

    .line 818
    aget-object v6, v5, v7

    .line 820
    .local v6, tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3b

    .line 821
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    .line 822
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 823
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    invoke-direct {v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    .line 824
    .local v3, newEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    move-result v0

    .line 825
    .local v0, entrySize:I
    add-int v8, v2, v0

    if-gt v8, p2, :cond_3b

    invoke-virtual {v4, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 827
    add-int/2addr v2, v0

    .line 817
    .end local v0           #entrySize:I
    .end local v1           #mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v3           #newEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_3b
    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    .line 833
    .end local v6           #tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_3e
    return-object v4
.end method

.method private findRecordIndexByID(I)I
    .registers 6
    .parameter "recordID"

    .prologue
    .line 505
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 507
    .local v2, numEntries:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_1b

    .line 508
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 509
    .local v0, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v3

    if-ne v3, p1, :cond_18

    .line 514
    .end local v0           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v1           #i:I
    :goto_17
    return v1

    .line 507
    .restart local v0       #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .restart local v1       #i:I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 514
    .end local v0           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_1b
    const/4 v1, -0x1

    goto :goto_17
.end method

.method private getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .registers 4
    .parameter "location"

    .prologue
    .line 892
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 894
    .local v0, record:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v1

    goto :goto_b
.end method

.method private getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .registers 3
    .parameter "index"

    .prologue
    .line 539
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    return-object v0
.end method

.method private handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v1

    .line 384
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FLASH "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "B "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_48

    const-string v0, " catalog"

    :goto_2b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_47

    .line 398
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->canCreateAnEmptyRecordStore()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 399
    add-int/lit16 v0, v1, -0x3e8

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    .line 404
    :cond_47
    :goto_47
    return-void

    .line 386
    :cond_48
    const-string v0, ""

    goto :goto_2b

    .line 401
    :cond_4b
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    goto :goto_47
.end method

.method private loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 7
    .parameter "flashRecord"
    .parameter "desiredTile"

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v0

    .line 1037
    .local v0, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez v0, :cond_20

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_b
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v1

    .line 1040
    .local v1, recordId:I
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->findRecordIndexByID(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 1041
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 1044
    monitor-exit p0

    .line 1048
    .end local v1           #recordId:I
    :cond_20
    return-object v0

    .line 1044
    :catchall_21
    move-exception v2

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v2
.end method

.method private declared-synchronized persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V
    .registers 8
    .parameter "newRecord"
    .parameter "newRecordData"
    .parameter "recordId"

    .prologue
    .line 769
    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    if-nez v1, :cond_f

    .line 770
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/4 v2, 0x0

    new-array v2, v2, [B

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_21

    .line 774
    :cond_f
    :try_start_f
    invoke-virtual {p0, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeRecord(Ljava/lang/String;I[B)V

    .line 776
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_21
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_f .. :try_end_19} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_24

    .line 783
    :goto_19
    monitor-exit p0

    return-void

    .line 777
    :catch_1b
    move-exception v0

    .line 778
    .local v0, e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    const/4 v1, 0x0

    :try_start_1d
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_19

    .line 769
    .end local v0           #e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1

    .line 779
    :catch_24
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_25
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_21

    goto :goto_19
.end method

.method private declared-synchronized readCatalog()V
    .registers 11

    .prologue
    const/16 v9, 0xa

    .line 272
    monitor-enter p0

    const/16 v4, 0xa

    .line 275
    .local v4, formatVersion:I
    const/4 v7, 0x1

    :try_start_6
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 276
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    .line 278
    .local v0, directory:[B
    if-eqz v0, :cond_1c

    .line 281
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    move-result-object v5

    .line 283
    .local v5, is:Ljava/io/DataInput;
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_58
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_19} :catch_51

    move-result v4

    .line 284
    if-eq v4, v9, :cond_2a

    .line 307
    .end local v0           #directory:[B
    .end local v5           #is:Ljava/io/DataInput;
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    if-eqz v7, :cond_23

    .line 309
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    .line 311
    :cond_23
    if-eq v4, v9, :cond_28

    .line 313
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_58

    .line 316
    :cond_28
    monitor-exit p0

    return-void

    .line 287
    .restart local v0       #directory:[B
    .restart local v5       #is:Ljava/io/DataInput;
    :cond_2a
    :try_start_2a
    invoke-interface {v5}, Ljava/io/DataInput;->readBoolean()Z

    .line 288
    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    move-result v7

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    .line 289
    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    move-result v7

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    .line 290
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 294
    .local v6, numEntries:I
    const/4 v2, 0x0

    .local v2, entry:I
    :goto_3e
    if-ge v2, v6, :cond_4a

    .line 295
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v3

    .line 296
    .local v3, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 299
    .end local v3           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_4a
    array-length v7, v0

    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 300
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_58
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_50} :catch_51

    goto :goto_1c

    .line 303
    .end local v0           #directory:[B
    .end local v2           #entry:I
    .end local v5           #is:Ljava/io/DataInput;
    .end local v6           #numEntries:I
    :catch_51
    move-exception v1

    .line 304
    .local v1, e:Ljava/io/IOException;
    :try_start_52
    const-string v7, "FLASH"

    invoke-static {v7, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_58

    goto :goto_1c

    .line 272
    .end local v1           #e:Ljava/io/IOException;
    :catchall_58
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V
    .registers 8
    .parameter "flashRecord"
    .parameter "elementIndex"

    .prologue
    .line 869
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    move-result v3

    if-nez v3, :cond_7

    .line 883
    :cond_6
    return-void

    .line 873
    :cond_7
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    move-result v2

    .line 875
    .local v2, numEntries:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 876
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->setUnsaved()V

    .line 877
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 879
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v2, :cond_6

    .line 880
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 881
    .local v0, entry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method private static removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "name"
    .parameter "array"

    .prologue
    const/4 v1, 0x0

    .line 481
    if-nez p1, :cond_4

    .line 492
    :cond_3
    :goto_3
    return v1

    .line 485
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 486
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 487
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 488
    const/4 v1, 0x1

    goto :goto_3

    .line 485
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized close(Z)V
    .registers 4
    .parameter "saveState"

    .prologue
    .line 253
    monitor-enter p0

    if-eqz p1, :cond_9

    .line 255
    :try_start_3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCache()Z

    .line 256
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_b

    .line 261
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 257
    :catch_b
    move-exception v0

    .line 258
    .local v0, e:Ljava/io/IOException;
    :try_start_c
    const-string v1, "FLASH"

    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_9

    .line 253
    .end local v0           #e:Ljava/io/IOException;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method doPersist(Ljava/util/Hashtable;)I
    .registers 36
    .parameter "mapCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v10, v0, [I

    fill-array-data v10, :array_280

    .line 579
    .local v10, indicesToFree:[I
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-object/from16 v17, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-object v31, v17, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-object v31, v17, v30

    .line 581
    .local v17, recordsToFree:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v24

    .line 586
    .local v24, startTime:J
    monitor-enter p0

    .line 589
    :try_start_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3d

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->scavengeCatalog()Z

    .line 591
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    .line 594
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v31

    sub-int v3, v30, v31

    .line 595
    .local v3, bytesAvail:I
    move v11, v3

    .line 598
    .local v11, maxDataSize:I
    const v30, 0x11940

    move/from16 v0, v30

    if-lt v3, v0, :cond_61

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_130

    .line 600
    :cond_61
    const/16 v27, -0x1

    .line 601
    .local v27, worstIndex:I
    const/16 v20, -0x1

    .line 602
    .local v20, secondWorstIndex:I
    const-wide/high16 v28, -0x8000

    .line 603
    .local v28, worstScore:J
    const-wide/high16 v21, -0x8000

    .line 604
    .local v21, secondWorstScore:J
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v16

    .line 605
    .local v16, numEntries:I
    const/4 v9, 0x0

    .local v9, index:I
    :goto_6e
    move/from16 v0, v16

    if-ge v9, v0, :cond_a6

    .line 606
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v5

    .line 607
    .local v5, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v18

    .line 610
    .local v18, score:J
    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-eq v0, v1, :cond_8a

    cmp-long v30, v18, v21

    if-lez v30, :cond_9e

    .line 611
    :cond_8a
    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_96

    cmp-long v30, v18, v28

    if-lez v30, :cond_a1

    .line 612
    :cond_96
    move/from16 v20, v27

    .line 613
    move-wide/from16 v21, v28

    .line 614
    move/from16 v27, v9

    .line 615
    move-wide/from16 v28, v18

    .line 605
    :cond_9e
    :goto_9e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 617
    :cond_a1
    move/from16 v20, v9

    .line 618
    move-wide/from16 v21, v18

    goto :goto_9e

    .line 623
    .end local v5           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v18           #score:J
    :cond_a6
    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_c8

    .line 624
    const/16 v30, 0x0

    aput v27, v10, v30

    .line 625
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v31

    aput-object v31, v17, v30

    .line 626
    const/16 v30, 0x0

    aget-object v30, v17, v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v30

    add-int v11, v11, v30

    .line 629
    :cond_c8
    const v30, 0x11940

    move/from16 v0, v30

    if-ge v11, v0, :cond_f1

    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-eq v0, v1, :cond_f1

    .line 631
    const/16 v30, 0x1

    aput v20, v10, v30

    .line 632
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v31

    aput-object v31, v17, v30

    .line 633
    const/16 v30, 0x1

    aget-object v30, v17, v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v30

    add-int v11, v11, v30

    .line 636
    :cond_f1
    const v30, 0x11940

    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 640
    .end local v9           #index:I
    .end local v16           #numEntries:I
    .end local v20           #secondWorstIndex:I
    .end local v21           #secondWorstScore:J
    .end local v27           #worstIndex:I
    .end local v28           #worstScore:J
    :goto_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_2a .. :try_end_fb} :catchall_134

    .line 642
    const/16 v30, 0x1770

    move/from16 v0, v30

    if-ge v11, v0, :cond_137

    .line 648
    const/16 v30, 0x0

    aget-object v30, v17, v30

    if-eqz v30, :cond_12d

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v31, v17, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 651
    const/16 v30, 0x0

    aget-object v30, v17, v30

    const/16 v31, 0x0

    aget v31, v10, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 653
    :cond_12d
    const/16 v26, 0x1

    .line 759
    :goto_12f
    return v26

    .line 638
    :cond_130
    const v11, 0x11940

    goto :goto_fa

    .line 640
    .end local v3           #bytesAvail:I
    .end local v11           #maxDataSize:I
    :catchall_134
    move-exception v30

    :try_start_135
    monitor-exit p0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw v30

    .line 661
    .restart local v3       #bytesAvail:I
    .restart local v11       #maxDataSize:I
    :cond_137
    monitor-enter p1

    .line 664
    :try_start_138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_end_14a
    .catchall {:try_start_138 .. :try_end_14a} :catchall_1d5

    move-result-object v12

    .line 667
    .local v12, newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_start_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    .line 669
    monitor-exit p1
    :try_end_157
    .catchall {:try_start_14b .. :try_end_157} :catchall_1e2

    .line 675
    invoke-virtual {v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v14

    .line 676
    .local v14, newRecordSize:I
    const/16 v30, 0x1770

    move/from16 v0, v30

    if-lt v14, v0, :cond_27b

    .line 677
    const/4 v7, -0x1

    .line 683
    .local v7, id:I
    monitor-enter p0

    .line 684
    :try_start_163
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    move-result v31

    sub-int v3, v30, v31

    .line 685
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    fill-array-data v23, :array_288

    .line 686
    .local v23, shouldFree:[Z
    const/4 v4, 0x0

    .line 687
    .local v4, displaceBytes:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_17c
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ge v6, v0, :cond_1b4

    .line 688
    aget-object v30, v17, v6

    if-eqz v30, :cond_1ae

    aget-object v30, v17, v6

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    move-result v30

    if-eqz v30, :cond_1ae

    aget-object v30, v17, v6

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v30

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-lez v30, :cond_1ae

    .line 692
    const/16 v30, 0x1

    aput-boolean v30, v23, v6

    .line 693
    aget-object v30, v17, v6

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    move-result v30

    add-int v4, v4, v30

    .line 695
    :cond_1ae
    add-int v30, v3, v4

    move/from16 v0, v30

    if-gt v14, v0, :cond_1e5

    .line 700
    :cond_1b4
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v15

    .line 702
    .local v15, numBlocks:I
    add-int v30, v3, v4

    move/from16 v0, v30

    if-le v14, v0, :cond_1e8

    .line 703
    const/16 v26, 0x2

    .line 735
    .local v26, status:I
    :cond_1c0
    :goto_1c0
    monitor-exit p0
    :try_end_1c1
    .catchall {:try_start_163 .. :try_end_1c1} :catchall_259

    .line 737
    if-ltz v7, :cond_1d0

    .line 739
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->createDataEntry(Ljava/util/Hashtable;)[B

    move-result-object v13

    .line 740
    .local v13, newRecordData:[B
    if-eqz v13, :cond_1d0

    .line 748
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V

    .line 756
    .end local v4           #displaceBytes:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v13           #newRecordData:[B
    .end local v15           #numBlocks:I
    .end local v23           #shouldFree:[Z
    :cond_1d0
    :goto_1d0
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z

    goto/16 :goto_12f

    .line 667
    .end local v12           #newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v14           #newRecordSize:I
    .end local v26           #status:I
    :catchall_1d5
    move-exception v30

    :try_start_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    throw v30

    .line 669
    :catchall_1e2
    move-exception v30

    monitor-exit p1
    :try_end_1e4
    .catchall {:try_start_1d6 .. :try_end_1e4} :catchall_1e2

    throw v30

    .line 687
    .restart local v4       #displaceBytes:I
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v12       #newRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .restart local v14       #newRecordSize:I
    .restart local v23       #shouldFree:[Z
    :cond_1e5
    add-int/lit8 v6, v6, 0x1

    goto :goto_17c

    .line 705
    .restart local v15       #numBlocks:I
    :cond_1e8
    const/16 v30, 0x0

    :try_start_1ea
    aget-boolean v30, v23, v30

    if-eqz v30, :cond_25c

    if-gt v14, v3, :cond_1fa

    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_25c

    .line 707
    :cond_1fa
    const/16 v26, 0x4

    .line 708
    .restart local v26       #status:I
    const/16 v30, 0x0

    aget-object v30, v17, v30

    invoke-virtual/range {v30 .. v30}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v7

    .line 709
    const/16 v30, 0x0

    aget-object v30, v17, v30

    const/16 v31, 0x0

    aget v31, v10, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 710
    const/16 v30, 0x1

    aget-boolean v30, v23, v30

    if-eqz v30, :cond_1c0

    .line 712
    const/16 v30, 0x0

    aget v30, v10, v30

    const/16 v31, 0x1

    aget v31, v10, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_231

    .line 713
    const/16 v30, 0x1

    aget v31, v10, v30

    add-int/lit8 v31, v31, -0x1

    aput v31, v10, v30

    .line 723
    :cond_231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget-object v31, v17, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 724
    const/16 v30, 0x1

    aget-object v30, v17, v30

    const/16 v31, 0x1

    aget v31, v10, v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    goto/16 :goto_1c0

    .line 735
    .end local v4           #displaceBytes:I
    .end local v6           #i:I
    .end local v15           #numBlocks:I
    .end local v23           #shouldFree:[Z
    .end local v26           #status:I
    :catchall_259
    move-exception v30

    monitor-exit p0
    :try_end_25b
    .catchall {:try_start_1ea .. :try_end_25b} :catchall_259

    throw v30

    .line 726
    .restart local v4       #displaceBytes:I
    .restart local v6       #i:I
    .restart local v15       #numBlocks:I
    .restart local v23       #shouldFree:[Z
    :cond_25c
    :try_start_25c
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_277

    .line 727
    const/16 v26, 0x3

    .line 728
    .restart local v26       #status:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    move/from16 v30, v0

    add-int/lit8 v8, v30, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I
    :try_end_274
    .catchall {:try_start_25c .. :try_end_274} :catchall_259

    .end local v7           #id:I
    .local v8, id:I
    move v7, v8

    .end local v8           #id:I
    .restart local v7       #id:I
    goto/16 :goto_1c0

    .line 733
    .end local v26           #status:I
    :cond_277
    const/16 v26, 0x5

    .restart local v26       #status:I
    goto/16 :goto_1c0

    .line 752
    .end local v4           #displaceBytes:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v15           #numBlocks:I
    .end local v23           #shouldFree:[Z
    .end local v26           #status:I
    :cond_27b
    const/16 v26, 0x0

    .restart local v26       #status:I
    goto/16 :goto_1d0

    .line 578
    nop

    :array_280
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 685
    :array_288
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public declared-synchronized eraseAll()V
    .registers 3

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 417
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 422
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteAllBlocks(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 423
    monitor-exit p0

    return-void

    .line 416
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFlashRecordsSize()I
    .registers 5

    .prologue
    .line 901
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 902
    .local v1, numRecords:I
    const/4 v2, 0x0

    .line 904
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_9
    if-ge v0, v1, :cond_17

    .line 905
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    move-result v3

    add-int/2addr v2, v3

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 907
    :cond_17
    monitor-exit p0

    return v2

    .line 901
    .end local v0           #index:I
    .end local v1           #numRecords:I
    .end local v2           #size:I
    :catchall_19
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .registers 6
    .parameter "tile"

    .prologue
    .line 933
    const/4 v1, 0x0

    .line 934
    .local v1, mapTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    move-result-object v0

    .line 936
    .local v0, flashEntry:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    if-eqz v0, :cond_20

    .line 940
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    move-result-object v1

    .line 943
    if-eqz v1, :cond_20

    .line 945
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    .line 950
    :cond_20
    return-object v1
.end method

.method getNumBlocks()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSize()I
    .registers 3

    .prologue
    .line 916
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecordsSize()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapChanged()V
    .registers 3

    .prologue
    .line 976
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    .line 977
    return-void
.end method

.method recordBlockName(I)Ljava/lang/String;
    .registers 4
    .parameter "recordId"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;
    .registers 3
    .parameter "flashRecord"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized scavengeCatalog()Z
    .registers 9

    .prologue
    .line 434
    monitor-enter p0

    const/4 v5, 0x1

    .line 437
    .local v5, wasOk:Z
    :try_start_2
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->listBlocks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, rsNames:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_10
    if-ltz v2, :cond_2b

    .line 442
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    .line 443
    .local v1, flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 444
    const/4 v5, 0x0

    .line 446
    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    .line 441
    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 451
    .end local v1           #flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_2b
    const/4 v0, 0x0

    .line 452
    .local v0, catalogInFlash:Z
    if-eqz v4, :cond_45

    .line 453
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 454
    const/4 v2, 0x0

    :goto_35
    array-length v6, v4

    if-ge v2, v6, :cond_45

    .line 455
    aget-object v3, v4, v2

    .line 456
    .local v3, rsName:Ljava/lang/String;
    if-eqz v3, :cond_42

    .line 457
    const/4 v5, 0x0

    .line 459
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    invoke-interface {v6, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    .line 454
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 465
    .end local v3           #rsName:Ljava/lang/String;
    :cond_45
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_50

    move-result v6

    if-lez v6, :cond_4e

    if-nez v0, :cond_4e

    .line 466
    const/4 v5, 0x0

    .line 471
    :cond_4e
    monitor-exit p0

    return v5

    .line 434
    .end local v0           #catalogInFlash:Z
    .end local v2           #i:I
    .end local v4           #rsNames:[Ljava/lang/String;
    :catchall_50
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setTileEditionAndTextSize(II)Z
    .registers 7
    .parameter "newTileEdition"
    .parameter "newTextSize"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 1063
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    if-eq p1, v2, :cond_a

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    if-ne v2, v3, :cond_12

    :cond_a
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eq p2, v2, :cond_1f

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    if-eq v2, v3, :cond_1f

    :cond_12
    move v0, v1

    .line 1065
    .local v0, changed:Z
    :goto_13
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    .line 1066
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    .line 1067
    if-eqz v0, :cond_1e

    .line 1068
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    .line 1071
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    .line 1073
    :cond_1e
    return v0

    .line 1063
    .end local v0           #changed:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public writeCache()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x841

    .line 993
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v2

    .line 994
    .local v2, startTime:J
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getMapCache()Ljava/util/Hashtable;

    move-result-object v1

    .line 996
    .local v1, mapCache:Ljava/util/Hashtable;
    const/4 v0, 0x0

    .line 997
    .local v0, cachingStillActive:Z
    iget-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_52

    iget-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    const-wide/16 v7, 0x5dc

    add-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-gez v5, :cond_52

    .line 1000
    :try_start_24
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->doPersist(Ljava/util/Hashtable;)I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_41

    move-result v4

    .line 1002
    .local v4, status:I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_2e

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3f

    :cond_2e
    const/4 v0, 0x1

    .line 1006
    :goto_2f
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v5

    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v9

    iput-wide v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    .line 1014
    .end local v4           #status:I
    :goto_3e
    return v0

    .line 1002
    .restart local v4       #status:I
    :cond_3f
    const/4 v0, 0x0

    goto :goto_2f

    .line 1006
    .end local v4           #status:I
    :catchall_41
    move-exception v5

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v9

    iput-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    throw v5

    .line 1011
    :cond_52
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method declared-synchronized writeCatalog()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 336
    monitor-enter p0

    const/4 v5, 0x1

    .line 338
    .local v5, isOk:Z
    :try_start_3
    iget-boolean v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5b

    if-nez v9, :cond_9

    .line 374
    :goto_7
    monitor-exit p0

    return v8

    .line 343
    :cond_9
    :try_start_9
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v6

    .line 345
    .local v6, numEntries:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 348
    .local v2, dos:Ljava/io/DataOutputStream;
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 349
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 350
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 351
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 352
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 353
    const/4 v4, 0x0

    .local v4, entry:I
    :goto_30
    if-ge v4, v6, :cond_3c

    .line 354
    invoke-direct {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    move-result-object v7

    .line 355
    .local v7, record:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {v7, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeToCatalog(Ljava/io/DataOutput;)V

    .line 353
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 357
    .end local v7           #record:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_3c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 358
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_5b

    move-result-object v1

    .line 359
    .local v1, directory:[B
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 365
    :try_start_45
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    invoke-interface {v8, v1, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5b
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_45 .. :try_end_4c} :catch_54

    .line 371
    :goto_4c
    :try_start_4c
    array-length v8, v1

    iput v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    .line 372
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    move v8, v5

    .line 374
    goto :goto_7

    .line 366
    :catch_54
    move-exception v3

    .line 367
    .local v3, e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5b

    .line 368
    const/4 v5, 0x0

    goto :goto_4c

    .line 336
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #directory:[B
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v3           #e:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    .end local v4           #entry:I
    .end local v6           #numEntries:I
    :catchall_5b
    move-exception v8

    monitor-exit p0

    throw v8
.end method
