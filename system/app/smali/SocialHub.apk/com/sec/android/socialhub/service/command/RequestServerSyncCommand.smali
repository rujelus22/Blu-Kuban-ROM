.class public Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "RequestServerSyncCommand.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand$SyncErrorType;
    }
.end annotation


# instance fields
.field private final RESULT:Ljava/lang/String;

.field private bRegisterEmailReceiver:Z

.field private bRegisterSnsReceiver:Z

.field private mEmailReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

.field private mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

.field private mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

.field private mRequestArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestEmailArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 55
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterSnsReceiver:Z

    .line 56
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterEmailReceiver:Z

    .line 58
    const-string v0, "SNS_RESULT"

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->RESULT:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    .line 69
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 71
    instance-of v0, p1, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v0, :cond_2d

    .line 73
    check-cast p1, Lcom/sec/android/socialhub/service/SocialHubService;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/socialhub/service/SocialHubService;->getSnsHandler()Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 76
    :cond_2d
    new-instance v0, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

    invoke-direct {v0}, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;->setOnBroadCastListener(Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;)V

    .line 79
    new-instance v0, Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

    invoke-direct {v0}, Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mEmailReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mEmailReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;->setOnBroadCastListener(Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;)V

    .line 81
    return-void
.end method

.method private doRequestSyncEmail()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 151
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterEmailReceiver:Z

    if-nez v0, :cond_17

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterEmailReceiver:Z

    .line 154
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mEmailReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mEmailReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    :cond_17
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_77

    move-result v6

    .line 159
    .local v6, accountID:I
    if-gez v6, :cond_8e

    .line 161
    const/4 v7, 0x0

    .line 165
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_20
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "real_email_id"

    aput-object v4, v2, v3

    const-string v3, "app=\'2_Email\' or app=\'3_SevenEmail\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    if-eqz v7, :cond_59

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v12, :cond_59

    .line 178
    :cond_46
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->requestSyncEmail(J)I

    move-result v9

    .line 180
    .local v9, ret_code:I
    packed-switch v9, :pswitch_data_a4

    .line 188
    :goto_53
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_6d

    move-result v0

    if-nez v0, :cond_46

    .line 198
    .end local v9           #ret_code:I
    :cond_59
    if-eqz v7, :cond_5f

    .line 200
    :try_start_5b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_77

    .line 201
    :goto_5e
    const/4 v7, 0x0

    .line 237
    .end local v6           #accountID:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5f
    :goto_5f
    :sswitch_5f
    return-void

    .line 183
    .restart local v6       #accountID:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #ret_code:I
    :pswitch_60
    const/4 v0, 0x0

    :try_start_61
    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 185
    invoke-static {v9}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand$SyncErrorType;->getErrString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6c} :catch_6d

    goto :goto_53

    .line 192
    .end local v9           #ret_code:I
    :catch_6d
    move-exception v8

    .line 194
    .local v8, e:Ljava/lang/Exception;
    :try_start_6e
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_86

    .line 198
    if-eqz v7, :cond_5f

    .line 200
    :try_start_73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_5e

    .line 222
    .end local v6           #accountID:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    :catch_77
    move-exception v8

    .line 224
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    iput-boolean v11, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 226
    iput v10, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 227
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    goto :goto_5f

    .line 198
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #accountID:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_86
    move-exception v0

    if-eqz v7, :cond_8d

    .line 200
    :try_start_89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v7, 0x0

    .line 198
    :cond_8d
    throw v0

    .line 207
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_8e
    int-to-long v0, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->requestSyncEmail(J)I

    move-result v9

    .line 209
    .restart local v9       #ret_code:I
    sparse-switch v9, :sswitch_data_aa

    goto :goto_5f

    .line 215
    :sswitch_97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 216
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 217
    invoke-static {v9}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand$SyncErrorType;->getErrString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a3} :catch_77

    goto :goto_5f

    .line 180
    :pswitch_data_a4
    .packed-switch 0xb
        :pswitch_60
    .end packed-switch

    .line 209
    :sswitch_data_aa
    .sparse-switch
        0x1 -> :sswitch_5f
        0xb -> :sswitch_97
    .end sparse-switch
.end method

.method private doRequestSyncIM()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method private doRequestSyncMSG()V
    .registers 1

    .prologue
    .line 463
    return-void
.end method

.method private doRequestSyncSNS()V
    .registers 13

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->NetworkStateCheking()Z

    move-result v0

    if-nez v0, :cond_23

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 253
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 254
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 255
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 365
    :cond_22
    :goto_22
    return-void

    .line 259
    :cond_23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterSnsReceiver:Z

    if-nez v0, :cond_37

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterSnsReceiver:Z

    .line 262
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    :cond_37
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 267
    .local v10, spType:I
    const/4 v6, 0x0

    .line 268
    .local v6, cntSE:I
    const/4 v11, 0x0

    .line 272
    .local v11, tempErr:I
    if-gez v10, :cond_5b

    .line 274
    const/4 v9, 0x0

    .local v9, index:I
    :goto_42
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_62

    .line 276
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v0, v0, v9

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->requestSyncSNS(I)I

    move-result v7

    .line 278
    .local v7, code:I
    sparse-switch v7, :sswitch_data_a0

    .line 274
    :goto_52
    :sswitch_52
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 281
    :sswitch_55
    add-int/lit8 v6, v6, 0x1

    .line 282
    goto :goto_52

    .line 285
    :sswitch_58
    add-int/lit8 v11, v11, 0x1

    .line 286
    goto :goto_52

    .line 300
    .end local v7           #code:I
    .end local v9           #index:I
    :cond_5b
    invoke-direct {p0, v10}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->requestSyncSNS(I)I

    move-result v7

    .line 302
    .restart local v7       #code:I
    sparse-switch v7, :sswitch_data_ae

    .line 322
    .end local v7           #code:I
    :cond_62
    :goto_62
    :sswitch_62
    if-lez v6, :cond_8e

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 325
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 326
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_22

    .line 340
    .end local v6           #cntSE:I
    .end local v10           #spType:I
    .end local v11           #tempErr:I
    :catch_73
    move-exception v8

    .line 342
    .local v8, e:Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 345
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 346
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_86

    goto :goto_22

    .line 349
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_86
    move-exception v0

    throw v0

    .line 305
    .restart local v6       #cntSE:I
    .restart local v7       #code:I
    .restart local v10       #spType:I
    .restart local v11       #tempErr:I
    :sswitch_88
    add-int/lit8 v6, v6, 0x1

    .line 306
    goto :goto_62

    .line 309
    :sswitch_8b
    add-int/lit8 v11, v11, 0x1

    .line 310
    goto :goto_62

    .line 330
    .end local v7           #code:I
    :cond_8e
    if-lez v11, :cond_22

    .line 332
    const/4 v0, 0x0

    :try_start_91
    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 333
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 334
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9e} :catch_73

    goto :goto_22

    .line 278
    nop

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_52
        0xa -> :sswitch_55
        0xb -> :sswitch_58
    .end sparse-switch

    .line 302
    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_62
        0xa -> :sswitch_88
        0xb -> :sswitch_8b
    .end sparse-switch
.end method

.method private getSpType(Landroid/net/Uri;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter "ContentUri"
    .parameter "type"

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    .line 634
    if-nez p1, :cond_5

    .line 714
    :cond_4
    :goto_4
    return-object v1

    .line 637
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, uri:Ljava/lang/String;
    const-string v2, "RequestServerSyncCommand"

    const-string v3, "getSpType()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpType Value  =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-eqz v0, :cond_4

    .line 644
    const-string v2, "sp/0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 646
    const/4 v1, 0x0

    aget-object v1, p2, v1

    goto :goto_4

    .line 648
    :cond_31
    const-string v2, "sp/10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 650
    const/16 v1, 0xa

    aget-object v1, p2, v1

    goto :goto_4

    .line 652
    :cond_3e
    const-string v2, "sp/11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 654
    const/16 v1, 0xb

    aget-object v1, p2, v1

    goto :goto_4

    .line 656
    :cond_4b
    const-string v2, "sp/12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 658
    const/16 v1, 0xc

    aget-object v1, p2, v1

    goto :goto_4

    .line 660
    :cond_58
    const-string v2, "sp/13"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 662
    const/16 v1, 0xd

    aget-object v1, p2, v1

    goto :goto_4

    .line 664
    :cond_65
    const-string v2, "sp/14"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 666
    const/16 v1, 0xe

    aget-object v1, p2, v1

    goto :goto_4

    .line 668
    :cond_72
    const-string v2, "sp/15"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 670
    const/16 v1, 0xf

    aget-object v1, p2, v1

    goto :goto_4

    .line 672
    :cond_7f
    const-string v2, "sp/1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 674
    const/4 v1, 0x1

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 676
    :cond_8c
    const-string v2, "sp/2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 678
    const/4 v1, 0x2

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 680
    :cond_99
    const-string v2, "sp/3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 682
    const/4 v1, 0x3

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 684
    :cond_a6
    const-string v2, "sp/4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 686
    const/4 v1, 0x4

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 688
    :cond_b3
    const-string v2, "sp/5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 690
    const/4 v1, 0x5

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 692
    :cond_c0
    const-string v2, "sp/6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 694
    aget-object v1, p2, v6

    goto/16 :goto_4

    .line 696
    :cond_cc
    const-string v2, "sp/6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 698
    aget-object v1, p2, v6

    goto/16 :goto_4

    .line 700
    :cond_d8
    const-string v2, "sp/7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 702
    const/4 v1, 0x7

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 704
    :cond_e5
    const-string v2, "sp/8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 706
    const/16 v1, 0x8

    aget-object v1, p2, v1

    goto/16 :goto_4

    .line 708
    :cond_f3
    const-string v2, "sp/9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 710
    const/16 v1, 0x9

    aget-object v1, p2, v1

    goto/16 :goto_4
.end method

.method private requestSyncEmail(J)I
    .registers 9
    .parameter "accountId"

    .prologue
    .line 371
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_ONE_ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 374
    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 375
    const-string v2, "RequestServerSyncCommand"

    const-string v3, "requestSyncEmail()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start syncNow !! account is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_41

    .line 379
    :try_start_31
    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    long-to-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    monitor-exit v3

    .line 382
    const/4 v2, 0x1

    .line 387
    .end local v1           #intent:Landroid/content/Intent;
    :goto_3d
    return v2

    .line 380
    .restart local v1       #intent:Landroid/content/Intent;
    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_3e

    :try_start_40
    throw v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    .line 384
    .end local v1           #intent:Landroid/content/Intent;
    :catch_41
    move-exception v0

    .line 386
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    const/16 v2, 0xb

    goto :goto_3d
.end method

.method private requestSyncSNS(I)I
    .registers 14
    .parameter "sp"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 398
    invoke-static {p1}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->findSpIndex(I)I

    move-result v4

    .line 400
    .local v4, index:I
    if-gez v4, :cond_14

    .line 402
    const-string v7, "RequestServerSyncCommand"

    const-string v8, "syncNow()"

    const-string v9, "index is -1!!!!"

    invoke-static {v7, v8, v9}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v7, 0xb

    .line 455
    :cond_13
    :goto_13
    return v7

    .line 406
    :cond_14
    iget-object v8, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-static {v8, v9}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->hasSnsAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 408
    iget-object v8, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-virtual {v9}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getService()Lcom/sec/android/app/sns/ISnsService;

    move-result-object v9

    invoke-static {v8, v9, p1, v10}, Lcom/sec/android/socialhub/util/SocialHubUtil;->checkSession(Landroid/content/Context;Lcom/sec/android/app/sns/ISnsService;IZ)Z

    move-result v1

    .line 410
    .local v1, bSession:Z
    if-ne v1, v7, :cond_9f

    .line 412
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v3, extras:Landroid/os/Bundle;
    const-string v8, "force"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    iget-object v8, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 416
    iget-object v8, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-static {v8, v9}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->getSnsAccount(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    aget-object v6, v8, v10

    .line 418
    .local v6, syncAccount:Landroid/accounts/Account;
    sget-object v8, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v5, v8, v4

    .line 420
    .local v5, spType:I
    invoke-static {v5}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 424
    .local v0, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v8, 0x4

    :try_start_52
    invoke-interface {v0, v8}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 426
    iget-object v9, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_5b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_52 .. :try_end_5b} :catch_96

    .line 428
    :try_start_5b
    iget-object v8, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    monitor-exit v9
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_9c

    .line 431
    :try_start_65
    const-string v8, "RequestServerSyncCommand"

    const-string v9, "requestSyncSNS()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", reqArray size - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v8, "com.sec.android.app.provider.sns"

    invoke-static {v6, v8, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_94
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_65 .. :try_end_94} :catch_96

    goto/16 :goto_13

    .line 440
    :catch_96
    move-exception v2

    .line 442
    .local v2, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v2}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto/16 :goto_13

    .line 429
    .end local v2           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :catchall_9c
    move-exception v8

    :try_start_9d
    monitor-exit v9
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v8
    :try_end_9f
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_9e .. :try_end_9f} :catch_96

    .line 447
    .end local v0           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v5           #spType:I
    .end local v6           #syncAccount:Landroid/accounts/Account;
    :cond_9f
    const/16 v7, 0xa

    goto/16 :goto_13

    .line 452
    .end local v1           #bSession:Z
    :cond_a3
    const/16 v7, 0xc

    goto/16 :goto_13
.end method


# virtual methods
.method public NetworkStateCheking()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 723
    .local v2, cmgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 725
    .local v1, WifiInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1c

    .line 727
    const-string v4, "RequestServerSyncCommand"

    const-string v5, "NetworkStateCheking()"

    const-string v6, "WiFi info load fail."

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_1b
    return v3

    .line 731
    :cond_1c
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 733
    .local v0, MobileInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_2c

    .line 735
    const-string v4, "RequestServerSyncCommand"

    const-string v5, "NetworkStateCheking()"

    const-string v6, "3G info load fail."

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 739
    :cond_2c
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 741
    :cond_38
    const-string v3, "RequestServerSyncCommand"

    const-string v5, "NetworkStateCheking"

    const-string v6, "Network is available"

    invoke-static {v3, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 742
    goto :goto_1b

    .line 747
    :cond_43
    const-string v4, "RequestServerSyncCommand"

    const-string v5, "NetworkStateCheking"

    const-string v6, "Network is unavailable"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public checkInvokeCallback()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 594
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5c

    .line 598
    :try_start_11
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterSnsReceiver:Z

    if-ne v0, v2, :cond_1f

    .line 600
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterSnsReceiver:Z

    .line 604
    :cond_1f
    iget-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterEmailReceiver:Z

    if-ne v0, v2, :cond_2d

    .line 606
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mEmailReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubEmailHandleReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->bRegisterEmailReceiver:Z
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2d} :catch_3c

    .line 617
    :cond_2d
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    :goto_37
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 624
    :goto_3b
    return-void

    .line 611
    :catch_3c
    move-exception v6

    .line 613
    .local v6, e:Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4b

    .line 617
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    goto :goto_37

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v0

    move-object v7, v0

    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->invokeCallback(IIZILjava/lang/String;)V

    throw v7

    .line 622
    :cond_5c
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "checkInvokeCallback()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request (sns - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", email - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not handled yet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method protected execute()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 94
    iput v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 95
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 138
    :pswitch_17
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "excute()"

    const-string v2, "Invalid Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->checkInvokeCallback()V

    .line 144
    return v3

    .line 108
    :pswitch_24
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncEmail()V

    .line 109
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "excute()"

    const-string v2, "EMAIL Type!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 114
    :pswitch_31
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncIM()V

    .line 115
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "excute()"

    const-string v2, "IM Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 120
    :pswitch_3e
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncSNS()V

    .line 121
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "excute()"

    const-string v2, "SNS Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 126
    :pswitch_4b
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncMSG()V

    .line 127
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "excute()"

    const-string v2, "MSG Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 131
    :pswitch_58
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncEmail()V

    .line 132
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncIM()V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncMSG()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->doRequestSyncSNS()V

    .line 135
    const-string v0, "RequestServerSyncCommand"

    const-string v1, "excute()"

    const-string v2, "ALL Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 104
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_24
        :pswitch_24
        :pswitch_31
        :pswitch_3e
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_58
    .end packed-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    const-string v0, "RequestServerSyncCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 86
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    .line 88
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    .line 89
    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .registers 19
    .parameter "intent"

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 502
    .local v1, action:Ljava/lang/String;
    if-eqz p1, :cond_4f

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 506
    const-string v13, "RequestServerSyncCommand"

    const-string v14, "onReceive()"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "action - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    if-eqz v1, :cond_18b

    .line 509
    const-string v13, "com.sec.android.app.sns.action.START_MESSAGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_50

    .line 511
    const-string v13, "ServiceProvider"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 512
    .local v10, spType:Ljava/lang/Integer;
    const-string v13, "RequestServerSyncCommand"

    const-string v14, "onReceive()"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "spType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .end local v10           #spType:Ljava/lang/Integer;
    :cond_4f
    :goto_4f
    return-void

    .line 516
    :cond_50
    const-string v13, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_de

    .line 518
    const-string v13, "SNS_CONTENT_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 519
    .local v12, uri:Landroid/net/Uri;
    const-string v13, "SNS_RESULT"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 521
    .local v3, bSuccess:Ljava/lang/Boolean;
    sget-object v13, Lcom/sec/android/app/sns/type/SnsSpType;->LIST:[Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->getSpType(Landroid/net/Uri;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 523
    .restart local v10       #spType:Ljava/lang/Integer;
    const-string v14, "RequestServerSyncCommand"

    const-string v15, "onReceive()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "spType = "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ", bSuccess = "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ", reqArray size - "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    if-eqz v13, :cond_d9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_b0
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    monitor-enter v14

    .line 527
    :try_start_c2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 531
    :cond_d3
    monitor-exit v14
    :try_end_d4
    .catchall {:try_start_c2 .. :try_end_d4} :catchall_db

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->checkInvokeCallback()V

    goto/16 :goto_4f

    .line 523
    :cond_d9
    const/4 v13, 0x0

    goto :goto_b0

    .line 531
    :catchall_db
    move-exception v13

    :try_start_dc
    monitor-exit v14
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v13

    .line 536
    .end local v3           #bSuccess:Ljava/lang/Boolean;
    .end local v10           #spType:Ljava/lang/Integer;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_de
    const-string v13, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    .line 538
    const-string v13, "intentType"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 539
    .local v11, type:I
    const-string v13, "action"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 541
    .local v4, email_action:I
    const-string v13, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, id_array:[Ljava/lang/String;
    const/16 v13, 0x190

    if-eq v11, v13, :cond_108

    const/16 v13, 0x19a

    if-ne v11, v13, :cond_116

    :cond_108
    const/4 v13, 0x1

    :goto_109
    if-nez v13, :cond_118

    .line 545
    const-string v13, "RequestServerSyncCommand"

    const-string v14, "onReceive()"

    const-string v15, "it\'s not email action!!!"

    invoke-static {v13, v14, v15}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 543
    :cond_116
    const/4 v13, 0x0

    goto :goto_109

    .line 549
    :cond_118
    packed-switch v4, :pswitch_data_196

    goto/16 :goto_4f

    .line 553
    :pswitch_11d
    const-string v14, "RequestServerSyncCommand"

    const-string v15, "onReceive()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Email Sync is completed. id_array - "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v7, :cond_181

    array-length v13, v7

    :goto_131
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ", reqArray size - "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-eqz v7, :cond_186

    .line 557
    move-object v2, v7

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_15b
    if-ge v5, v9, :cond_186

    aget-object v6, v2, v5

    .line 559
    .local v6, id:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 561
    .local v8, id_int:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    monitor-enter v14

    .line 563
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17d

    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->mRequestEmailArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 567
    :cond_17d
    monitor-exit v14

    .line 557
    add-int/lit8 v5, v5, 0x1

    goto :goto_15b

    .line 553
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #id:Ljava/lang/String;
    .end local v8           #id_int:Ljava/lang/Integer;
    .end local v9           #len$:I
    :cond_181
    const/4 v13, 0x0

    goto :goto_131

    .line 567
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #id:Ljava/lang/String;
    .restart local v8       #id_int:Ljava/lang/Integer;
    .restart local v9       #len$:I
    :catchall_183
    move-exception v13

    monitor-exit v14
    :try_end_185
    .catchall {:try_start_16c .. :try_end_185} :catchall_183

    throw v13

    .line 571
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #id:Ljava/lang/String;
    .end local v8           #id_int:Ljava/lang/Integer;
    .end local v9           #len$:I
    :cond_186
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/service/command/RequestServerSyncCommand;->checkInvokeCallback()V

    goto/16 :goto_4f

    .line 583
    .end local v4           #email_action:I
    .end local v7           #id_array:[Ljava/lang/String;
    .end local v11           #type:I
    :cond_18b
    const-string v13, "RequestServerSyncCommand"

    const-string v14, "onReceive()"

    const-string v15, "action is null!!!"

    invoke-static {v13, v14, v15}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f

    .line 549
    :pswitch_data_196
    .packed-switch 0x7
        :pswitch_11d
    .end packed-switch
.end method
