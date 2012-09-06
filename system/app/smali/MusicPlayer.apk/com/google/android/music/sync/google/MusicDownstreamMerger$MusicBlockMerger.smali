.class public Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
.super Ljava/lang/Object;
.source "MusicDownstreamMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicDownstreamMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicBlockMerger"
.end annotation


# instance fields
.field private mCacheFilepaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteTrackStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final mMusicFile:Lcom/google/android/music/store/MusicFile;

.field private final mPlayList:Lcom/google/android/music/store/PlayList;

.field private final mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

.field private final mProtocolState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAccount:I

.field private final mTag:Ljava/lang/String;

.field private mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;ZLjava/lang/String;I)V
    .registers 8
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "useVerboseLogging"
    .parameter "logTag"
    .parameter "remoteAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p3, protcolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 207
    iput-object p3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    .line 208
    iput-boolean p4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    .line 209
    iput-object p5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v0}, Lcom/google/android/music/store/MusicFile;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    .line 211
    new-instance v0, Lcom/google/android/music/store/PlayList;

    invoke-direct {v0}, Lcom/google/android/music/store/PlayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    .line 212
    new-instance v0, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v0}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    .line 213
    iput p6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private processMergeEntryImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z
    .registers 10
    .parameter "serverEntry"
    .parameter "clientEntry"

    .prologue
    const/4 v2, 0x0

    .line 235
    :try_start_1
    iget-boolean v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    if-eqz v3, :cond_52

    .line 236
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_3b

    .line 237
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting plentry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_3b
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_47

    .line 243
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/PlayList$Item;->compileItemDeleteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 246
    :cond_47
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/PlayList$Item;->deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 302
    :goto_50
    const/4 v2, 0x1

    .line 305
    :goto_51
    return v2

    .line 249
    :cond_52
    if-nez p2, :cond_114

    .line 250
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList$Item;->reset()V

    .line 251
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {p1, v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->formatAsPlayListItem(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    .line 252
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/PlayList$Item;->setSourceAccount(I)V

    .line 255
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 259
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    if-nez v3, :cond_aa

    .line 260
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying into insert a playlist entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {v5}, Lcom/google/android/music/store/PlayList$Item;->getSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into a playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that doesn\'t exist locally"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_1 .. :try_end_a0} :catch_a1

    goto :goto_51

    .line 303
    :catch_a1
    move-exception v0

    .line 304
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    const-string v4, "Unable to merge a playlist entry.  Skipping entry."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 266
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :cond_aa
    :try_start_aa
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->reset()V

    .line 267
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 270
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/store/PlayList$Item;->setListId(J)V

    .line 272
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_ff

    .line 273
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting plentry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_ff
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_10b

    .line 278
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/PlayList$Item;->compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 281
    :cond_10b
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/PlayList$Item;->insertItem(Landroid/database/sqlite/SQLiteStatement;)J

    goto/16 :goto_50

    .line 284
    :cond_114
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->getEncapsulatedItem()Lcom/google/android/music/store/PlayList$Item;

    move-result-object v1

    .line 286
    .local v1, item:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {p1, v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->formatAsPlayListItem(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    .line 287
    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 289
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_156

    .line 290
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating plentry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_156
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_162

    .line 295
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/PlayList$Item;->compileItemUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 298
    :cond_162
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList$Item;->setNeedsSync(Z)V

    .line 299
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList$Item;->update(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_16b
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_aa .. :try_end_16b} :catch_a1

    goto/16 :goto_50
.end method

.method private processMergePlaylistImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylist;Lcom/google/android/music/sync/google/model/SyncablePlaylist;)Z
    .registers 10
    .parameter "serverPlaylist"
    .parameter "clientPlaylist"

    .prologue
    const/4 v2, 0x0

    .line 312
    :try_start_1
    iget-boolean v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    if-eqz v3, :cond_46

    .line 313
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_2f

    .line 314
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2f
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_3b

    .line 318
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/PlayList;->compilePlaylistDeleteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 321
    :cond_3b
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/PlayList;->deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 360
    :goto_44
    const/4 v2, 0x1

    .line 364
    :goto_45
    return v2

    .line 324
    :cond_46
    if-nez p2, :cond_a6

    .line 325
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->reset()V

    .line 326
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {p1, v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->formatAsPlayList(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 327
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 328
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 330
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_89

    .line 331
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_89
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_95

    .line 335
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 338
    :cond_95
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_9c
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_1 .. :try_end_9c} :catch_9d

    goto :goto_44

    .line 361
    :catch_9d
    move-exception v0

    .line 363
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    const-string v4, "Unable to merge a playlist.  Skipping entry."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 341
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :cond_a6
    :try_start_a6
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->getEncapsulatedPlayList()Lcom/google/android/music/store/PlayList;

    move-result-object v1

    .line 343
    .local v1, playList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {p1, v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->formatAsPlayList(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 344
    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 345
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 347
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_ee

    .line 348
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with local id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_ee
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_fa

    .line 353
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/PlayList;->compilePlayListUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 356
    :cond_fa
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 357
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/PlayList;->update(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_103
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_a6 .. :try_end_103} :catch_9d

    goto/16 :goto_44
.end method

.method private processMergeTrackImpl(Lcom/google/android/music/sync/google/model/Track;Lcom/google/android/music/sync/google/model/Track;)Z
    .registers 16
    .parameter "serverTrack"
    .parameter "clientTrack"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 371
    :try_start_2
    iget-boolean v6, p1, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    if-eqz v6, :cond_50

    .line 372
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v6, :cond_30

    .line 373
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting track "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_30
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget v10, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    iget-object v11, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-static {v6, v9, v10, v11}, Lcom/google/android/music/store/MusicFile;->deleteAndGetLocalCacheFilepath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, filepath:Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 382
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    if-nez v6, :cond_49

    .line 383
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    .line 385
    :cond_49
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4           #filepath:Ljava/lang/String;
    :cond_4e
    :goto_4e
    move v6, v7

    .line 451
    :goto_4f
    return v6

    .line 389
    :cond_50
    if-nez p2, :cond_135

    .line 390
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v6}, Lcom/google/android/music/store/MusicFile;->reset()V

    .line 391
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {p1, v6}, Lcom/google/android/music/sync/google/model/Track;->formatAsMusicFile(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 393
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    iget v9, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v6, v9}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 394
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v6, :cond_8d

    .line 395
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserting track "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_8d
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v6, :cond_99

    .line 399
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v6}, Lcom/google/android/music/store/MusicFile;->compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 401
    :cond_99
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v6, v9}, Lcom/google/android/music/store/MusicFile;->insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J

    .line 403
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v6}, Lcom/google/android/music/store/MusicFile;->isPurchasedTrack()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v6}, Lcom/google/android/music/store/MusicFile;->getAddedTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x112a880

    cmp-long v6, v9, v11

    if-gez v6, :cond_4e

    .line 406
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_count"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 409
    .local v5, newTrackCount:I
    if-ne v5, v7, :cond_10f

    .line 411
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_album_name"

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v10}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_artist_name"

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v10}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_albumId"

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v10}, Lcom/google/android/music/store/MusicFile;->getAlbumId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_song_title"

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v10}, Lcom/google/android/music/store/MusicFile;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_102
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_2 .. :try_end_102} :catch_104

    goto/16 :goto_4e

    .line 449
    .end local v5           #newTrackCount:I
    :catch_104
    move-exception v0

    .line 450
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    const-string v7, "Unable to merge a track.  Skipping entry."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v8

    .line 451
    goto/16 :goto_4f

    .line 421
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    .restart local v5       #newTrackCount:I
    :cond_10f
    :try_start_10f
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_albumId"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 423
    .local v1, existingAlbumId:J
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v6}, Lcom/google/android/music/store/MusicFile;->getAlbumId()J

    move-result-wide v9

    cmp-long v6, v1, v9

    if-eqz v6, :cond_4e

    .line 424
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mProtocolState:Ljava/util/Map;

    const-string v9, "new_purchased_same_album"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4e

    .line 433
    .end local v1           #existingAlbumId:J
    .end local v5           #newTrackCount:I
    :cond_135
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/Track;->getEncapsulatedMusicFile()Lcom/google/android/music/store/MusicFile;

    move-result-object v3

    .line 434
    .local v3, file:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {p1, v3}, Lcom/google/android/music/sync/google/model/Track;->formatAsMusicFile(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 435
    iget v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v3, v6}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 437
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v6, :cond_179

    .line 438
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating track "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with local id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_179
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v6, :cond_185

    .line 443
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v6}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 445
    :cond_185
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v6, v9}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_18c
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_10f .. :try_end_18c} :catch_104

    goto/16 :goto_4e
.end method


# virtual methods
.method public cleanupLocallyCachedFiles()V
    .registers 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 476
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 477
    .local v0, filesToDelete:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 479
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;-><init>(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 494
    .end local v0           #filesToDelete:[Ljava/lang/String;
    :cond_26
    return-void
.end method

.method public processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 218
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v0, :cond_19

    .line 219
    const-class v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    const-class v1, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeTrackImpl(Lcom/google/android/music/sync/google/model/Track;Lcom/google/android/music/sync/google/model/Track;)Z

    move-result v0

    .line 228
    :goto_18
    return v0

    .line 221
    :cond_19
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v0, :cond_32

    .line 222
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergePlaylistImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylist;Lcom/google/android/music/sync/google/model/SyncablePlaylist;)Z

    move-result v0

    goto :goto_18

    .line 224
    :cond_32
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v0, :cond_4b

    .line 225
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeEntryImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v0

    goto :goto_18

    .line 228
    :cond_4b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public safelyCloseStatements()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeleteTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 460
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 461
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 462
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 464
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 465
    return-void
.end method
