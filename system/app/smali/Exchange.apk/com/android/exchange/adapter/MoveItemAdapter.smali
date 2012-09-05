.class public Lcom/android/exchange/adapter/MoveItemAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "MoveItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;
    }
.end annotation


# instance fields
.field private final CODE_MOVE_ITEM_INVALID_COLLECTION_DST:I

.field private final CODE_MOVE_ITEM_INVALID_COLLECTION_SRC:I

.field private final CODE_MOVE_ITEM_ITEM_LOCKED:I

.field private final CODE_MOVE_ITEM_SERVER_ERROR:I

.field private final CODE_MOVE_ITEM_SRC_DST_SAME:I

.field private final CODE_MOVE_ITEM_SUCCESS:I

.field private final INDEX_DST_MAILBOX:I

.field private final INDEX_SERVER_ID:I

.field private MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

.field private mDstMailboxId:I

.field private parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 6
    .parameter "service"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 49
    iput v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_INVALID_COLLECTION_SRC:I

    .line 53
    iput v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_INVALID_COLLECTION_DST:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_SUCCESS:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_SRC_DST_SAME:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_SERVER_ERROR:I

    .line 69
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->CODE_MOVE_ITEM_ITEM_LOCKED:I

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "syncServerId"

    aput-object v1, v0, v2

    const-string v1, "dstMailboxKey"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->INDEX_SERVER_ID:I

    .line 85
    iput v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->INDEX_DST_MAILBOX:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    .line 93
    iput v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    return v0
.end method


# virtual methods
.method public callback(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->moveItemStatus(JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 227
    :goto_b
    return-void

    .line 223
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter;->wipe()V

    .line 111
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    const-string v0, "MoveItems"

    return-object v0
.end method

.method public hasChangedItems()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 187
    const/4 v6, 0x0

    .line 189
    .local v6, count:I
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flagMoved"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 197
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_43

    .line 201
    :try_start_3c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    move-result v6

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_43
    if-lez v6, :cond_4c

    const/4 v1, 0x1

    :goto_46
    return v1

    .line 205
    :catchall_47
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 211
    :cond_4c
    const/4 v1, 0x0

    goto :goto_46
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;-><init>(Lcom/android/exchange/adapter/MoveItemAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/MoveItemAdapter;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    .line 173
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->parse()Z

    move-result v0

    return v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 15
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 243
    const/16 v0, 0x145

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 247
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 251
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mailbox can not be synchronized."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1e
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->MOVE_ITEMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v11, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "flagMoved"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_b9

    .line 269
    :try_start_58
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 273
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, serverId:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    .line 279
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 283
    .local v7, dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v7, :cond_a1

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_a1

    if-eqz v8, :cond_a1

    .line 287
    const/16 v0, 0x146

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x147

    invoke-virtual {v0, v1, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x148

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x149

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_9c
    .catchall {:try_start_58 .. :try_end_9c} :catchall_b1

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 321
    .end local v7           #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v8           #serverId:Ljava/lang/String;
    :goto_a0
    return v0

    .line 299
    .restart local v7       #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v8       #serverId:Ljava/lang/String;
    :cond_a1
    const/4 v0, 0x1

    :try_start_a2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MoveItem: mailbox not found"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/MoveItemAdapter;->userLog([Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_b1

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 303
    goto :goto_a0

    .line 311
    .end local v7           #dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v8           #serverId:Ljava/lang/String;
    :catchall_b1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_b9
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move v0, v10

    .line 321
    goto :goto_a0
.end method

.method public wipe()V
    .registers 7

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    iget-object v1, v1, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 129
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flagMoved"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "dstMailboxKey"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 139
    :try_start_20
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 141
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncServerId=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/adapter/MoveItemAdapter;->parser:Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;

    iget-object v5, v5, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    :cond_4d
    monitor-exit v2

    .line 151
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_4e
    return-void

    .line 147
    .restart local v0       #cv:Landroid/content/ContentValues;
    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_4f

    throw v1
.end method
