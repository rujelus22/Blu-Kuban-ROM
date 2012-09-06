.class public Lcom/google/android/music/store/PlayList$Item;
.super Lcom/google/android/music/store/Syncable;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final ITEM_PROJECTION:[Ljava/lang/String;

.field private static final ITEM_TOMBSTONE_PROJECTION:[Ljava/lang/String;

.field private static final ORDER_PROJECTION:[Ljava/lang/String;

.field private static ORDER_PROJECTION_INDEX_CLIENT:I

.field private static ORDER_PROJECTION_INDEX_SERVER:I

.field private static TOMBSTONE_PROJECTION_INDEX_ID:I

.field private static TOMBSTONE_PROJECTION_SOURCE_ID:I

.field private static TOMBSTONE_PROJECTION_SOURCE_VERSION:I


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mClientPosition:J

.field private mFileSourceAccount:I

.field private mFileSourceId:Ljava/lang/String;

.field private mId:J

.field private mListId:J

.field private mPlayGroupId:J

.field private mServerPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1592
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LISTITEMS.Id"

    aput-object v1, v0, v3

    const-string v1, "LISTITEMS.ListId"

    aput-object v1, v0, v4

    const-string v1, "LISTITEMS.MusicSourceAccount"

    aput-object v1, v0, v5

    const-string v1, "LISTITEMS.MusicSourceId"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "LISTITEMS.ClientPosition"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LISTITEMS.ServerOrder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LISTITEMS._sync_version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LISTITEMS._sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LISTITEMS.SourceAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LISTITEMS.SourceId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LISTITEMS.ClientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LISTITEMS.ServerPosition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

    .line 1620
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "SourceId"

    aput-object v1, v0, v4

    const-string v1, "_sync_version"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/store/PlayList$Item;->ITEM_TOMBSTONE_PROJECTION:[Ljava/lang/String;

    .line 1626
    sput v3, Lcom/google/android/music/store/PlayList$Item;->TOMBSTONE_PROJECTION_INDEX_ID:I

    .line 1627
    sput v4, Lcom/google/android/music/store/PlayList$Item;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    .line 1628
    sput v5, Lcom/google/android/music/store/PlayList$Item;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    .line 1630
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ServerOrder"

    aput-object v1, v0, v3

    const-string v1, "ClientPosition"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/PlayList$Item;->ORDER_PROJECTION:[Ljava/lang/String;

    .line 1634
    sput v3, Lcom/google/android/music/store/PlayList$Item;->ORDER_PROJECTION_INDEX_SERVER:I

    .line 1635
    sput v4, Lcom/google/android/music/store/PlayList$Item;->ORDER_PROJECTION_INDEX_CLIENT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/google/android/music/store/Syncable;-><init>()V

    .line 1640
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    .line 1647
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1522
    sget-object v0, Lcom/google/android/music/store/PlayList$Item;->ORDER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 1522
    sget v0, Lcom/google/android/music/store/PlayList$Item;->ORDER_PROJECTION_INDEX_SERVER:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 1522
    sget v0, Lcom/google/android/music/store/PlayList$Item;->ORDER_PROJECTION_INDEX_CLIENT:I

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1522
    sget-object v0, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static compileItemDeleteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 1738
    const-string v0, "delete from LISTITEMS where SourceAccount=? AND SourceId=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 1730
    const-string v0, "insert into LISTITEMS ( ListId, MusicSourceAccount, MusicSourceId, ClientPosition, ServerOrder, _sync_version, _sync_dirty, SourceAccount, SourceId, ClientId, ServerPosition) values (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileItemUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 1734
    const-string v0, "update LISTITEMS set ListId=?, MusicSourceAccount=?, MusicSourceId=?, ClientPosition=?, ServerOrder=?, _sync_version=?, _sync_dirty=?,SourceAccount=?,SourceId=?,ClientId=?,ServerPosition=? where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 8
    .parameter "db"
    .parameter "localListId"

    .prologue
    .line 2005
    const-string v0, "LISTITEMS"

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2007
    return-void
.end method

.method public static deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .registers 6
    .parameter "deleteStatement"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 1993
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1995
    const/4 v0, 0x1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1996
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1998
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1999
    return-void
.end method

.method public static getItemTombstones(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 9
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 2123
    const-string v1, "LISTITEM_TOMBSTONES"

    sget-object v2, Lcom/google/android/music/store/PlayList$Item;->ITEM_TOMBSTONE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getItemsToSync(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 9
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 2106
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_dirty=1 AND MusicSourceAccount<>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "ServerOrder, ClientPosition"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 9
    .parameter "statement"

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 1742
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1744
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1745
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1746
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1747
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1748
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 1749
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1754
    :goto_29
    const/4 v2, 0x7

    iget-boolean v0, p0, Lcom/google/android/music/store/PlayList$Item;->mNeedsSync:Z

    if-eqz v0, :cond_5e

    const-wide/16 v0, 0x1

    :goto_30
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1757
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceVersion:Ljava/lang/String;

    if-nez v0, :cond_61

    .line 1758
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1763
    :goto_3a
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceAccount:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1764
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceId:Ljava/lang/String;

    if-nez v0, :cond_67

    .line 1765
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1769
    :goto_49
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    if-nez v0, :cond_6d

    .line 1770
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1774
    :goto_50
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/google/android/music/store/PlayList$Item;->mPlayGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1775
    return-void

    .line 1751
    :cond_58
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_29

    .line 1754
    :cond_5e
    const-wide/16 v0, 0x0

    goto :goto_30

    .line 1760
    :cond_61
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceVersion:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3a

    .line 1767
    :cond_67
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_49

    .line 1772
    :cond_6d
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_50
.end method

.method public static readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;
    .registers 14
    .parameter "db"
    .parameter "localItemId"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 2017
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

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

    .line 2023
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_30

    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2024
    if-nez p3, :cond_28

    .line 2025
    new-instance v9, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v9}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .end local p3
    .local v9, item:Lcom/google/android/music/store/PlayList$Item;
    move-object p3, v9

    .line 2027
    .end local v9           #item:Lcom/google/android/music/store/PlayList$Item;
    .restart local p3
    :cond_28
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_34

    .line 2033
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

.method public static readItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;
    .registers 14
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 2045
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

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

    .line 2052
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2f

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2053
    if-nez p3, :cond_27

    .line 2054
    new-instance v9, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v9}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .end local p3
    .local v9, item:Lcom/google/android/music/store/PlayList$Item;
    move-object p3, v9

    .line 2056
    .end local v9           #item:Lcom/google/android/music/store/PlayList$Item;
    .restart local p3
    :cond_27
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_33

    .line 2062
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


# virtual methods
.method delete(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .registers 11
    .parameter "db"
    .parameter "sync"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2076
    iget-wide v3, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 2077
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete object that was not loaded or created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2081
    :cond_12
    const-string v3, "LISTITEMS"

    const-string v4, "Id=?"

    new-array v5, v2, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2085
    .local v1, numberOfDeletedLists:I
    if-lez v1, :cond_27

    move v0, v2

    .line 2086
    .local v0, deleted:Z
    :cond_27
    if-le v1, v2, :cond_30

    .line 2087
    const-string v2, "PlayList"

    const-string v3, "Deleted multiple objects"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_30
    if-eqz p2, :cond_39

    if-eqz v0, :cond_39

    .line 2091
    const-string v2, "LISTITEM_TOMBSTONES"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/music/store/PlayList$Item;->createTombstoneIfNeeded(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 2094
    :cond_39
    return v0
.end method

.method public findFollowingItem(Landroid/database/sqlite/SQLiteDatabase;ZLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;
    .registers 16
    .parameter "db"
    .parameter "fromSameSource"
    .parameter "item"

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1923
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 1968
    :cond_15
    :goto_15
    return-object v5

    .line 1928
    :cond_16
    if-eqz p2, :cond_66

    .line 1929
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v7

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v11

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1945
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_3c
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

    if-eqz p2, :cond_82

    const-string v3, "ListId=? AND ((ServerOrder=? AND ClientPosition>?) OR ServerOrder>?) AND MusicSourceAccount=?"

    :goto_44
    const-string v7, "ServerOrder, ClientPosition"

    const-string v8, "1"

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1957
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_85

    :try_start_50
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1958
    if-nez p3, :cond_5e

    .line 1959
    new-instance v10, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v10}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .end local p3
    .local v10, item:Lcom/google/android/music/store/PlayList$Item;
    move-object p3, v10

    .line 1961
    .end local v10           #item:Lcom/google/android/music/store/PlayList$Item;
    .restart local p3
    :cond_5e
    invoke-virtual {p3, v9}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_89

    .line 1965
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v5, p3

    goto :goto_15

    .line 1937
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_66
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v7

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v11

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_3c

    .line 1945
    :cond_82
    const-string v3, "ListId=? AND ((ServerOrder=? AND ClientPosition>?) OR ServerOrder>?)"

    goto :goto_44

    .line 1965
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_85
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_15

    :catchall_89
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public findPrecedingItem(Landroid/database/sqlite/SQLiteDatabase;ZLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;
    .registers 16
    .parameter "db"
    .parameter "fromSameSource"
    .parameter "item"

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1865
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 1909
    :cond_15
    :goto_15
    return-object v5

    .line 1870
    :cond_16
    if-eqz p2, :cond_66

    .line 1871
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v7

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v11

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1887
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_3c
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/PlayList$Item;->ITEM_PROJECTION:[Ljava/lang/String;

    if-eqz p2, :cond_82

    const-string v3, "ListId=? AND ((ServerOrder=? AND ClientPosition<?) OR ServerOrder<?) AND MusicSourceAccount=?"

    :goto_44
    const-string v7, "ServerOrder DESC, ClientPosition DESC"

    const-string v8, "1"

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1898
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_85

    :try_start_50
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1899
    if-nez p3, :cond_5e

    .line 1900
    new-instance v10, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v10}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .end local p3
    .local v10, item:Lcom/google/android/music/store/PlayList$Item;
    move-object p3, v10

    .line 1902
    .end local v10           #item:Lcom/google/android/music/store/PlayList$Item;
    .restart local p3
    :cond_5e
    invoke-virtual {p3, v9}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_89

    .line 1906
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v5, p3

    goto :goto_15

    .line 1879
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_66
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v7

    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    aput-object v0, v4, v11

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_3c

    .line 1887
    :cond_82
    const-string v3, "ListId=? AND ((ServerOrder=? AND ClientPosition<?) OR ServerOrder<?)"

    goto :goto_44

    .line 1906
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_85
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_15

    :catchall_89
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public final getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientPosition()J
    .registers 3

    .prologue
    .line 1694
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    return-wide v0
.end method

.method public final getFileSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    .prologue
    .line 1662
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    return-wide v0
.end method

.method public final getListId()J
    .registers 3

    .prologue
    .line 1686
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    return-wide v0
.end method

.method public insertItem(Landroid/database/sqlite/SQLiteStatement;)J
    .registers 8
    .parameter "insertStatement"

    .prologue
    const-wide/16 v4, 0x0

    .line 1827
    iget-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 1828
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The local id of a playlist item must not be set for an insert."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1831
    :cond_10
    iget-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    .line 1832
    new-instance v2, Lcom/google/android/music/store/InvalidDataException;

    const-string v3, "The list id of a playlist item must be set for an insert."

    invoke-direct {v2, v3}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1835
    :cond_1e
    iget-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    if-nez v2, :cond_2a

    .line 1836
    new-instance v2, Lcom/google/android/music/store/InvalidDataException;

    const-string v3, "The file source id of a playlist item must be set for an insert."

    invoke-direct {v2, v3}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1839
    :cond_2a
    iget-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 1840
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    .line 1843
    :cond_38
    invoke-direct {p0, p1}, Lcom/google/android/music/store/PlayList$Item;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1844
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1845
    .local v0, insertedId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_4d

    .line 1846
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert into LISTS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1848
    :cond_4d
    iput-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    .line 1851
    iget-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    return-wide v2
.end method

.method public populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "c"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1778
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    .line 1779
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1780
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    .line 1784
    :goto_15
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    .line 1785
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    .line 1787
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    .line 1788
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    .line 1790
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1791
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceVersion:Ljava/lang/String;

    .line 1795
    :goto_3a
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_72

    :goto_41
    iput-boolean v0, p0, Lcom/google/android/music/store/PlayList$Item;->mNeedsSync:Z

    .line 1797
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1798
    iput v1, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceAccount:I

    .line 1803
    :goto_4b
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceId:Ljava/lang/String;

    .line 1805
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    .line 1806
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mPlayGroupId:J

    .line 1807
    return-void

    .line 1782
    :cond_64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    goto :goto_15

    .line 1793
    :cond_6b
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceVersion:Ljava/lang/String;

    goto :goto_3a

    :cond_72
    move v0, v1

    .line 1795
    goto :goto_41

    .line 1800
    :cond_74
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceAccount:I

    goto :goto_4b
.end method

.method public populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 1810
    sget v0, Lcom/google/android/music/store/PlayList$Item;->TOMBSTONE_PROJECTION_INDEX_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    .line 1811
    sget v0, Lcom/google/android/music/store/PlayList$Item;->TOMBSTONE_PROJECTION_SOURCE_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1812
    invoke-static {}, Lcom/google/android/music/store/PlayList;->access$400()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceId:Ljava/lang/String;

    .line 1814
    :cond_1a
    sget v0, Lcom/google/android/music/store/PlayList$Item;->TOMBSTONE_PROJECTION_SOURCE_VERSION:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1815
    invoke-static {}, Lcom/google/android/music/store/PlayList;->access$500()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mSourceVersion:Ljava/lang/String;

    .line 1817
    :cond_2c
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 1650
    invoke-super {p0}, Lcom/google/android/music/store/Syncable;->reset()V

    .line 1651
    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    .line 1652
    iput-object v4, p0, Lcom/google/android/music/store/PlayList$Item;->mClientId:Ljava/lang/String;

    .line 1653
    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    .line 1654
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    .line 1655
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    .line 1656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    .line 1657
    iput-object v4, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    .line 1658
    iput-wide v2, p0, Lcom/google/android/music/store/PlayList$Item;->mPlayGroupId:J

    .line 1659
    return-void
.end method

.method public final setClientPosition(J)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1698
    iput-wide p1, p0, Lcom/google/android/music/store/PlayList$Item;->mClientPosition:J

    .line 1699
    return-void
.end method

.method public final setFileSourceAccount(I)V
    .registers 2
    .parameter "fileSourceAccount"

    .prologue
    .line 1682
    iput p1, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceAccount:I

    .line 1683
    return-void
.end method

.method public final setFileSourceId(Ljava/lang/String;)V
    .registers 2
    .parameter "fileSourceId"

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/google/android/music/store/PlayList$Item;->mFileSourceId:Ljava/lang/String;

    .line 1718
    return-void
.end method

.method public final setListId(J)V
    .registers 3
    .parameter "listId"

    .prologue
    .line 1690
    iput-wide p1, p0, Lcom/google/android/music/store/PlayList$Item;->mListId:J

    .line 1691
    return-void
.end method

.method public final setPlayGroupId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1725
    iput-wide p1, p0, Lcom/google/android/music/store/PlayList$Item;->mPlayGroupId:J

    .line 1726
    return-void
.end method

.method public final setServerPosition(Ljava/lang/String;)V
    .registers 4
    .parameter "serverPosition"

    .prologue
    .line 1706
    if-nez p1, :cond_a

    .line 1707
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Server position cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1709
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/store/PlayList$Item;->mServerPosition:Ljava/lang/String;

    .line 1710
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 6
    .parameter "updateStatement"

    .prologue
    .line 1977
    iget-wide v0, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1978
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object cannot be updated before it\'s created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1981
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/PlayList$Item;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1982
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/android/music/store/PlayList$Item;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1983
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1984
    return-void
.end method
