.class public Lcom/google/android/music/store/PlayList;
.super Lcom/google/android/music/store/Syncable;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/PlayList$Item;
    }
.end annotation


# static fields
.field private static final COUNT_COLUMNS:[Ljava/lang/String;

.field private static final FULL_PROJECTION:[Ljava/lang/String;

.field private static final LIST_SOURCE_COLUMNS:[Ljava/lang/String;

.field private static final MUSIC_SOURCE_COLUMNS:[Ljava/lang/String;

.field private static final PLAYLIST_TOMBSTONE_PROJECTION:[Ljava/lang/String;

.field private static TOMBSTONE_PROJECTION_INDEX_ID:I

.field private static TOMBSTONE_PROJECTION_SOURCE_ID:I

.field private static TOMBSTONE_PROJECTION_SOURCE_VERSION:I


# instance fields
.field private mArtworkLocation:Ljava/lang/String;

.field private mId:J

.field private mMediaStoreId:J

.field private mName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LISTS.Id"

    aput-object v1, v0, v3

    const-string v1, "LISTS.MediaStoreId"

    aput-object v1, v0, v4

    const-string v1, "LISTS.Name"

    aput-object v1, v0, v5

    const-string v1, "LISTS.SourceAccount"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "LISTS._sync_version"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LISTS.SourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LISTS._sync_dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LISTS.ListType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LISTS.ListArtworkLocation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/PlayList;->FULL_PROJECTION:[Ljava/lang/String;

    .line 64
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "SourceId"

    aput-object v1, v0, v4

    const-string v1, "_sync_version"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/store/PlayList;->PLAYLIST_TOMBSTONE_PROJECTION:[Ljava/lang/String;

    .line 70
    sput v3, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_INDEX_ID:I

    .line 71
    sput v4, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    .line 72
    sput v5, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    .line 118
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SourceId"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/PlayList;->MUSIC_SOURCE_COLUMNS:[Ljava/lang/String;

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "MusicSourceId"

    aput-object v1, v0, v3

    const-string v1, "MusicSourceAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/PlayList;->LIST_SOURCE_COLUMNS:[Ljava/lang/String;

    .line 125
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(1)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/PlayList;->COUNT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/store/Syncable;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/PlayList;->mType:I

    .line 75
    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 23
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 23
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    return v0
.end method

.method static appendAlbum(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    .registers 13
    .parameter "db"
    .parameter "playlistId"
    .parameter "albumId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 895
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/PlayList;->MUSIC_SOURCE_COLUMNS:[Ljava/lang/String;

    const-string v3, "MUSIC.AlbumId=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v5, "SongId"

    const-string v7, "DiscNumber, TrackNumber, CanonicalName"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 906
    .local v3, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    :try_start_20
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    move-result v0

    .line 909
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return v0

    :catchall_28
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static appendArtist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    .registers 14
    .parameter "db"
    .parameter "playlistId"
    .parameter "artistId"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 923
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 924
    .local v8, artistIdString:Ljava/lang/String;
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/PlayList;->MUSIC_SOURCE_COLUMNS:[Ljava/lang/String;

    const-string v3, "AlbumArtistId=? OR ArtistId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object v8, v4, v7

    aput-object v8, v4, v5

    const-string v5, "SongId"

    const-string v7, "CanonicalName"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 935
    .local v3, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    :try_start_23
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    move-result v0

    .line 937
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return v0

    :catchall_2b
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    .registers 13
    .parameter "db"
    .parameter "playlistId"
    .parameter "genreId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 950
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/PlayList;->MUSIC_SOURCE_COLUMNS:[Ljava/lang/String;

    const-string v3, "GenreId=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v5, "SongId"

    const-string v7, "CanonicalName"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 961
    .local v3, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    :try_start_20
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    move-result v0

    .line 963
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return v0

    :catchall_28
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static appendGenre(Landroid/database/sqlite/SQLiteDatabase;JJJ)I
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .parameter "genreId"
    .parameter "albumId"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 975
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/PlayList;->MUSIC_SOURCE_COLUMNS:[Ljava/lang/String;

    const-string v3, "GenreId=? AND AlbumId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v5, "SongId"

    const-string v7, "DiscNumber, TrackNumber, CanonicalName"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 986
    .local v3, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    :try_start_27
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    move-result v0

    .line 988
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return v0

    :catchall_2f
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static appendItem(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;Z)J
    .registers 16
    .parameter "db"
    .parameter "playlistId"
    .parameter "fileSourceAccount"
    .parameter "fileSourceId"
    .parameter "canResetPositions"

    .prologue
    .line 822
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_b

    .line 823
    const-wide/16 v0, 0x0

    .line 854
    :goto_a
    return-wide v0

    .line 826
    :cond_b
    new-instance v7, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v7}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 827
    .local v7, newItem:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {v7, p3}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 828
    invoke-virtual {v7, p4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceId(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v7, p1, p2}, Lcom/google/android/music/store/PlayList$Item;->setListId(J)V

    .line 830
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList$Item;->setNeedsSync(Z)V

    .line 832
    const/4 v8, 0x0

    .line 833
    .local v8, newPosition:I
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->getLastItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;

    move-result-object v6

    .line 834
    .local v6, lastPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList$Item;->setServerPosition(Ljava/lang/String;)V

    .line 835
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, -0x8000

    if-le v0, v1, :cond_77

    .line 836
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x2

    add-int v8, v0, v1

    .line 838
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v8, v0, :cond_77

    .line 839
    if-eqz p5, :cond_5e

    .line 840
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 841
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;Z)J

    move-result-wide v0

    goto :goto_a

    .line 843
    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to append item to playlist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_77
    int-to-long v0, v8

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/PlayList$Item;->setClientPosition(J)V

    .line 850
    invoke-static {p0}, Lcom/google/android/music/store/PlayList$Item;->compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 852
    .local v9, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_7f
    invoke-virtual {v7, v9}, Lcom/google/android/music/store/PlayList$Item;->insertItem(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_87

    move-result-wide v0

    .line 854
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    goto :goto_a

    :catchall_87
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    throw v0
.end method

.method static appendItem(Landroid/database/sqlite/SQLiteDatabase;JJ)J
    .registers 16
    .parameter "db"
    .parameter "playlistId"
    .parameter "musicId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 868
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SourceAccount"

    aput-object v0, v2, v10

    const-string v0, "SourceId"

    aput-object v0, v2, v8

    .line 871
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "MUSIC"

    const-string v3, "Id= ?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 875
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3d

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 876
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 877
    .local v6, fileSourceAccount:I
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_5c

    move-result-object v7

    .line 882
    .local v7, fileSourceId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v3, p0

    move-wide v4, p1

    .line 885
    invoke-static/range {v3 .. v8}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0

    .line 879
    .end local v6           #fileSourceAccount:I
    .end local v7           #fileSourceId:Ljava/lang/String;
    :cond_3d
    :try_start_3d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Music with id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_5c

    .line 882
    :catchall_5c
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;IZLjava/lang/Integer;ZZZJ)I
    .registers 36
    .parameter "db"
    .parameter "playlistId"
    .parameter "musicCursor"
    .parameter "maxToAdd"
    .parameter "canResetPositions"
    .parameter "sourceAccount"
    .parameter "yieldIfCongested"
    .parameter "allOrNone"
    .parameter "sync"
    .parameter "playGroupId"

    .prologue
    .line 1057
    if-nez p3, :cond_4

    .line 1058
    const/4 v8, 0x0

    .line 1129
    :goto_3
    return v8

    .line 1061
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v8, v4, -0x1

    .line 1062
    .local v8, toAdd:I
    move/from16 v0, p4

    if-le v8, v0, :cond_15

    .line 1063
    move/from16 v8, p4

    .line 1066
    :cond_15
    const/4 v4, 0x1

    if-ge v8, v4, :cond_1a

    .line 1067
    const/4 v8, 0x0

    goto :goto_3

    .line 1070
    :cond_1a
    invoke-static/range {p0 .. p2}, Lcom/google/android/music/store/PlayList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v4

    rsub-int v0, v4, 0x3e8

    move/from16 v23, v0

    .line 1071
    .local v23, spaceAvailable:I
    move/from16 v0, v23

    if-ge v0, v8, :cond_2f

    .line 1072
    if-nez p8, :cond_2a

    if-nez v23, :cond_2d

    .line 1073
    :cond_2a
    const/high16 v8, -0x8000

    goto :goto_3

    .line 1075
    :cond_2d
    move/from16 v8, v23

    .line 1078
    :cond_2f
    invoke-static/range {p0 .. p2}, Lcom/google/android/music/store/PlayList;->getLastItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;

    move-result-object v20

    .line 1079
    .local v20, lastPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 1080
    .local v22, serverPosition:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1084
    .local v19, lastClientPosition:I
    if-lez v19, :cond_99

    const v4, 0x7fffffff

    sub-int v4, v4, v19

    const/high16 v5, 0x2

    div-int/2addr v4, v5

    add-int/lit8 v5, v8, -0x1

    if-ge v4, v5, :cond_99

    .line 1088
    if-eqz p5, :cond_74

    .line 1089
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1090
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;IZLjava/lang/Integer;ZZZJ)I

    move-result v8

    goto :goto_3

    .line 1093
    :cond_74
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " items to playlist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1099
    :cond_99
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/PlayList$Item;->compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v18

    .line 1101
    .local v18, insert:Landroid/database/sqlite/SQLiteStatement;
    const/high16 v4, 0x2

    add-int v16, v19, v4

    .line 1102
    .local v16, clientPosition:I
    :try_start_a1
    new-instance v21, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 1103
    .local v21, newItem:Lcom/google/android/music/store/PlayList$Item;
    const/16 v17, 0x0

    .line 1104
    .local v17, count:I
    :cond_a8
    :goto_a8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 1105
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/PlayList$Item;->reset()V

    .line 1106
    if-nez p6, :cond_101

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    :goto_ba
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 1108
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceId(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/PlayList$Item;->setListId(J)V

    .line 1110
    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/store/PlayList$Item;->setServerPosition(Ljava/lang/String;)V

    .line 1111
    move/from16 v0, v16

    int-to-long v4, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/store/PlayList$Item;->setClientPosition(J)V

    .line 1112
    move-object/from16 v0, v21

    move-wide/from16 v1, p10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/PlayList$Item;->setPlayGroupId(J)V

    .line 1113
    move-object/from16 v0, v21

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/PlayList$Item;->setNeedsSync(Z)V

    .line 1114
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/PlayList$Item;->insertItem(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_f2
    .catchall {:try_start_a1 .. :try_end_f2} :catchall_116

    .line 1116
    const/high16 v4, 0x2

    add-int v16, v16, v4

    .line 1117
    add-int/lit8 v17, v17, 0x1

    .line 1118
    move/from16 v0, v17

    if-lt v0, v8, :cond_106

    .line 1126
    :cond_fc
    invoke-static/range {v18 .. v18}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    goto/16 :goto_3

    .line 1106
    :cond_101
    :try_start_101
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_ba

    .line 1121
    :cond_106
    if-eqz p7, :cond_a8

    move/from16 v0, v17

    rem-int/lit16 v4, v0, 0x200

    if-nez v4, :cond_a8

    .line 1122
    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_115
    .catchall {:try_start_101 .. :try_end_115} :catchall_116

    goto :goto_a8

    .line 1126
    .end local v17           #count:I
    .end local v21           #newItem:Lcom/google/android/music/store/PlayList$Item;
    :catchall_116
    move-exception v4

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    throw v4
.end method

.method static appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    .registers 20
    .parameter "db"
    .parameter "playlistId"
    .parameter "musicCursor"
    .parameter "canResetPositions"
    .parameter "sourceAccount"
    .parameter "yieldIfCongested"
    .parameter "allOrNone"

    .prologue
    .line 1021
    const v4, 0x7fffffff

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v11}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;IZLjava/lang/Integer;ZZZJ)I

    move-result v0

    return v0
.end method

.method static appendPlaylist(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    .registers 13
    .parameter "db"
    .parameter "playlistId"
    .parameter "sourcePlaylistId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1000
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList;->LIST_SOURCE_COLUMNS:[Ljava/lang/String;

    const-string v3, "ListId=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v7, "ServerOrder, ClientPosition"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1011
    .local v3, c:Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    :try_start_1f
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    move-result v0

    .line 1013
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return v0

    :catchall_27
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 135
    const-string v0, "insert into LISTS ( MediaStoreId, Name, _sync_version, _sync_dirty, SourceAccount, SourceId, ListType, ListArtworkLocation) values (?,?,?,?,?,?,?,?)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compilePlayListUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 142
    const-string v0, "update LISTS set MediaStoreId=?, Name=?, _sync_version=?, _sync_dirty=?, SourceAccount=?, SourceId=?, ListType=?, ListArtworkLocation=? where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compilePlaylistDeleteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 149
    const-string v0, "delete from LISTS where SourceAccount=? AND SourceId=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method private static copySideloadedPlaylistItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .registers 15
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 572
    .local v10, syncedListId:J
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList;->LIST_SOURCE_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ListId=? AND MusicSourceAccount="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ServerOrder, ClientPosition"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 582
    .local v3, itemCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_61

    :try_start_42
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 585
    const/4 v0, 0x0

    invoke-static {p0, v10, v11, v0}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v12

    .line 586
    .local v12, syncedPlaylist:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v12}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;

    move-result-object v9

    .line 587
    .local v9, newList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v9}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_65

    .line 591
    .end local v9           #newList:Lcom/google/android/music/store/PlayList;
    .end local v12           #syncedPlaylist:Lcom/google/android/music/store/PlayList;
    :cond_61
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_4

    :catchall_65
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 594
    .end local v3           #itemCursor:Landroid/database/Cursor;
    .end local v10           #syncedListId:J
    :cond_6a
    return-void
.end method

.method static createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;
    .registers 3
    .parameter "db"
    .parameter "name"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Lcom/google/android/music/store/PlayList;

    move-result-object v0

    return-object v0
.end method

.method static createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Lcom/google/android/music/store/PlayList;
    .registers 8
    .parameter "db"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 251
    new-instance v1, Lcom/google/android/music/store/PlayList;

    invoke-direct {v1}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 252
    .local v1, list:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v1, p1}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 253
    sparse-switch p2, :sswitch_data_40

    .line 264
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized playlist type value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :sswitch_24
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 267
    :goto_28
    invoke-virtual {v1, p2}, Lcom/google/android/music/store/PlayList;->setType(I)V

    .line 268
    invoke-static {p0}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 270
    .local v0, insert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_2f
    invoke-virtual {v1, v0}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    .line 272
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 275
    return-object v1

    .line 261
    .end local v0           #insert:Landroid/database/sqlite/SQLiteStatement;
    :sswitch_36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    goto :goto_28

    .line 272
    .restart local v0       #insert:Landroid/database/sqlite/SQLiteStatement;
    :catchall_3b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2

    .line 253
    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_24
        0x1 -> :sswitch_24
        0xa -> :sswitch_36
        0x32 -> :sswitch_36
    .end sparse-switch
.end method

.method static deleteAllItems(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 8
    .parameter "db"
    .parameter "playlistId"

    .prologue
    .line 1192
    const-string v0, "LISTITEMS"

    const-string v1, "ListId=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static deleteAllMediaStorePlaylists(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 512
    .local v2, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 514
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-static {v0}, Lcom/google/android/music/store/PlayList;->getMediaStorePlaylistIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Collection;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_15

    move-result-object v1

    .line 516
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 519
    invoke-static {p0, v1}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/content/Context;Ljava/util/Collection;)I

    move-result v3

    return v3

    .line 516
    :catchall_15
    move-exception v3

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public static deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 8
    .parameter "db"
    .parameter "localListId"

    .prologue
    .line 334
    const-string v0, "LISTS"

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public static deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .registers 6
    .parameter "deleteStatement"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 324
    const/4 v0, 0x1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 325
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 328
    return-void
.end method

.method static deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13
    .parameter "db"
    .parameter "sourceMusicId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1423
    const/4 v9, 0x0

    .line 1424
    .local v9, count:I
    const-string v1, "LISTITEMS"

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicSourceAccount=0 AND MusicSourceId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1433
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_35

    .line 1434
    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1435
    new-instance v10, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v10}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 1436
    .local v10, item:Lcom/google/android/music/store/PlayList$Item;
    :goto_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1437
    invoke-virtual {v10, v8}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 1438
    const/4 v0, 0x0

    invoke-virtual {v10, p0, v0}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_30

    goto :goto_22

    .line 1442
    .end local v10           #item:Lcom/google/android/music/store/PlayList$Item;
    :catchall_30
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_35
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1445
    return v9
.end method

.method static deleteMediaStorePlaylists(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 2
    .parameter "db"

    .prologue
    .line 534
    invoke-static {p0}, Lcom/google/android/music/store/PlayList;->getMediaStorePlaylistIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static deletePlaylistsAndItems(Landroid/content/Context;Ljava/util/Collection;)I
    .registers 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, playlistIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 606
    .local v1, deleteCount:I
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 607
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 608
    .local v2, store:Lcom/google/android/music/store/Store;
    const/4 v3, 0x0

    .line 609
    .local v3, success:Z
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 611
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_10
    invoke-static {v0, p1}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_26

    move-result v1

    .line 612
    const/4 v3, 0x1

    .line 614
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 618
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #store:Lcom/google/android/music/store/Store;
    .end local v3           #success:Z
    :cond_18
    if-lez v1, :cond_25

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 621
    :cond_25
    return v1

    .line 614
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #store:Lcom/google/android/music/store/Store;
    .restart local v3       #success:Z
    :catchall_26
    move-exception v4

    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method static deletePlaylistsAndItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 8
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, playlistIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 631
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v2

    .line 651
    :cond_9
    :goto_9
    return v0

    .line 636
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 637
    .local v1, selectionBuffer:Ljava/lang/StringBuffer;
    const-string v3, "Id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    invoke-static {v1, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 640
    const-string v3, "LISTS"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 644
    .local v0, deletedPlaylists:I
    if-lez v0, :cond_9

    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 646
    const-string v2, "ListId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-static {v1, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 648
    const-string v2, "LISTITEMS"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9
.end method

.method static deleteSyncedPlaylists(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 13
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 547
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v9, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v1, "LISTS"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Id"

    aput-object v0, v2, v3

    const-string v3, "SourceAccount != 0"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 552
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_40

    .line 553
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 554
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 555
    .local v10, playlistId:J
    invoke-static {}, Lcom/google/android/music/store/PlayQueue;->getInstance()Lcom/google/android/music/store/PlayQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/store/PlayQueue;->getListId()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1c

    .line 556
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_3b

    goto :goto_1c

    .line 561
    .end local v10           #playlistId:J
    :catchall_3b
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_40
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 566
    invoke-static {p0, v9}, Lcom/google/android/music/store/PlayList;->copySideloadedPlaylistItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 567
    invoke-static {p0, v9}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static deleteTopItems(Landroid/database/sqlite/SQLiteDatabase;JI)I
    .registers 9
    .parameter "db"
    .parameter "playlistId"
    .parameter "howMany"

    .prologue
    .line 1174
    const-string v0, "LISTITEMS"

    const-string v1, "Id IN (SELECT Id FROM LISTITEMS WHERE ListId=? ORDER BY ServerOrder, ClientPosition LIMIT ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 9
    .parameter "db"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x1

    .line 484
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 485
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "MediaStoreId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 486
    const-string v1, "SourceId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 487
    const-string v1, "_sync_dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v1, "LISTS"

    const-string v2, "Id=? AND MediaStoreId NOT NULL"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method static getFilteredItemCount(Landroid/database/sqlite/SQLiteDatabase;JI)I
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .parameter "filterIndex"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    .local v8, condition:Ljava/lang/StringBuilder;
    const-string v0, "ListId=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-static {v8, p3}, Lcom/google/android/music/store/Filters;->addFilteringCondition(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1225
    const/4 v9, 0x0

    .line 1226
    .local v9, count:I
    const-string v1, "LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    sget-object v2, Lcom/google/android/music/store/PlayList;->COUNT_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1230
    .local v10, countCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_35

    :try_start_2a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1231
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_39

    move-result v9

    .line 1235
    :cond_35
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1237
    return v9

    .line 1235
    :catchall_39
    move-exception v0

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getFirstItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 744
    const-string v11, ""

    .line 745
    .local v11, serverPosition:Ljava/lang/String;
    const/high16 v10, -0x8000

    .line 747
    .local v10, clientPosition:I
    const-string v1, "LISTITEMS"

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "ServerOrder, ClientPosition"

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 758
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_39

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 759
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$100()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 760
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$200()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_46

    move-result v10

    .line 763
    :cond_39
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 766
    new-instance v0, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 763
    :catchall_46
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 13
    .parameter "db"
    .parameter "playlistId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1197
    const/4 v8, 0x0

    .line 1198
    .local v8, count:I
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList;->COUNT_COLUMNS:[Ljava/lang/String;

    const-string v3, "ListId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1202
    .local v9, countCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_26

    :try_start_1b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1203
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    move-result v8

    .line 1207
    :cond_26
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1209
    return v8

    .line 1207
    :catchall_2a
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJ)Landroid/util/Pair;
    .registers 14
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 771
    const-string v1, "LISTITEMS"

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListId=? AND Id=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 778
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_46

    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 779
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$100()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$200()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_69

    .line 787
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-object v0

    .line 783
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found in playlist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_46 .. :try_end_69} :catchall_69

    .line 787
    :catchall_69
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getLastItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 716
    const-string v11, ""

    .line 717
    .local v11, serverPosition:Ljava/lang/String;
    const/high16 v10, -0x8000

    .line 719
    .local v10, clientPosition:I
    const-string v1, "LISTITEMS"

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ListId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "ServerOrder DESC, ClientPosition DESC"

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 730
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_39

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 731
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$100()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 732
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$200()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_46

    move-result v10

    .line 735
    :cond_39
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 738
    new-instance v0, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 735
    :catchall_46
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static getMediaStorePlaylistIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Collection;
    .registers 11
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 494
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v9, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v1, "LISTS"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Id"

    aput-object v0, v2, v3

    const-string v3, "MediaStoreId NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 498
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_34

    .line 499
    :goto_1c
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 500
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2f

    goto :goto_1c

    .line 504
    :catchall_2f
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_34
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 506
    return-object v9
.end method

.method private static getNextClientPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)I
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .parameter "serverPosition"
    .parameter "clientPosition"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 795
    const-string v1, "LISTITEMS"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "ClientPosition"

    aput-object v0, v2, v6

    const-string v3, "ListId=? AND ServerOrder=? AND ClientPosition>?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    aput-object p3, v4, v7

    const/4 v0, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v7, "ClientPosition"

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 804
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3a

    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 805
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_40

    move-result v0

    .line 810
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_39
    return v0

    .line 807
    :cond_3a
    const/high16 v0, -0x8000

    .line 810
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_39

    :catchall_40
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getPlaylistTombstones(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 9
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 709
    const-string v1, "LIST_TOMBSTONES"

    sget-object v2, Lcom/google/android/music/store/PlayList;->PLAYLIST_TOMBSTONE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistsToSync(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 9
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 689
    const-string v1, "LISTS"

    sget-object v2, Lcom/google/android/music/store/PlayList;->FULL_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_dirty=1 AND (SourceAccount<>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "EXISTS(SELECT 1 FROM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "LISTITEMS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ListId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "LISTS.Id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MusicSourceAccount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " LIMIT 1)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZZ)Z
    .registers 37
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .parameter "desiredPreviousItemId"
    .parameter "canResetPositions"
    .parameter "sync"

    .prologue
    .line 1294
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/PlayList;->getItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJ)Landroid/util/Pair;

    move-result-object v27

    .line 1296
    .local v27, previousPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, v27

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1297
    .local v10, serverPosition:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1298
    .local v16, previousClientPosition:I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v10, v3}, Lcom/google/android/music/store/PlayList;->getNextClientPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)I

    move-result v26

    .line 1300
    .local v26, nextClientPosition:I
    const/high16 v5, -0x8000

    move/from16 v0, v26

    if-ne v0, v5, :cond_73

    .line 1302
    const/high16 v5, 0x2

    add-int v11, v16, v5

    .line 1305
    .local v11, clientPosition:I
    move/from16 v0, v16

    if-gt v11, v0, :cond_66

    .line 1306
    if-eqz p7, :cond_4b

    .line 1307
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v10}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1308
    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v13, p8

    invoke-static/range {v5 .. v13}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZZ)Z

    .end local v10           #serverPosition:Ljava/lang/String;
    move-result v5

    .line 1330
    .end local v11           #clientPosition:I
    :goto_4a
    return v5

    .line 1310
    .restart local v10       #serverPosition:Ljava/lang/String;
    .restart local v11       #clientPosition:I
    :cond_4b
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to move item in playlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_66
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v12, p8

    .line 1313
    invoke-static/range {v5 .. v12}, Lcom/google/android/music/store/PlayList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;IZ)V

    .line 1314
    const/4 v5, 0x1

    goto :goto_4a

    .line 1316
    .end local v11           #clientPosition:I
    :cond_73
    sub-int v5, v26, v16

    const/4 v6, 0x1

    if-le v5, v6, :cond_c4

    .line 1318
    sub-int v5, v26, v16

    div-int/lit8 v5, v5, 0x2

    add-int v11, v16, v5

    .line 1322
    .restart local v11       #clientPosition:I
    move/from16 v0, v16

    if-le v11, v0, :cond_86

    move/from16 v0, v26

    if-lt v11, v0, :cond_b7

    .line 1323
    :cond_86
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in calculating playlist item position."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b7
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v12, p8

    .line 1326
    invoke-static/range {v5 .. v12}, Lcom/google/android/music/store/PlayList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;IZ)V

    .line 1327
    const/4 v5, 0x1

    goto :goto_4a

    .line 1328
    .end local v11           #clientPosition:I
    :cond_c4
    if-eqz p7, :cond_e2

    .line 1329
    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move-object v15, v10

    invoke-static/range {v12 .. v17}, Lcom/google/android/music/store/PlayList;->resetPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;IZ)V

    .line 1330
    const/16 v24, 0x0

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move/from16 v25, p8

    invoke-static/range {v17 .. v25}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZZ)Z

    move-result v5

    goto/16 :goto_4a

    .line 1332
    :cond_e2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to move item in playlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZZ)Z
    .registers 17
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .parameter "canResetPositions"
    .parameter "sync"

    .prologue
    .line 1247
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->getFirstItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;

    move-result-object v9

    .line 1248
    .local v9, firstPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1249
    .local v5, serverPosition:Ljava/lang/String;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1251
    .local v8, firstClientPosition:I
    const/4 v6, 0x0

    .line 1252
    .local v6, newClientPosition:I
    const/high16 v0, -0x8000

    if-eq v8, v0, :cond_19

    .line 1253
    const/high16 v0, 0x2

    sub-int v6, v8, v0

    .line 1256
    :cond_19
    if-ge v6, v8, :cond_1f

    const/high16 v0, -0x8000

    if-ne v6, v0, :cond_48

    .line 1257
    :cond_1f
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1258
    if-eqz p5, :cond_2f

    .line 1259
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/PlayList;->moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZZ)Z

    .end local v5           #serverPosition:Ljava/lang/String;
    .end local v6           #newClientPosition:I
    move-result v0

    .line 1265
    :goto_2e
    return v0

    .line 1261
    .restart local v5       #serverPosition:Ljava/lang/String;
    .restart local v6       #newClientPosition:I
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move item in playlist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v7, p6

    .line 1264
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/store/PlayList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;IZ)V

    .line 1265
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method private prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 11
    .parameter "statement"

    .prologue
    const-wide/16 v1, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 155
    iget-wide v3, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4b

    .line 156
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 160
    :goto_13
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    if-nez v0, :cond_51

    const-string v0, ""

    :goto_1a
    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 161
    const/4 v0, 0x7

    iget v3, p0, Lcom/google/android/music/store/PlayList;->mType:I

    int-to-long v3, v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 162
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 163
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 167
    :goto_2b
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceVersion:Ljava/lang/String;

    if-nez v0, :cond_5a

    .line 168
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 172
    :goto_32
    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/google/android/music/store/PlayList;->mNeedsSync:Z

    if-eqz v0, :cond_60

    const-wide/16 v0, 0x1

    :goto_39
    invoke-virtual {p1, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 174
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/music/store/PlayList;->mSourceAccount:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 175
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceId:Ljava/lang/String;

    if-nez v0, :cond_62

    .line 176
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 180
    :goto_4a
    return-void

    .line 158
    :cond_4b
    iget-wide v3, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    invoke-virtual {p1, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_13

    .line 160
    :cond_51
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    goto :goto_1a

    .line 165
    :cond_54
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    invoke-virtual {p1, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2b

    .line 170
    :cond_5a
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceVersion:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_32

    :cond_60
    move-wide v0, v1

    .line 172
    goto :goto_39

    .line 178
    :cond_62
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1, v7, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4a
.end method

.method static queryItems(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemColumns"

    .prologue
    const/4 v5, 0x0

    .line 665
    const-string v1, "LISTITEMS"

    const-string v3, "ListId=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const-string v7, "ServerOrder, ClientPosition"

    move-object v0, p0

    move-object v2, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;
    .registers 14
    .parameter "db"
    .parameter "playlistId"
    .parameter "playList"

    .prologue
    const/4 v5, 0x0

    .line 441
    const-string v1, "LISTS"

    sget-object v2, Lcom/google/android/music/store/PlayList;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "Id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 447
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_30

    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 448
    if-nez p3, :cond_28

    .line 449
    new-instance v9, Lcom/google/android/music/store/PlayList;

    invoke-direct {v9}, Lcom/google/android/music/store/PlayList;-><init>()V

    .end local p3
    .local v9, playList:Lcom/google/android/music/store/PlayList;
    move-object p3, v9

    .line 451
    .end local v9           #playList:Lcom/google/android/music/store/PlayList;
    .restart local p3
    :cond_28
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/PlayList;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_34

    .line 457
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v5, p3

    :goto_2f
    return-object v5

    :cond_30
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_2f

    :catchall_34
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;
    .registers 14
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"
    .parameter "playList"

    .prologue
    const/4 v5, 0x0

    .line 414
    const-string v1, "LISTS"

    sget-object v2, Lcom/google/android/music/store/PlayList;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 420
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2f

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 421
    if-nez p3, :cond_27

    .line 422
    new-instance v9, Lcom/google/android/music/store/PlayList;

    invoke-direct {v9}, Lcom/google/android/music/store/PlayList;-><init>()V

    .end local p3
    .local v9, playList:Lcom/google/android/music/store/PlayList;
    move-object p3, v9

    .line 424
    .end local v9           #playList:Lcom/google/android/music/store/PlayList;
    .restart local p3
    :cond_27
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/PlayList;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_33

    .line 430
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v5, p3

    :goto_2e
    return-object v5

    :cond_2f
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_2e

    :catchall_33
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static removeLocalOrphanedItems(Landroid/content/Context;)I
    .registers 16
    .parameter "context"

    .prologue
    .line 1449
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v13

    .line 1450
    .local v13, store:Lcom/google/android/music/store/Store;
    const/4 v11, 0x0

    .line 1451
    .local v11, count:I
    const/4 v14, 0x0

    .line 1452
    .local v14, success:Z
    invoke-virtual {v13}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1454
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 1458
    .local v10, chunkCount:I
    :cond_b
    :try_start_b
    const-string v1, "LISTITEMS LEFT  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "LISTITEMS.MusicSourceAccount=0 AND MUSIC.Id IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/music/store/Store;->OPERATIONS_PER_TXN_AS_STRING:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_3c

    move-result-object v9

    .line 1469
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_41

    .line 1470
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1471
    add-int/2addr v11, v10

    .line 1472
    new-instance v12, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v12}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 1473
    .local v12, item:Lcom/google/android/music/store/PlayList$Item;
    :goto_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1474
    invoke-virtual {v12, v9}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 1475
    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_37

    goto :goto_29

    .line 1480
    .end local v12           #item:Lcom/google/android/music/store/PlayList$Item;
    :catchall_37
    move-exception v1

    :try_start_38
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1487
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_3c
    move-exception v1

    invoke-virtual {v13, v0, v14}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1

    .line 1480
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_41
    :try_start_41
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1482
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3c

    .line 1483
    const/4 v14, 0x1

    .line 1484
    if-gtz v10, :cond_b

    .line 1487
    invoke-virtual {v13, v0, v14}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1490
    if-lez v11, :cond_5c

    .line 1492
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1496
    :cond_5c
    return v11
.end method

.method static removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 8
    .parameter "db"
    .parameter "playlistId"

    .prologue
    .line 1510
    const-string v0, "LISTITEMS"

    const-string v1, "Id IN (SELECT LISTITEMS.Id FROM LISTITEMS LEFT  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE LISTITEMS.ListId=? AND MUSIC.Id IS NULL)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static rename(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .registers 12
    .parameter "db"
    .parameter "playlistId"
    .parameter "newName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 470
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 471
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "Name"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v4, "_sync_dirty"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v4, "LISTS"

    const-string v5, "Id=?"

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, numberOfUpdatedPlaylists:I
    if-lez v0, :cond_29

    :goto_28
    return v2

    :cond_29
    move v2, v3

    goto :goto_28
.end method

.method private static resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .registers 10
    .parameter "db"
    .parameter "playlistId"
    .parameter "serverPosition"

    .prologue
    .line 1339
    const/high16 v4, -0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->resetPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;IZ)V

    .line 1340
    return-void
.end method

.method private static resetPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;IZ)V
    .registers 31
    .parameter "db"
    .parameter "playlistId"
    .parameter "serverPosition"
    .parameter "startingPosition"
    .parameter "fullReset"

    .prologue
    .line 1346
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v23, toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "ClientPosition"

    aput-object v5, v6, v4

    .line 1350
    .local v6, columns:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1351
    .local v12, c:Landroid/database/Cursor;
    const/high16 v4, 0x2

    add-int v14, p4, v4

    .line 1352
    .local v14, desiredStartingPosition:I
    const/high16 v4, -0x8000

    move/from16 v0, p4

    if-ne v0, v4, :cond_a4

    .line 1353
    const/4 v14, 0x0

    .line 1354
    const-string v5, "LISTITEMS"

    const-string v7, "ListId=? AND ServerOrder=? "

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    aput-object p3, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "ClientPosition"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1369
    :goto_39
    if-eqz v12, :cond_52

    .line 1377
    move v13, v14

    .line 1378
    .local v13, desiredPosition:I
    :goto_3c
    :try_start_3c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1379
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1380
    .local v18, itemId:J
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_d6

    move-result v21

    .line 1381
    .local v21, position:I
    if-nez p5, :cond_c8

    move/from16 v0, v21

    if-gt v13, v0, :cond_c8

    .line 1393
    .end local v13           #desiredPosition:I
    .end local v18           #itemId:J
    .end local v21           #position:I
    :cond_52
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1397
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1398
    .local v24, values:Landroid/content/ContentValues;
    const-string v22, "ListId=? AND Id=?"

    .line 1399
    .local v22, selection:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v20, v4

    .line 1402
    .local v20, params:[Ljava/lang/String;
    move v13, v14

    .line 1403
    .restart local v13       #desiredPosition:I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_71
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1404
    .local v16, id:J
    const-string v4, "ClientPosition"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    const/4 v4, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 1407
    const-string v4, "LISTITEMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1408
    const/high16 v4, 0x2

    add-int/2addr v13, v4

    goto :goto_71

    .line 1360
    .end local v13           #desiredPosition:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v20           #params:[Ljava/lang/String;
    .end local v22           #selection:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_a4
    const-string v5, "LISTITEMS"

    const-string v7, "ListId=? AND ServerOrder=? AND ClientPosition>?"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    aput-object p3, v8, v4

    const/4 v4, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "ClientPosition"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_39

    .line 1386
    .restart local v13       #desiredPosition:I
    .restart local v18       #itemId:J
    .restart local v21       #position:I
    :cond_c8
    :try_start_c8
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_d6

    .line 1389
    const/high16 v4, 0x2

    add-int/2addr v13, v4

    .line 1390
    goto/16 :goto_3c

    .line 1393
    .end local v18           #itemId:J
    .end local v21           #position:I
    :catchall_d6
    move-exception v4

    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    .line 1410
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #params:[Ljava/lang/String;
    .restart local v22       #selection:Ljava/lang/String;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_db
    return-void
.end method

.method private static setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;IZ)V
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .parameter "serverPosition"
    .parameter "clientPosition"
    .parameter "sync"

    .prologue
    const/4 v6, 0x1

    .line 1272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1273
    .local v0, values:Landroid/content/ContentValues;
    if-nez p5, :cond_39

    .line 1274
    const-string v1, "ServerOrder"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1278
    :goto_d
    const-string v1, "ClientPosition"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1279
    if-eqz p7, :cond_21

    .line 1280
    const-string v1, "_sync_dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    :cond_21
    const-string v1, "LISTITEMS"

    const-string v2, "ListId=? AND Id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1285
    return-void

    .line 1276
    :cond_39
    const-string v1, "ServerOrder"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method delete(Landroid/database/sqlite/SQLiteDatabase;ZZ)Z
    .registers 12
    .parameter "db"
    .parameter "sync"
    .parameter "deleteItems"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 347
    iget-wide v4, p0, Lcom/google/android/music/store/PlayList;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 348
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot delete object that was not loaded or created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    :cond_12
    new-array v0, v3, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/music/store/PlayList;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 352
    .local v0, listId:[Ljava/lang/String;
    const-string v4, "LISTS"

    const-string v5, "Id=?"

    invoke-virtual {p1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 354
    .local v1, numberOfDeletedLists:I
    if-lez v1, :cond_27

    move v2, v3

    .line 355
    .local v2, playlistDeleted:Z
    :cond_27
    if-le v1, v3, :cond_30

    .line 356
    const-string v3, "PlayList"

    const-string v4, "Deleted multiple objects"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_30
    if-eqz p2, :cond_39

    if-eqz v2, :cond_39

    .line 360
    const-string v3, "LIST_TOMBSTONES"

    invoke-virtual {p0, p1, v3}, Lcom/google/android/music/store/PlayList;->createTombstoneIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 363
    :cond_39
    if-eqz p3, :cond_44

    if-eqz v2, :cond_44

    .line 364
    const-string v3, "LISTITEMS"

    const-string v4, "ListId=?"

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    :cond_44
    return v2
.end method

.method public final getId()J
    .registers 3

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    return-wide v0
.end method

.method public final getMediaStoreId()J
    .registers 3

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/music/store/PlayList;->mType:I

    return v0
.end method

.method public insertList(Landroid/database/sqlite/SQLiteStatement;)J
    .registers 8
    .parameter "insertStatement"

    .prologue
    .line 286
    iget-wide v2, p0, Lcom/google/android/music/store/PlayList;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Playlist has a local id.  Forgot to call reset()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/PlayList;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 290
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 291
    .local v0, insertedId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    .line 292
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert into LISTS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_25
    iput-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 296
    iget-wide v2, p0, Lcom/google/android/music/store/PlayList;->mId:J

    return-wide v2
.end method

.method public populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "c"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 373
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 374
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    .line 375
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/store/PlayList;->mType:I

    .line 376
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 377
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    .line 381
    :goto_22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 382
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    .line 386
    :goto_2c
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 387
    iput v1, p0, Lcom/google/android/music/store/PlayList;->mSourceAccount:I

    .line 391
    :goto_34
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mSourceVersion:Ljava/lang/String;

    .line 392
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mSourceId:Ljava/lang/String;

    .line 393
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_61

    :goto_49
    iput-boolean v0, p0, Lcom/google/android/music/store/PlayList;->mNeedsSync:Z

    .line 394
    return-void

    .line 379
    :cond_4c
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    goto :goto_22

    .line 384
    :cond_53
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    goto :goto_2c

    .line 389
    :cond_5a
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/store/PlayList;->mSourceAccount:I

    goto :goto_34

    :cond_61
    move v0, v1

    .line 393
    goto :goto_49
.end method

.method public populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 397
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_INDEX_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 398
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 399
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceId:Ljava/lang/String;

    .line 401
    :cond_18
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 402
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceVersion:Ljava/lang/String;

    .line 404
    :cond_28
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-super {p0}, Lcom/google/android/music/store/Syncable;->reset()V

    .line 184
    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 185
    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    .line 186
    iput-object v1, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/PlayList;->mType:I

    .line 188
    iput-object v1, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public final setMediaStoreId(J)V
    .registers 3
    .parameter "mediaStoreId"

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    .line 225
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 208
    iput p1, p0, Lcom/google/android/music/store/PlayList;->mType:I

    .line 209
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 6
    .parameter "updateStatement"

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update object that has not been created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/PlayList;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 311
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/android/music/store/PlayList;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 312
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 313
    return-void
.end method
