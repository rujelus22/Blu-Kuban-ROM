.class public Lcom/android/exchange/adapter/EasEmailSearchParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EasEmailSearchParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFoldId:J

.field private msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private res:Lcom/android/exchange/provider/EmailResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-class v0, Lcom/android/exchange/adapter/EasEmailSearchParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 5
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->msgs:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/android/exchange/provider/EmailResult;

    invoke-direct {v0}, Lcom/android/exchange/provider/EmailResult;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    .line 116
    return-void
.end method

.method private parsePropertiesTag(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/16 v0, 0x3cf

    invoke-static {p0, p1, v0}, Lcom/android/exchange/adapter/ParserUtility;->addMessageData(Lcom/android/exchange/adapter/AbstractSyncParser;Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 132
    iget-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method private parseResultTag()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 140
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 142
    .local v1, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 144
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 148
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 150
    const-string v2, "eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    .line 152
    iput v5, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxType:I

    .line 154
    :goto_22
    const/16 v2, 0x3ce

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EasEmailSearchParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_46

    .line 156
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3d8

    if-ne v2, v3, :cond_38

    .line 158
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, longId:Ljava/lang/String;
    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_22

    .line 162
    .end local v0           #longId:Ljava/lang/String;
    :cond_38
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cf

    if-ne v2, v3, :cond_42

    .line 164
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parsePropertiesTag(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_22

    .line 174
    :cond_42
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->skipTag()V

    goto :goto_22

    .line 182
    :cond_46
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
    .line 324
    return-void
.end method

.method public commit()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 332
    const/4 v4, 0x0

    .line 334
    .local v4, notifyCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v7, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 338
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v7, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v7, :cond_1f

    .line 340
    add-int/lit8 v4, v4, 0x1

    .line 344
    :cond_1f
    invoke-virtual {v3, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    goto :goto_d

    .line 348
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_23
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v7}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 350
    :try_start_2a
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v7}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 352
    monitor-exit v8
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_85

    .line 388
    :cond_33
    :goto_33
    return-void

    .line 356
    :cond_34
    :try_start_34
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "com.android.email.provider"

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 358
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, " SyncKey saved as: "

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/EasEmailSearchParser;->userLog([Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_85
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_54} :catch_7c
    .catch Landroid/content/OperationApplicationException; {:try_start_34 .. :try_end_54} :catch_88

    .line 370
    :goto_54
    :try_start_54
    monitor-exit v8
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_85

    .line 372
    if-lez v4, :cond_33

    .line 374
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v0, cv:Landroid/content/ContentValues;
    const-string v7, "field"

    const-string v8, "newMessageCount"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v7, "add"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 382
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_33

    .line 360
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_7c
    move-exception v1

    .line 362
    .local v1, e:Landroid/os/RemoteException;
    :try_start_7d
    sget-object v7, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    const-string v9, "Failed at mContentResolver.applyBatch."

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 370
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_85
    move-exception v7

    monitor-exit v8
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_85

    throw v7

    .line 364
    :catch_88
    move-exception v1

    .line 366
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_89
    sget-object v7, Lcom/android/exchange/adapter/EasEmailSearchParser;->TAG:Ljava/lang/String;

    const-string v9, "Failed at mContentResolver.applyBatch."

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_85

    goto :goto_54
.end method

.method public parse()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/EasEmailSearchParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x3c5

    if-eq v2, v3, :cond_16

    .line 202
    new-instance v2, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2

    .line 216
    .local v1, status:I
    :sswitch_12
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v6, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    .line 206
    .end local v1           #status:I
    :cond_16
    :goto_16
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/EasEmailSearchParser;->nextTag(I)I

    move-result v2

    if-eq v2, v7, :cond_ab

    .line 208
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cc

    if-ne v2, v3, :cond_68

    .line 210
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValueInt()I

    move-result v1

    .line 212
    .restart local v1       #status:I
    sparse-switch v1, :sswitch_data_b6

    .line 278
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 222
    :sswitch_2f
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v7, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 228
    :sswitch_34
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 234
    :sswitch_3b
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 240
    :sswitch_42
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 246
    :sswitch_49
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 252
    :sswitch_50
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 258
    :sswitch_57
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iput v5, v2, Lcom/android/exchange/provider/EmailResult;->result:I

    goto :goto_16

    .line 266
    :sswitch_5c
    new-instance v2, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f060014

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v2

    .line 284
    .end local v1           #status:I
    :cond_68
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3ce

    if-ne v2, v3, :cond_72

    .line 286
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parseResultTag()V

    goto :goto_16

    .line 288
    :cond_72
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3cb

    if-ne v2, v3, :cond_9b

    .line 290
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, range:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v6, :cond_16

    .line 294
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 296
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->endRange:I

    goto/16 :goto_16

    .line 300
    .end local v0           #range:[Ljava/lang/String;
    :cond_9b
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x3d0

    if-ne v2, v3, :cond_16

    .line 302
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->getValueInt()I

    move-result v3

    iput v3, v2, Lcom/android/exchange/provider/EmailResult;->total:I

    goto/16 :goto_16

    .line 308
    :cond_ab
    iget-object v2, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    iget v2, v2, Lcom/android/exchange/provider/EmailResult;->total:I

    if-lez v2, :cond_b4

    .line 310
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->commit()V

    .line 314
    :cond_b4
    return v5

    .line 212
    nop

    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_57
        0x2 -> :sswitch_12
        0x3 -> :sswitch_2f
        0x8 -> :sswitch_42
        0x9 -> :sswitch_34
        0xa -> :sswitch_49
        0xb -> :sswitch_3b
        0xc -> :sswitch_50
        0x81 -> :sswitch_5c
    .end sparse-switch
.end method

.method public parse_email_response()Lcom/android/exchange/provider/EmailResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasEmailSearchParser;->parse()Z

    .line 190
    iget-object v0, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->res:Lcom/android/exchange/provider/EmailResult;

    return-object v0
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public setFoldId(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/android/exchange/adapter/EasEmailSearchParser;->mFoldId:J

    .line 124
    return-void
.end method
