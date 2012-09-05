.class public Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderDeleteParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderDeleteAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
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
    .line 161
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 163
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteParser.FolderDeleteParser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public commit()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 180
    const-string v1, "Mahskyript"

    const-string v2, "FolderDeleteAdapter.FolderDeleteParser.commit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v1, v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    if-ne v1, v3, :cond_98

    .line 223
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 224
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 230
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 239
    :try_start_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_97

    .line 240
    const-string v1, "Applying "

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, " mailbox operations."

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v3, v3, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 243
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_44 .. :try_end_7e} :catchall_a5

    .line 249
    :try_start_7e
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.email.provider"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 251
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "New Account SyncKey: "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->userLog([Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_7e .. :try_end_97} :catchall_a5
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_97} :catch_aa
    .catch Landroid/content/OperationApplicationException; {:try_start_7e .. :try_end_97} :catch_a8

    .line 260
    :cond_97
    :goto_97
    :try_start_97
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_a5

    .line 262
    :cond_98
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-virtual {v1, v6}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    .line 263
    const-string v1, "Mahskyript"

    const-string v2, "FolderDeleteAdapter.FolderDeleteParser.commit after callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 260
    :catchall_a5
    move-exception v1

    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v1

    .line 255
    :catch_a8
    move-exception v1

    goto :goto_97

    .line 252
    :catch_aa
    move-exception v1

    goto :goto_97
.end method

.method public parse()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 268
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteParser.parse "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 270
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d4

    if-eq v0, v1, :cond_22

    .line 271
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 272
    :cond_22
    :goto_22
    :sswitch_22
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->nextTag(I)I

    move-result v0

    if-eq v0, v3, :cond_83

    .line 274
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_39

    .line 275
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_22

    .line 276
    :cond_39
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_22

    .line 277
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 278
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    sparse-switch v0, :sswitch_data_10e

    .line 307
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :sswitch_5a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    goto :goto_22

    .line 285
    :sswitch_62
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    goto :goto_22

    .line 294
    :sswitch_6a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    goto :goto_22

    .line 300
    :sswitch_72
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->callback(I)V

    .line 301
    new-instance v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f060014

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v0

    .line 312
    :cond_83
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_97

    .line 313
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->commit()V

    .line 329
    :goto_8f
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteParser.parse exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v5

    .line 315
    :cond_97
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_108

    .line 317
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 318
    const-string v0, "FolderDeleteAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder does not exist. Deleting mailbox serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "serverId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8f

    .line 324
    :cond_102
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    #calls: Lcom/android/exchange/adapter/FolderDeleteAdapter;->deleteLocal()V
    invoke-static {v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->access$100(Lcom/android/exchange/adapter/FolderDeleteAdapter;)V

    goto :goto_8f

    .line 327
    :cond_108
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->this$0:Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->wipe()V

    goto :goto_8f

    .line 278
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_22
        0x3 -> :sswitch_5a
        0x4 -> :sswitch_62
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_6a
        0x8 -> :sswitch_6a
        0x9 -> :sswitch_6a
        0xa -> :sswitch_6a
        0x81 -> :sswitch_72
    .end sparse-switch
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method
