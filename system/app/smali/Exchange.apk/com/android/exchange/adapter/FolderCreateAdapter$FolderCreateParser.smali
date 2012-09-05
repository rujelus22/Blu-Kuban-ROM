.class public Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderCreateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderCreateParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .registers 6
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 160
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.FolderCreateParser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.commandsParser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public commit()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v13, -0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 181
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.commit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$000(Lcom/android/exchange/adapter/FolderCreateAdapter;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 183
    .local v8, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v8, :cond_21

    .line 184
    const-string v0, "FolderCreateAdapter"

    const-string v1, "fail to restore mailbox"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_20
    return-void

    .line 187
    :cond_21
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 188
    .local v7, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$100(Lcom/android/exchange/adapter/FolderCreateAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mServerId:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 191
    const/16 v0, 0xc

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 193
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 198
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x44

    if-eq v0, v1, :cond_15c

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    :goto_4b
    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 200
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    if-nez v0, :cond_15f

    .line 201
    iput-wide v13, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 202
    const-string v0, "FolderCreateAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create mailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " below Root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Create mailbox: "

    aput-object v1, v0, v12

    const/4 v1, 0x1

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->userLog([Ljava/lang/String;)V

    .line 210
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/AbstractCommandAdapter;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serverId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "accountKey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_cb
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e6

    .line 219
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catchall {:try_start_cb .. :try_end_e6} :catchall_18b

    .line 223
    :cond_e6
    if-eqz v6, :cond_eb

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_eb
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 235
    :try_start_f2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13c

    .line 236
    const-string v0, "Applying "

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, " mailbox operations."

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, v2, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12c
    .catchall {:try_start_f2 .. :try_end_12c} :catchall_192

    .line 243
    :try_start_12c
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.email.provider"

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 245
    const-string v0, "New Account SyncKey: "

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_12c .. :try_end_13c} :catchall_192
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_13c} :catch_197
    .catch Landroid/content/OperationApplicationException; {:try_start_12c .. :try_end_13c} :catch_195

    .line 254
    :cond_13c
    :goto_13c
    :try_start_13c
    monitor-exit v1
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_192

    .line 255
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.commit before callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    #setter for: Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$102(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    #setter for: Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J
    invoke-static {v0, v13, v14}, Lcom/android/exchange/adapter/FolderCreateAdapter;->access$002(Lcom/android/exchange/adapter/FolderCreateAdapter;J)J

    .line 261
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    .line 262
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.commit after callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_15c
    move-object v0, v4

    .line 198
    goto/16 :goto_4b

    .line 204
    :cond_15f
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 205
    const-string v0, "FolderCreateAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create mailbox:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " below mMailbox.mId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_73

    .line 223
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_18b
    move-exception v0

    if-eqz v6, :cond_191

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_191
    throw v0

    .line 254
    :catchall_192
    move-exception v0

    :try_start_193
    monitor-exit v1
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    throw v0

    .line 249
    :catch_195
    move-exception v0

    goto :goto_13c

    .line 246
    :catch_197
    move-exception v0

    goto :goto_13c
.end method

.method public parse()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 267
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.parse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d3

    if-eq v0, v1, :cond_22

    .line 271
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 272
    :cond_22
    :goto_22
    :sswitch_22
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->nextTag(I)I

    move-result v0

    if-eq v0, v4, :cond_9c

    .line 274
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_39

    .line 275
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_22

    .line 276
    :cond_39
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1c8

    if-ne v0, v1, :cond_4a

    .line 277
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mServerId:Ljava/lang/String;

    goto :goto_22

    .line 278
    :cond_4a
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_22

    .line 279
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 280
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    sparse-switch v0, :sswitch_data_b8

    .line 311
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :sswitch_6b
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_22

    .line 287
    :sswitch_73
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_22

    .line 290
    :sswitch_7b
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_22

    .line 299
    :sswitch_83
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    goto :goto_22

    .line 304
    :sswitch_8b
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/FolderCreateAdapter;->callback(I)V

    .line 305
    new-instance v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f060014

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v0

    .line 315
    :cond_9c
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->this$0:Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_af

    .line 316
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.parse  CODE_FOLDER_CREATE_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->commit()V

    .line 320
    :cond_af
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.parse exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v3

    .line 280
    nop

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_6b
        0x3 -> :sswitch_73
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_83
        0x7 -> :sswitch_83
        0x8 -> :sswitch_83
        0x9 -> :sswitch_83
        0xa -> :sswitch_83
        0x81 -> :sswitch_8b
    .end sparse-switch
.end method

.method public responsesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateParser.responsesParser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method
