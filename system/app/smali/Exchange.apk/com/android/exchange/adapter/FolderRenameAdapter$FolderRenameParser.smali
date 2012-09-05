.class public Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderRenameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/FolderRenameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderRenameParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/FolderRenameAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
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
    .line 135
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    .line 136
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 137
    #getter for: Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->access$000(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderRenameParser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
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
    .line 142
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
    .line 150
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->access$000(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderRenameAdapter.FolderRenameParser.commit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_a8

    .line 155
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->access$100(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->access$100(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 156
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderRenameAdapter;->access$100(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 159
    :cond_2d
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
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

    .line 169
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 178
    :try_start_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 179
    const-string v1, "Applying "

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, " mailbox operations."

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v3, v3, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 181
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
    :try_end_97
    .catchall {:try_start_5d .. :try_end_97} :catchall_b6

    .line 187
    :try_start_97
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.email.provider"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 189
    const-string v1, "New Account SyncKey: "

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_97 .. :try_end_a7} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a7} :catch_bb
    .catch Landroid/content/OperationApplicationException; {:try_start_97 .. :try_end_a7} :catch_b9

    .line 198
    :cond_a7
    :goto_a7
    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_b6

    .line 200
    .end local v0           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_a8
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    .line 201
    const-string v1, "Mahskyript"

    const-string v2, "FolderUpdateAdapter.FolderUpdateParser.commit after callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 198
    .restart local v0       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_b6
    move-exception v1

    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v1

    .line 193
    :catch_b9
    move-exception v1

    goto :goto_a7

    .line 190
    :catch_bb
    move-exception v1

    goto :goto_a7
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

    .line 205
    const-string v0, "Mahskyript"

    const-string v1, "FolderUpdateAdapter.FolderUpdateParser.parse "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    new-instance v1, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    invoke-direct {v1, v2}, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;-><init>(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    iput-object v1, v0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 208
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x1d5

    if-eq v0, v1, :cond_22

    .line 209
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 210
    :cond_22
    :goto_22
    :sswitch_22
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->nextTag(I)I

    move-result v0

    if-eq v0, v4, :cond_9a

    .line 212
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_39

    .line 213
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mSyncKey:Ljava/lang/String;

    goto :goto_22

    .line 214
    :cond_39
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_22

    .line 215
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->getValueInt()I

    move-result v1

    iput v1, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    .line 216
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    sparse-switch v0, :sswitch_data_c2

    .line 251
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :sswitch_5a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    goto :goto_22

    .line 223
    :sswitch_62
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    goto :goto_22

    .line 226
    :sswitch_6a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    goto :goto_22

    .line 229
    :sswitch_72
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    goto :goto_22

    .line 238
    :sswitch_7a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    goto :goto_22

    .line 243
    :sswitch_82
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    invoke-virtual {v0, v4}, Lcom/android/exchange/adapter/FolderRenameAdapter;->callback(I)V

    .line 244
    const-string v0, "DeviceAccessException"

    const-string v1, "Received in FolderUpdateAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f060014

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v0

    .line 256
    :cond_9a
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b2

    .line 257
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->commit()V

    .line 262
    :cond_a6
    :goto_a6
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    #getter for: Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/exchange/adapter/FolderRenameAdapter;->access$000(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderRenameAdapter.FolderRenameParser.parse exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v3

    .line 258
    :cond_b2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->this$0:Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    iget v0, v0, Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a6

    .line 261
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->wipe()V

    goto :goto_a6

    .line 216
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
    .line 146
    return-void
.end method
