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

    .line 845
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

    .line 856
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

    .line 859
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

    .line 873
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 874
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

    .line 885
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

    .line 887
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

    .line 900
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

    .line 911
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

    .line 913
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

    .line 925
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

    .line 936
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

    .line 938
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
    .line 772
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_b

    .line 773
    const-wide/16 v0, 0x0

    .line 804
    :goto_a
    return-wide v0

    .line 776
    :cond_b
    new-instance v7, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v7}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 777
    .local v7, newItem:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {v7, p3}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 778
    invoke-virtual {v7, p4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceId(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v7, p1, p2}, Lcom/google/android/music/store/PlayList$Item;->setListId(J)V

    .line 780
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList$Item;->setNeedsSync(Z)V

    .line 782
    const/4 v8, 0x0

    .line 783
    .local v8, newPosition:I
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->getLastItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;

    move-result-object v6

    .line 784
    .local v6, lastPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList$Item;->setServerPosition(Ljava/lang/String;)V

    .line 785
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, -0x8000

    if-le v0, v1, :cond_75

    .line 786
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v8, v0, 0x400

    .line 788
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v8, v0, :cond_75

    .line 789
    if-eqz p5, :cond_5c

    .line 790
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 791
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;Z)J

    move-result-wide v0

    goto :goto_a

    .line 793
    :cond_5c
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

    .line 798
    :cond_75
    int-to-long v0, v8

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/PlayList$Item;->setClientPosition(J)V

    .line 800
    invoke-static {p0}, Lcom/google/android/music/store/PlayList$Item;->compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 802
    .local v9, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_7d
    invoke-virtual {v7, v9}, Lcom/google/android/music/store/PlayList$Item;->insertItem(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_85

    move-result-wide v0

    .line 804
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    goto :goto_a

    :catchall_85
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

    .line 818
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SourceAccount"

    aput-object v0, v2, v10

    const-string v0, "SourceId"

    aput-object v0, v2, v8

    .line 821
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

    .line 825
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3d

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 826
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 827
    .local v6, fileSourceAccount:I
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_5c

    move-result-object v7

    .line 832
    .local v7, fileSourceId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v3, p0

    move-wide v4, p1

    .line 835
    invoke-static/range {v3 .. v8}, Lcom/google/android/music/store/PlayList;->appendItem(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0

    .line 829
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

    .line 832
    :catchall_5c
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I
    .registers 29
    .parameter "db"
    .parameter "playlistId"
    .parameter "musicCursor"
    .parameter "canResetPositions"
    .parameter "sourceAccount"
    .parameter "yieldIfCongested"
    .parameter "allOrNone"

    .prologue
    .line 995
    if-nez p3, :cond_5

    .line 996
    const/16 v20, 0x0

    .line 1063
    :goto_4
    return v20

    .line 999
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v20, v4, -0x1

    .line 1001
    .local v20, toAdd:I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ge v0, v4, :cond_18

    .line 1002
    const/16 v20, 0x0

    goto :goto_4

    .line 1005
    :cond_18
    invoke-static/range {p0 .. p2}, Lcom/google/android/music/store/PlayList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v4

    rsub-int v0, v4, 0x3e8

    move/from16 v19, v0

    .line 1006
    .local v19, spaceAvailable:I
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2f

    .line 1007
    if-nez p7, :cond_2a

    if-nez v19, :cond_2d

    .line 1008
    :cond_2a
    const/high16 v20, -0x8000

    goto :goto_4

    .line 1010
    :cond_2d
    move/from16 v20, v19

    .line 1013
    :cond_2f
    invoke-static/range {p0 .. p2}, Lcom/google/android/music/store/PlayList;->getLastItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;

    move-result-object v16

    .line 1014
    .local v16, lastPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 1015
    .local v18, serverPosition:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1019
    .local v15, lastClientPosition:I
    if-lez v15, :cond_95

    const v4, 0x7fffffff

    sub-int/2addr v4, v15

    div-int/lit16 v4, v4, 0x400

    add-int/lit8 v5, v20, -0x1

    if-ge v4, v5, :cond_95

    .line 1023
    if-eqz p4, :cond_6e

    .line 1024
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1025
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I

    move-result v20

    goto :goto_4

    .line 1028
    :cond_6e
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 1034
    :cond_95
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/PlayList$Item;->compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 1036
    .local v14, insert:Landroid/database/sqlite/SQLiteStatement;
    add-int/lit16 v12, v15, 0x400

    .line 1037
    .local v12, clientPosition:I
    :try_start_9b
    new-instance v17, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 1038
    .local v17, newItem:Lcom/google/android/music/store/PlayList$Item;
    const/4 v13, 0x0

    .line 1039
    .local v13, count:I
    :cond_a1
    :goto_a1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1040
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/store/PlayList$Item;->reset()V

    .line 1041
    if-nez p5, :cond_ec

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    :goto_b3
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 1043
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceId(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/PlayList$Item;->setListId(J)V

    .line 1045
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/music/store/PlayList$Item;->setServerPosition(Ljava/lang/String;)V

    .line 1046
    int-to-long v4, v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/store/PlayList$Item;->setClientPosition(J)V

    .line 1047
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/PlayList$Item;->setNeedsSync(Z)V

    .line 1048
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/google/android/music/store/PlayList$Item;->insertItem(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_df
    .catchall {:try_start_9b .. :try_end_df} :catchall_ff

    .line 1050
    add-int/lit16 v12, v12, 0x400

    .line 1051
    add-int/lit8 v13, v13, 0x1

    .line 1052
    move/from16 v0, v20

    if-lt v13, v0, :cond_f1

    .line 1060
    :cond_e7
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    goto/16 :goto_4

    .line 1041
    :cond_ec
    :try_start_ec
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_b3

    .line 1055
    :cond_f1
    if-eqz p6, :cond_a1

    rem-int/lit16 v4, v13, 0x200

    if-nez v4, :cond_a1

    .line 1056
    const-wide/16 v4, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_fe
    .catchall {:try_start_ec .. :try_end_fe} :catchall_ff

    goto :goto_a1

    .line 1060
    .end local v13           #count:I
    .end local v17           #newItem:Lcom/google/android/music/store/PlayList$Item;
    :catchall_ff
    move-exception v4

    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    throw v4
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

    .line 950
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

    .line 961
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

    .line 963
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
    .line 541
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

    .line 542
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

    .line 552
    .local v3, itemCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_61

    :try_start_42
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 555
    const/4 v0, 0x0

    invoke-static {p0, v10, v11, v0}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v12

    .line 556
    .local v12, syncedPlaylist:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v12}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;

    move-result-object v9

    .line 557
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

    .line 561
    .end local v9           #newList:Lcom/google/android/music/store/PlayList;
    .end local v12           #syncedPlaylist:Lcom/google/android/music/store/PlayList;
    :cond_61
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_4

    :catchall_65
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 564
    .end local v3           #itemCursor:Landroid/database/Cursor;
    .end local v10           #syncedListId:J
    :cond_6a
    return-void
.end method

.method static createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/google/android/music/store/PlayList;
    .registers 5
    .parameter "db"
    .parameter "name"

    .prologue
    .line 237
    new-instance v1, Lcom/google/android/music/store/PlayList;

    invoke-direct {v1}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 238
    .local v1, list:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v1, p1}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setType(I)V

    .line 241
    invoke-static {p0}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 243
    .local v0, insert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_14
    invoke-virtual {v1, v0}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    .line 245
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 248
    return-object v1

    .line 245
    :catchall_1b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method static deleteAllMediaStorePlaylists(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 485
    .local v2, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 487
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-static {v0}, Lcom/google/android/music/store/PlayList;->getMediaStorePlaylistIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Collection;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_15

    move-result-object v1

    .line 489
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 492
    invoke-static {p0, v1}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/content/Context;Ljava/util/Collection;)I

    move-result v3

    return v3

    .line 489
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
    .line 307
    const-string v0, "LISTS"

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public static deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .registers 6
    .parameter "deleteStatement"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 297
    const/4 v0, 0x1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 298
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 301
    return-void
.end method

.method static deleteLocalMusic(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13
    .parameter "db"
    .parameter "sourceMusicId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1264
    const/4 v9, 0x0

    .line 1265
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

    .line 1274
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_35

    .line 1275
    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1276
    new-instance v10, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v10}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 1277
    .local v10, item:Lcom/google/android/music/store/PlayList$Item;
    :goto_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1278
    invoke-virtual {v10, v8}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 1279
    const/4 v0, 0x0

    invoke-virtual {v10, p0, v0}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_30

    goto :goto_22

    .line 1283
    .end local v10           #item:Lcom/google/android/music/store/PlayList$Item;
    :catchall_30
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_35
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1286
    return v9
.end method

.method static deleteMediaStorePlaylists(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 2
    .parameter "db"

    .prologue
    .line 507
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
    .line 575
    .local p1, playlistIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 576
    .local v1, deleteCount:I
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 577
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 578
    .local v2, store:Lcom/google/android/music/store/Store;
    const/4 v3, 0x0

    .line 579
    .local v3, success:Z
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 581
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_10
    invoke-static {v0, p1}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_26

    move-result v1

    .line 582
    const/4 v3, 0x1

    .line 584
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 588
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #store:Lcom/google/android/music/store/Store;
    .end local v3           #success:Z
    :cond_18
    if-lez v1, :cond_25

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 591
    :cond_25
    return v1

    .line 584
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

    .line 601
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v2

    .line 621
    :cond_9
    :goto_9
    return v0

    .line 606
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 607
    .local v1, selectionBuffer:Ljava/lang/StringBuffer;
    const-string v3, "Id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    invoke-static {v1, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 610
    const-string v3, "LISTS"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, deletedPlaylists:I
    if-lez v0, :cond_9

    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 616
    const-string v2, "ListId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    invoke-static {v1, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 618
    const-string v2, "LISTITEMS"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9
.end method

.method static deleteSyncedPlaylists(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 11
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 520
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 521
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

    .line 525
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_34

    .line 526
    :goto_1c
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 527
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2f

    goto :goto_1c

    .line 531
    :catchall_2f
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_34
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 536
    invoke-static {p0, v9}, Lcom/google/android/music/store/PlayList;->copySideloadedPlaylistItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 537
    invoke-static {p0, v9}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static disconnectFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 9
    .parameter "db"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x1

    .line 457
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 458
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "MediaStoreId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 459
    const-string v1, "SourceId"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 460
    const-string v1, "_sync_dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v1, "LISTS"

    const-string v2, "Id=? AND MediaStoreId NOT NULL"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    return-void
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

    .line 694
    const-string v11, ""

    .line 695
    .local v11, serverPosition:Ljava/lang/String;
    const/high16 v10, -0x8000

    .line 697
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

    .line 708
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_39

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 709
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$100()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 710
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$200()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_46

    move-result v10

    .line 713
    :cond_39
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 716
    new-instance v0, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 713
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

    .line 1068
    const/4 v8, 0x0

    .line 1069
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

    .line 1073
    .local v9, countCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_26

    :try_start_1b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1074
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    move-result v8

    .line 1078
    :cond_26
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1080
    return v8

    .line 1078
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

    .line 721
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

    .line 728
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_46

    :try_start_23
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 729
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

    .line 737
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    return-object v0

    .line 733
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

    .line 737
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

    .line 666
    const-string v11, ""

    .line 667
    .local v11, serverPosition:Ljava/lang/String;
    const/high16 v10, -0x8000

    .line 669
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

    .line 680
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_39

    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 681
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$100()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 682
    invoke-static {}, Lcom/google/android/music/store/PlayList$Item;->access$200()I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_46

    move-result v10

    .line 685
    :cond_39
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 688
    new-instance v0, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 685
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

    .line 467
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 468
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

    .line 471
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_34

    .line 472
    :goto_1c
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 473
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2f

    goto :goto_1c

    .line 477
    :catchall_2f
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_34
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 479
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

    .line 745
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

    .line 754
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3a

    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 755
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_40

    move-result v0

    .line 760
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_39
    return v0

    .line 757
    :cond_3a
    const/high16 v0, -0x8000

    .line 760
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

    .line 659
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

    .line 639
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

.method static moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZ)Z
    .registers 35
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .parameter "desiredPreviousItemId"
    .parameter "canResetPositions"

    .prologue
    .line 1135
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/PlayList;->getItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJ)Landroid/util/Pair;

    move-result-object v26

    .line 1137
    .local v26, previousPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1138
    .local v10, serverPosition:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1139
    .local v16, previousClientPosition:I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v10, v3}, Lcom/google/android/music/store/PlayList;->getNextClientPosition(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;I)I

    move-result v25

    .line 1141
    .local v25, nextClientPosition:I
    const/high16 v5, -0x8000

    move/from16 v0, v25

    if-ne v0, v5, :cond_6f

    .line 1143
    move/from16 v0, v16

    add-int/lit16 v11, v0, 0x400

    .line 1146
    .local v11, clientPosition:I
    move/from16 v0, v16

    if-gt v11, v0, :cond_64

    .line 1147
    if-eqz p7, :cond_49

    .line 1148
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v10}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1149
    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v5 .. v12}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZ)Z

    .end local v10           #serverPosition:Ljava/lang/String;
    move-result v5

    .line 1171
    .end local v11           #clientPosition:I
    :goto_48
    return v5

    .line 1151
    .restart local v10       #serverPosition:Ljava/lang/String;
    .restart local v11       #clientPosition:I
    :cond_49
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

    :cond_64
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 1154
    invoke-static/range {v5 .. v11}, Lcom/google/android/music/store/PlayList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;I)V

    .line 1155
    const/4 v5, 0x1

    goto :goto_48

    .line 1157
    .end local v11           #clientPosition:I
    :cond_6f
    sub-int v5, v25, v16

    const/4 v6, 0x1

    if-le v5, v6, :cond_be

    .line 1159
    sub-int v5, v25, v16

    div-int/lit8 v5, v5, 0x2

    add-int v11, v16, v5

    .line 1163
    .restart local v11       #clientPosition:I
    move/from16 v0, v16

    if-le v11, v0, :cond_82

    move/from16 v0, v25

    if-lt v11, v0, :cond_b3

    .line 1164
    :cond_82
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in calculating playlist item position."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

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

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b3
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 1167
    invoke-static/range {v5 .. v11}, Lcom/google/android/music/store/PlayList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;I)V

    .line 1168
    const/4 v5, 0x1

    goto :goto_48

    .line 1169
    .end local v11           #clientPosition:I
    :cond_be
    if-eqz p7, :cond_da

    .line 1170
    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move-object v15, v10

    invoke-static/range {v12 .. v17}, Lcom/google/android/music/store/PlayList;->resetPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;IZ)V

    .line 1171
    const/16 v24, 0x0

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    invoke-static/range {v17 .. v24}, Lcom/google/android/music/store/PlayList;->moveItem(Landroid/database/sqlite/SQLiteDatabase;JJJZ)Z

    move-result v5

    goto/16 :goto_48

    .line 1173
    :cond_da
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

.method static moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZ)Z
    .registers 15
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .parameter "canResetPositions"

    .prologue
    const/high16 v1, -0x8000

    .line 1090
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/PlayList;->getFirstItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/util/Pair;

    move-result-object v8

    .line 1091
    .local v8, firstPosition:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1092
    .local v5, serverPosition:Ljava/lang/String;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1094
    .local v7, firstClientPosition:I
    const/4 v6, 0x0

    .line 1095
    .local v6, newClientPosition:I
    if-eq v7, v1, :cond_17

    .line 1096
    add-int/lit16 v6, v7, -0x400

    .line 1099
    :cond_17
    if-ge v6, v7, :cond_1b

    if-ne v6, v1, :cond_42

    .line 1100
    :cond_1b
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/music/store/PlayList;->resetClientPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    .line 1101
    if-eqz p5, :cond_29

    .line 1102
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->moveItemToTop(Landroid/database/sqlite/SQLiteDatabase;JJZ)Z

    .end local v5           #serverPosition:Ljava/lang/String;
    move-result v0

    .line 1108
    :goto_28
    return v0

    .line 1104
    .restart local v5       #serverPosition:Ljava/lang/String;
    :cond_29
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

    :cond_42
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1107
    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/PlayList;->setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;I)V

    .line 1108
    const/4 v0, 0x1

    goto :goto_28
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

.method public static readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;
    .registers 14
    .parameter "db"
    .parameter "playlistId"
    .parameter "playList"

    .prologue
    const/4 v5, 0x0

    .line 414
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

    .line 420
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_30

    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 421
    if-nez p3, :cond_28

    .line 422
    new-instance v9, Lcom/google/android/music/store/PlayList;

    invoke-direct {v9}, Lcom/google/android/music/store/PlayList;-><init>()V

    .end local p3
    .local v9, playList:Lcom/google/android/music/store/PlayList;
    move-object p3, v9

    .line 424
    .end local v9           #playList:Lcom/google/android/music/store/PlayList;
    .restart local p3
    :cond_28
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/PlayList;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_34

    .line 430
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

    .line 387
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

    .line 393
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2f

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 394
    if-nez p3, :cond_27

    .line 395
    new-instance v9, Lcom/google/android/music/store/PlayList;

    invoke-direct {v9}, Lcom/google/android/music/store/PlayList;-><init>()V

    .end local p3
    .local v9, playList:Lcom/google/android/music/store/PlayList;
    move-object p3, v9

    .line 397
    .end local v9           #playList:Lcom/google/android/music/store/PlayList;
    .restart local p3
    :cond_27
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/PlayList;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_33

    .line 403
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
    .line 1290
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v13

    .line 1291
    .local v13, store:Lcom/google/android/music/store/Store;
    const/4 v11, 0x0

    .line 1292
    .local v11, count:I
    const/4 v14, 0x0

    .line 1293
    .local v14, success:Z
    invoke-virtual {v13}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1295
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 1299
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

    .line 1310
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_41

    .line 1311
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1312
    add-int/2addr v11, v10

    .line 1313
    new-instance v12, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v12}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 1314
    .local v12, item:Lcom/google/android/music/store/PlayList$Item;
    :goto_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1315
    invoke-virtual {v12, v9}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 1316
    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lcom/google/android/music/store/PlayList$Item;->delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_37

    goto :goto_29

    .line 1321
    .end local v12           #item:Lcom/google/android/music/store/PlayList$Item;
    :catchall_37
    move-exception v1

    :try_start_38
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1328
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_3c
    move-exception v1

    invoke-virtual {v13, v0, v14}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v1

    .line 1321
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_41
    :try_start_41
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1323
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3c

    .line 1324
    const/4 v14, 0x1

    .line 1325
    if-gtz v10, :cond_b

    .line 1328
    invoke-virtual {v13, v0, v14}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1331
    if-lez v11, :cond_5c

    .line 1333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1337
    :cond_5c
    return v11
.end method

.method static rename(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Z
    .registers 12
    .parameter "db"
    .parameter "playlistId"
    .parameter "newName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 443
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 444
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "Name"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v4, "_sync_dirty"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v4, "LISTS"

    const-string v5, "Id=?"

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 449
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
    .line 1180
    const/high16 v4, -0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/store/PlayList;->resetPositions(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;IZ)V

    .line 1181
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
    .line 1187
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v23, toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "ClientPosition"

    aput-object v5, v6, v4

    .line 1191
    .local v6, columns:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1192
    .local v12, c:Landroid/database/Cursor;
    move/from16 v0, p4

    add-int/lit16 v14, v0, 0x400

    .line 1193
    .local v14, desiredStartingPosition:I
    const/high16 v4, -0x8000

    move/from16 v0, p4

    if-ne v0, v4, :cond_a3

    .line 1194
    const/4 v14, 0x0

    .line 1195
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

    .line 1210
    :goto_39
    if-eqz v12, :cond_52

    .line 1218
    move v13, v14

    .line 1219
    .local v13, desiredPosition:I
    :goto_3c
    :try_start_3c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1220
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1221
    .local v18, itemId:J
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_d4

    move-result v21

    .line 1222
    .local v21, position:I
    if-nez p5, :cond_c7

    move/from16 v0, v21

    if-gt v13, v0, :cond_c7

    .line 1234
    .end local v13           #desiredPosition:I
    .end local v18           #itemId:J
    .end local v21           #position:I
    :cond_52
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1238
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v24, values:Landroid/content/ContentValues;
    const-string v22, "ListId=? AND Id=?"

    .line 1240
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

    .line 1243
    .local v20, params:[Ljava/lang/String;
    move v13, v14

    .line 1244
    .restart local v13       #desiredPosition:I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_71
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1245
    .local v16, id:J
    const-string v4, "ClientPosition"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    const/4 v4, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 1248
    const-string v4, "LISTITEMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1249
    add-int/lit16 v13, v13, 0x400

    goto :goto_71

    .line 1201
    .end local v13           #desiredPosition:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v20           #params:[Ljava/lang/String;
    .end local v22           #selection:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_a3
    const-string v5, "LISTITEMS"

    const-string v7, "ListId=? AND ServerOrder=? ClientPosition>?"

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

    .line 1227
    .restart local v13       #desiredPosition:I
    .restart local v18       #itemId:J
    .restart local v21       #position:I
    :cond_c7
    :try_start_c7
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_d4

    .line 1230
    add-int/lit16 v13, v13, 0x400

    .line 1231
    goto/16 :goto_3c

    .line 1234
    .end local v18           #itemId:J
    .end local v21           #position:I
    :catchall_d4
    move-exception v4

    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    .line 1251
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #params:[Ljava/lang/String;
    .restart local v22       #selection:Ljava/lang/String;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_d9
    return-void
.end method

.method private static setItemPosition(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;I)V
    .registers 14
    .parameter "db"
    .parameter "playlistId"
    .parameter "itemId"
    .parameter "serverPosition"
    .parameter "clientPosition"

    .prologue
    const/4 v6, 0x1

    .line 1115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .local v0, values:Landroid/content/ContentValues;
    if-nez p5, :cond_37

    .line 1117
    const-string v1, "ServerOrder"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1121
    :goto_d
    const-string v1, "ClientPosition"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1122
    const-string v1, "_sync_dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
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

    .line 1126
    return-void

    .line 1119
    :cond_37
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

    .line 320
    iget-wide v4, p0, Lcom/google/android/music/store/PlayList;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 321
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot delete object that was not loaded or created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_12
    new-array v0, v3, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/music/store/PlayList;->mId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 325
    .local v0, listId:[Ljava/lang/String;
    const-string v4, "LISTS"

    const-string v5, "Id=?"

    invoke-virtual {p1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, numberOfDeletedLists:I
    if-lez v1, :cond_27

    move v2, v3

    .line 328
    .local v2, playlistDeleted:Z
    :cond_27
    if-le v1, v3, :cond_30

    .line 329
    const-string v3, "PlayList"

    const-string v4, "Deleted multiple objects"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_30
    if-eqz p2, :cond_39

    if-eqz v2, :cond_39

    .line 333
    const-string v3, "LIST_TOMBSTONES"

    invoke-virtual {p0, p1, v3}, Lcom/google/android/music/store/PlayList;->createTombstoneIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 336
    :cond_39
    if-eqz p3, :cond_44

    if-eqz v2, :cond_44

    .line 337
    const-string v3, "LISTITEMS"

    const-string v4, "ListId=?"

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
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
    .line 259
    iget-wide v2, p0, Lcom/google/android/music/store/PlayList;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 260
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Playlist has a local id.  Forgot to call reset()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/PlayList;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 263
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 264
    .local v0, insertedId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    .line 265
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert into LISTS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_25
    iput-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 269
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

    .line 346
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 347
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mName:Ljava/lang/String;

    .line 348
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/store/PlayList;->mType:I

    .line 349
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 350
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    .line 354
    :goto_22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 355
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    .line 359
    :goto_2c
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 360
    iput v1, p0, Lcom/google/android/music/store/PlayList;->mSourceAccount:I

    .line 364
    :goto_34
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mSourceVersion:Ljava/lang/String;

    .line 365
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mSourceId:Ljava/lang/String;

    .line 366
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_61

    :goto_49
    iput-boolean v0, p0, Lcom/google/android/music/store/PlayList;->mNeedsSync:Z

    .line 367
    return-void

    .line 352
    :cond_4c
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList;->mArtworkLocation:Ljava/lang/String;

    goto :goto_22

    .line 357
    :cond_53
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList;->mMediaStoreId:J

    goto :goto_2c

    .line 362
    :cond_5a
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/store/PlayList;->mSourceAccount:I

    goto :goto_34

    :cond_61
    move v0, v1

    .line 366
    goto :goto_49
.end method

.method public populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 370
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_INDEX_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    .line 371
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 372
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceId:Ljava/lang/String;

    .line 374
    :cond_18
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 375
    sget v0, Lcom/google/android/music/store/PlayList;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList;->mSourceVersion:Ljava/lang/String;

    .line 377
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
    .line 279
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update object that has not been created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/PlayList;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 284
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/android/music/store/PlayList;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 285
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 286
    return-void
.end method
