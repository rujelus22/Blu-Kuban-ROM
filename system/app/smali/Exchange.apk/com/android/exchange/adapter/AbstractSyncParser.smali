.class public abstract Lcom/android/exchange/adapter/AbstractSyncParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractSyncParser.java"


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/Account;

.field protected mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 3
    .parameter "p"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Lcom/android/exchange/adapter/Parser;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 3
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;->init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 55
    return-void
.end method

.method private init(Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    .line 64
    iget-object v0, p1, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 65
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 68
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 69
    return-void
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    return v0
.end method

.method public parse()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, moreAvailable:Z
    const/4 v6, 0x0

    .line 116
    .local v6, newSyncKey:Z
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 117
    .local v2, interval:I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 119
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_17

    .line 120
    new-instance v8, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v8, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v8

    .line 123
    :cond_17
    const/4 v3, 0x0

    .line 124
    .local v3, mailboxUpdated:Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v1, cv:Landroid/content/ContentValues;
    :cond_1d
    :goto_1d
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_12f

    .line 128
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xf

    if-eq v8, v9, :cond_1d

    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x1c

    if-eq v8, v9, :cond_1d

    .line 130
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xe

    if-ne v8, v9, :cond_b4

    .line 132
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v7

    .line 133
    .local v7, status:I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1d

    .line 134
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sync failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 135
    const/4 v8, 0x3

    if-eq v7, v8, :cond_63

    invoke-static {v7}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 137
    :cond_63
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const-string v9, "0"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 140
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v9, -0x2

    iput v9, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 141
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v9, "Bad sync key; RESET and delete data"

    invoke-virtual {v8, v9}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 142
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->wipe()V

    .line 144
    const/4 v4, 0x1

    goto :goto_1d

    .line 145
    :cond_7e
    const/16 v8, 0x10

    if-eq v7, v8, :cond_85

    const/4 v8, 0x5

    if-ne v7, v8, :cond_8b

    .line 149
    :cond_85
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 150
    :cond_8b
    const/16 v8, 0x8

    if-eq v7, v8, :cond_93

    const/16 v8, 0xc

    if-ne v7, v8, :cond_a3

    .line 154
    :cond_93
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 157
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 158
    :cond_a3
    const/4 v8, 0x7

    if-ne v7, v8, :cond_ae

    .line 159
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/exchange/EasSyncService;->mUpsyncFailed:Z

    .line 160
    const/4 v4, 0x1

    goto/16 :goto_1d

    .line 163
    :cond_ae
    new-instance v8, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v8, v7}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v8

    .line 166
    .end local v7           #status:I
    :cond_b4
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x16

    if-ne v8, v9, :cond_bf

    .line 167
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    goto/16 :goto_1d

    .line 168
    :cond_bf
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_c9

    .line 169
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    goto/16 :goto_1d

    .line 170
    :cond_c9
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x14

    if-ne v8, v9, :cond_d2

    .line 171
    const/4 v4, 0x1

    goto/16 :goto_1d

    .line 172
    :cond_d2
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_12a

    .line 173
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 174
    const/4 v4, 0x1

    .line 176
    :cond_e7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, newKey:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Parsed key for "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ": "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 178
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11c

    .line 179
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 180
    const-string v8, "syncKey"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v3, 0x1

    .line 182
    const/4 v6, 0x1

    .line 185
    :cond_11c
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_1d

    .line 186
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v9, -0x3

    iput v9, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto/16 :goto_1d

    .line 189
    .end local v5           #newKey:Ljava/lang/String;
    :cond_12a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_1d

    .line 194
    :cond_12f
    if-eqz v4, :cond_136

    if-nez v6, :cond_136

    .line 195
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 199
    :cond_136
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 201
    const/4 v0, 0x0

    .line 204
    .local v0, abortSyncs:Z
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-eq v8, v2, :cond_189

    .line 205
    const-string v8, "syncInterval"

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const/4 v3, 0x1

    .line 217
    :cond_14e
    :goto_14e
    if-eqz v3, :cond_167

    .line 218
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v8}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 219
    :try_start_157
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v8}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v8

    if-nez v8, :cond_166

    .line 220
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10, v1}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 222
    :cond_166
    monitor-exit v9
    :try_end_167
    .catchall {:try_start_157 .. :try_end_167} :catchall_1c0

    .line 225
    :cond_167
    if-eqz v0, :cond_17b

    .line 226
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Aborting account syncs due to mailbox change to ping..."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 227
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 231
    :cond_17b
    if-eqz v4, :cond_188

    .line 232
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "MoreAvailable"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 234
    :cond_188
    return v4

    .line 208
    :cond_189
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget v8, v8, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    if-lez v8, :cond_14e

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_14e

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    if-lez v8, :cond_14e

    .line 211
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Changes found to ping loop mailbox "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ": will ping."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 212
    const-string v8, "syncInterval"

    const/4 v9, -0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const/4 v3, 0x1

    .line 214
    const/4 v0, 0x1

    goto :goto_14e

    .line 222
    :catchall_1c0
    move-exception v8

    :try_start_1c1
    monitor-exit v9
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw v8
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipParser(I)V
    .registers 4
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 101
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 103
    :cond_b
    return-void
.end method

.method userLog(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "string"
    .parameter "num"
    .parameter "string2"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .registers 3
    .parameter "strings"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 239
    return-void
.end method
