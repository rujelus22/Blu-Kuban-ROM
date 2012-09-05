.class public Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "MoveItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/MoveItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveItemParser"
.end annotation


# instance fields
.field mDstMsgId:Ljava/lang/String;

.field mSrcMsgId:Ljava/lang/String;

.field mStatus:I

.field final synthetic this$0:Lcom/android/exchange/adapter/MoveItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/MoveItemAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/MoveItemAdapter;)V
    .registers 5
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 343
    iput-object p1, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    .line 345
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 331
    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    .line 335
    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mDstMsgId:Ljava/lang/String;

    .line 347
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
    .line 357
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
    .line 393
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    #getter for: Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I
    invoke-static {v3}, Lcom/android/exchange/adapter/MoveItemAdapter;->access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 395
    .local v1, dstMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v1, :cond_17

    .line 397
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Can\'t find mailbox."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v2, :cond_36

    .line 405
    const-string v2, "syncServerId"

    iget-object v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mDstMsgId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "mailboxKey"

    iget-object v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    #getter for: Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I
    invoke-static {v3}, Lcom/android/exchange/adapter/MoveItemAdapter;->access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    :cond_36
    const-string v2, "flagMoved"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "dstMailboxKey"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 419
    :try_start_4b
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v2

    if-nez v2, :cond_76

    .line 421
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncServerId=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    :cond_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_4b .. :try_end_77} :catchall_87

    .line 431
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v2, :cond_86

    .line 433
    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    #getter for: Lcom/android/exchange/adapter/MoveItemAdapter;->mDstMailboxId:I
    invoke-static {v2}, Lcom/android/exchange/adapter/MoveItemAdapter;->access$000(Lcom/android/exchange/adapter/MoveItemAdapter;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    .line 439
    :cond_86
    return-void

    .line 427
    :catchall_87
    move-exception v2

    :try_start_88
    monitor-exit v3
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v2
.end method

.method public parse()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->nextTag(I)I

    move-result v0

    const/16 v1, 0x145

    if-eq v0, v1, :cond_f

    .line 523
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 527
    :cond_f
    :goto_f
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 529
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14a

    if-ne v0, v1, :cond_f

    .line 531
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->parseMoveItemResponse()Z

    goto :goto_f

    .line 537
    :cond_20
    iget-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->this$0:Lcom/android/exchange/adapter/MoveItemAdapter;

    invoke-virtual {v0, v2}, Lcom/android/exchange/adapter/MoveItemAdapter;->callback(I)V

    .line 543
    return v2
.end method

.method public parseMoveItemResponse()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 457
    :cond_2
    :goto_2
    const/16 v0, 0x14a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->nextTag(I)I

    move-result v0

    if-eq v0, v5, :cond_8c

    .line 459
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x147

    if-ne v0, v1, :cond_17

    .line 461
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    goto :goto_2

    .line 463
    :cond_17
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14b

    if-ne v0, v1, :cond_7b

    .line 465
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mStatus:I

    .line 467
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MoveItem status:"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " srcMsgId: "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mSrcMsgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->userLog([Ljava/lang/String;)V

    .line 471
    iget v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mStatus:I

    sparse-switch v0, :sswitch_data_8e

    goto :goto_2

    .line 483
    :sswitch_67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Move Item: Server error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :sswitch_6f
    new-instance v0, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v1, 0x40001

    const v2, 0x7f060014

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v0

    .line 499
    :cond_7b
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14c

    if-ne v0, v1, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->mDstMsgId:Ljava/lang/String;

    .line 503
    invoke-virtual {p0}, Lcom/android/exchange/adapter/MoveItemAdapter$MoveItemParser;->commit()V

    goto/16 :goto_2

    .line 509
    :cond_8c
    return v4

    .line 471
    nop

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_67
        0x4 -> :sswitch_67
        0x5 -> :sswitch_67
        0x6 -> :sswitch_67
        0x81 -> :sswitch_6f
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
    .line 365
    return-void
.end method
