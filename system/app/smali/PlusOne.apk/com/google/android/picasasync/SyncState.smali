.class public Lcom/google/android/picasasync/SyncState;
.super Ljava/lang/Object;
.source "SyncState.java"


# static fields
.field public static final METADATA:Lcom/google/android/picasasync/SyncState;

.field public static final METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

.field public static final PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

.field public static final PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

.field public static final PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

.field private static final STATE_PROJECTION:[Ljava/lang/String;

.field private static final USER_TABLE_NAME:Ljava/lang/String;

.field private static final sValues:Landroid/content/ContentValues;

.field private static final sWhereArgs:[Ljava/lang/String;


# instance fields
.field private final mOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 29
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    invoke-direct {v0, v3}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    .line 30
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    invoke-direct {v0, v2}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    .line 31
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    .line 32
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    .line 33
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    .line 47
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/SyncState;->USER_TABLE_NAME:Ljava/lang/String;

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sync_states"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/SyncState;->STATE_PROJECTION:[Ljava/lang/String;

    .line 51
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->sValues:Landroid/content/ContentValues;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    .line 58
    return-void
.end method

.method private compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const-class v1, Lcom/google/android/picasasync/SyncState;

    monitor-enter v1

    .line 105
    :try_start_3
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 106
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x3

    if-ne v2, p3, :cond_18

    .line 108
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/picasasync/SyncState;->writeStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 109
    const/4 v0, 0x1

    monitor-exit v1

    .line 111
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_17

    .line 112
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private static getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 12
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 120
    sget-object v0, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 121
    sget-object v1, Lcom/google/android/picasasync/SyncState;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/SyncState;->STATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "account=?"

    sget-object v4, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 124
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_28

    move-result v0

    .line 126
    :goto_22
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return v0

    .line 124
    :cond_26
    const/4 v0, -0x1

    goto :goto_22

    .line 126
    :catchall_28
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private writeStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .registers 9
    .parameter "db"
    .parameter "account"
    .parameter "states"
    .parameter "update"

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 132
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p3, v0

    .line 133
    iget v0, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shl-int v0, p4, v0

    or-int/2addr p3, v0

    .line 134
    sget-object v0, Lcom/google/android/picasasync/SyncState;->sValues:Landroid/content/ContentValues;

    const-string v1, "sync_states"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    :try_start_1f
    sget-object v0, Lcom/google/android/picasasync/SyncState;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v1, Lcom/google/android/picasasync/SyncState;->sValues:Landroid/content/ContentValues;

    const-string v2, "account=?"

    sget-object v3, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_31

    .line 140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 142
    return-void

    .line 140
    :catchall_31
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public getState(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 116
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 83
    const-class v1, Lcom/google/android/picasasync/SyncState;

    monitor-enter v1

    .line 84
    :try_start_3
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 85
    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    iget v2, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_13
    monitor-exit v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 87
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/picasasync/SyncState;->compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    .line 94
    return-void
.end method

.method public onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 70
    const-class v1, Lcom/google/android/picasasync/SyncState;

    monitor-enter v1

    .line 71
    :try_start_4
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 72
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    iget v2, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x3

    if-eq v2, v3, :cond_1a

    .line 74
    const/4 v2, 0x2

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/picasasync/SyncState;->writeStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 75
    const/4 v0, 0x1

    monitor-exit v1

    .line 77
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_19

    .line 78
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 65
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/picasasync/SyncState;->compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/picasasync/SyncState;->compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    .line 100
    return-void
.end method
