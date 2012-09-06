.class public Lcom/google/android/music/store/MusicFileTombstone;
.super Ljava/lang/Object;
.source "MusicFileTombstone.java"


# static fields
.field private static final MUSIC_TOMBSTONE_PROJECTION:[Ljava/lang/String;

.field private static TOMBSTONE_PROJECTION_INDEX_ID:I

.field private static TOMBSTONE_PROJECTION_SOURCE_ID:I

.field private static TOMBSTONE_PROJECTION_SOURCE_VERSION:I


# instance fields
.field private final mLocalId:J

.field private final mSourceId:Ljava/lang/String;

.field private final mSourceVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v2

    const-string v1, "SourceId"

    aput-object v1, v0, v3

    const-string v1, "_sync_version"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MusicFileTombstone;->MUSIC_TOMBSTONE_PROJECTION:[Ljava/lang/String;

    .line 25
    sput v2, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_INDEX_ID:I

    .line 26
    sput v3, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    .line 27
    sput v4, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget v0, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_INDEX_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFileTombstone;->mLocalId:J

    .line 81
    sget v0, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 82
    sget v0, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFileTombstone;->mSourceId:Ljava/lang/String;

    .line 86
    :goto_1c
    sget v0, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 87
    sget v0, Lcom/google/android/music/store/MusicFileTombstone;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFileTombstone;->mSourceVersion:Ljava/lang/String;

    .line 92
    :goto_2c
    return-void

    .line 84
    :cond_2d
    iput-object v2, p0, Lcom/google/android/music/store/MusicFileTombstone;->mSourceId:Ljava/lang/String;

    goto :goto_1c

    .line 90
    :cond_30
    iput-object v2, p0, Lcom/google/android/music/store/MusicFileTombstone;->mSourceVersion:Ljava/lang/String;

    goto :goto_2c
.end method

.method public static getMusicTombstones(Lcom/google/android/music/store/Store;)Ljava/util/List;
    .registers 12
    .parameter "store"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/Store;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/store/MusicFileTombstone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 42
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_5
    const-string v1, "MUSIC_TOMBSTONES"

    sget-object v2, Lcom/google/android/music/store/MusicFileTombstone;->MUSIC_TOMBSTONE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 46
    if-eqz v8, :cond_37

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 47
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 49
    .local v10, tombstones:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/store/MusicFileTombstone;>;"
    :cond_22
    new-instance v9, Lcom/google/android/music/store/MusicFileTombstone;

    invoke-direct {v9, v8}, Lcom/google/android/music/store/MusicFileTombstone;-><init>(Landroid/database/Cursor;)V

    .line 50
    .local v9, tombstone:Lcom/google/android/music/store/MusicFileTombstone;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_3c

    move-result v1

    if-nez v1, :cond_22

    .line 57
    .end local v9           #tombstone:Lcom/google/android/music/store/MusicFileTombstone;
    :goto_30
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v10

    .line 53
    .end local v10           #tombstones:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/store/MusicFileTombstone;>;"
    :cond_37
    :try_start_37
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    move-result-object v10

    .restart local v10       #tombstones:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/store/MusicFileTombstone;>;"
    goto :goto_30

    .line 57
    .end local v10           #tombstones:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/store/MusicFileTombstone;>;"
    :catchall_3c
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public static insertMusicTombstone(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J
    .registers 9
    .parameter "db"
    .parameter "sourceId"
    .parameter "sourceAccount"

    .prologue
    .line 73
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "SourceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "SourceAccount"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v1, "MUSIC_TOMBSTONES"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_23

    const-wide/16 v1, 0x0

    :goto_22
    return-wide v1

    :cond_23
    const-wide/16 v1, 0x1

    goto :goto_22
.end method


# virtual methods
.method public getLocalId()J
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFileTombstone;->mLocalId:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/music/store/MusicFileTombstone;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/music/store/MusicFileTombstone;->mSourceVersion:Ljava/lang/String;

    return-object v0
.end method
