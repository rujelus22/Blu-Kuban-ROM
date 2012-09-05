.class public Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderMoveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderMoveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderMoveParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderMoveAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
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
    .line 174
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    .line 175
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 176
    #getter for: Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->access$000(Lcom/android/exchange/adapter/FolderMoveAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderMoveParser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 181
    return-void
.end method

.method public commit()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->access$000(Lcom/android/exchange/adapter/FolderMoveAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderMoveAdapter.FolderMoveParser.commit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_99

    .line 194
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderMoveAdapter;->access$100(Lcom/android/exchange/adapter/FolderMoveAdapter;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderMoveAdapter;->access$200(Lcom/android/exchange/adapter/FolderMoveAdapter;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 214
    :try_start_4e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_98

    .line 215
    const-string v1, "Applying "

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, " mailbox operations."

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v3, v3, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 217
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
    :try_end_88
    .catchall {:try_start_4e .. :try_end_88} :catchall_a7

    .line 223
    :try_start_88
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.email.provider"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 225
    const-string v1, "New Account SyncKey: "

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_a7
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_98} :catch_ac
    .catch Landroid/content/OperationApplicationException; {:try_start_88 .. :try_end_98} :catch_aa

    .line 234
    :cond_98
    :goto_98
    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_a7

    .line 236
    .end local v0           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_99
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    .line 237
    const-string v1, "Mahskyript"

    const-string v2, "FolderUpdateAdapter.FolderUpdateParser.commit after callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 234
    .restart local v0       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1

    .line 229
    :catch_aa
    move-exception v1

    goto :goto_98

    .line 226
    :catch_ac
    move-exception v1

    goto :goto_98
.end method

.method public parse()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 241
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateParser.parse "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 244
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d5

    if-eq v0, v1, :cond_22

    .line 245
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 246
    :cond_22
    :goto_22
    :sswitch_22
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->nextTag(I)I

    move-result v0

    if-eq v0, v4, :cond_9a

    .line 248
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_39

    .line 249
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_22

    .line 250
    :cond_39
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_22

    .line 251
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 252
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    sparse-switch v0, :sswitch_data_c2

    .line 287
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :sswitch_5a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_22

    .line 259
    :sswitch_62
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_22

    .line 262
    :sswitch_6a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_22

    .line 265
    :sswitch_72
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_22

    .line 274
    :sswitch_7a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_22

    .line 279
    :sswitch_82
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    .line 280
    const-string v0, "DeviceAccessException"

    const-string v1, "Received in FolderUpdateAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f060014

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v0

    .line 292
    :cond_9a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b2

    .line 293
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->commit()V

    .line 298
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/FolderMoveAdapter;->access$000(Lcom/android/exchange/adapter/FolderMoveAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderMoveAdapter.FolderRenameParser.parse exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v3

    .line 294
    :cond_b2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->this$0:Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a6

    .line 297
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->wipe()V

    goto :goto_a6

    .line 252
    nop

    :sswitch_data_c2
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_5a
        0x3 -> :sswitch_62
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_72
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_7a
        0x8 -> :sswitch_7a
        0x9 -> :sswitch_7a
        0xa -> :sswitch_7a
        0x81 -> :sswitch_82
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
    .line 185
    return-void
.end method
