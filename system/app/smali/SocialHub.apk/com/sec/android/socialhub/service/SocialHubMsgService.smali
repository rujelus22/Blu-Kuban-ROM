.class public Lcom/sec/android/socialhub/service/SocialHubMsgService;
.super Landroid/app/Service;
.source "SocialHubMsgService.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
.implements Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;
.implements Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;,
        Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;,
        Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;,
        Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;
    }
.end annotation


# static fields
.field public static final TYPE_IM:Ljava/lang/String;

.field public static final TYPE_SNS:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

.field private mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

.field private mSnsReqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/16 v0, 0x258

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_SNS:Ljava/lang/String;

    .line 73
    const/16 v0, 0x2bc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_IM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 77
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    .line 79
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    .line 83
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsReqMap:Ljava/util/HashMap;

    .line 87
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    .line 923
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/service/SocialHubMsgService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/service/SocialHubMsgService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->startManagement()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/service/SocialHubMsgService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doCheckExistEmailMessage(Ljava/lang/String;)V
    .registers 11
    .parameter "messageID"

    .prologue
    .line 386
    const/4 v6, 0x0

    .line 390
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    if-eqz v6, :cond_62

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_68

    .line 397
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v0, "400,410"

    invoke-direct {p0, v8, v0, p1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "SocialHubMsgService"

    const-string v1, "doCheckExistEmailMessage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is already removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_9d

    .line 426
    .end local v8           #value:Landroid/content/ContentValues;
    :cond_62
    :goto_62
    if-eqz v6, :cond_67

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_67
    :goto_67
    return-void

    .line 411
    :cond_68
    :try_start_68
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .restart local v8       #value:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v0, "400,410"

    invoke-direct {p0, v8, v0, p1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v0, "SocialHubMsgService"

    const-string v1, "doCheckExistEmailMessage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is still exist!!. we just change status removing.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_68 .. :try_end_9c} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_9c} :catch_9d

    goto :goto_62

    .line 420
    .end local v8           #value:Landroid/content/ContentValues;
    :catch_9d
    move-exception v7

    .line 422
    .local v7, e:Ljava/lang/Exception;
    :try_start_9e
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a7

    .line 426
    if-eqz v6, :cond_67

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 426
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_a7
    move-exception v0

    if-eqz v6, :cond_ad

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ad
    throw v0
.end method

.method private doCheckExistIMMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "messageID"

    .prologue
    .line 499
    return-void
.end method

.method private doCheckExistMsgMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "messageID"

    .prologue
    .line 436
    return-void
.end method

.method private doCheckExistSNSMessage(Ljava/lang/String;I)V
    .registers 14
    .parameter "messageID"
    .parameter "spType"

    .prologue
    const/4 v1, 0x1

    .line 440
    const/4 v8, 0x0

    .line 442
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 446
    .local v7, condition:Ljava/lang/StringBuffer;
    :try_start_9
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v6

    .line 447
    .local v6, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v6, :cond_2a

    .line 449
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-ne v0, v1, :cond_82

    .line 451
    const-string v0, "thread_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :goto_1b
    const-string v0, "=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 462
    if-eqz v8, :cond_7c

    .line 464
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_92

    .line 466
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v10, value:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_SNS:Ljava/lang/String;

    invoke-direct {p0, v10, v0, p1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v0, "SocialHubMsgService"

    const-string v1, "doCheckExistSNSMessage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is still exist!!  we just change status removing.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_9 .. :try_end_7c} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7c} :catch_88

    .line 489
    .end local v10           #value:Landroid/content/ContentValues;
    :cond_7c
    :goto_7c
    if-eqz v8, :cond_81

    .line 491
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 494
    .end local v6           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_81
    :goto_81
    return-void

    .line 455
    .restart local v6       #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_82
    :try_start_82
    const-string v0, "message_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_1b

    .line 483
    .end local v6           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_88
    move-exception v9

    .line 485
    .local v9, e:Ljava/lang/Exception;
    :try_start_89
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_c7

    .line 489
    if-eqz v8, :cond_81

    .line 491
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_81

    .line 475
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_92
    :try_start_92
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .restart local v10       #value:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_SNS:Ljava/lang/String;

    invoke-direct {p0, v10, v0, p1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v0, "SocialHubMsgService"

    const-string v1, "doCheckExistSNSMessage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is already removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_92 .. :try_end_c6} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_c6} :catch_88

    goto :goto_7c

    .line 489
    .end local v6           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v10           #value:Landroid/content/ContentValues;
    :catchall_c7
    move-exception v0

    if-eqz v8, :cond_cd

    .line 491
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_cd
    throw v0
.end method

.method private doHandleRemoveFail()V
    .registers 16

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x1

    .line 193
    const/4 v7, 0x0

    .line 195
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v12, value:Landroid/content/ContentValues;
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;->FIELD:[Ljava/lang/String;

    const-string v3, "status=4"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_5c

    .line 203
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRemoveFail()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove_fail count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v13, :cond_5c

    .line 209
    :cond_3c
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 210
    .local v10, req_cnt:I
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, message_id:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 212
    .local v6, app_type:I
    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 214
    .local v11, spType:I
    if-le v10, v14, :cond_83

    .line 223
    sparse-switch v6, :sswitch_data_a4

    .line 253
    :goto_56
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_59} :catch_66

    move-result v0

    if-nez v0, :cond_3c

    .line 263
    .end local v6           #app_type:I
    .end local v9           #message_id:Ljava/lang/String;
    .end local v10           #req_cnt:I
    .end local v11           #spType:I
    :cond_5c
    if-eqz v7, :cond_61

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_61
    :goto_61
    return-void

    .line 227
    .restart local v6       #app_type:I
    .restart local v9       #message_id:Ljava/lang/String;
    .restart local v10       #req_cnt:I
    .restart local v11       #spType:I
    :sswitch_62
    :try_start_62
    invoke-direct {p0, v9}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doCheckExistEmailMessage(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_56

    .line 257
    .end local v6           #app_type:I
    .end local v9           #message_id:Ljava/lang/String;
    .end local v10           #req_cnt:I
    .end local v11           #spType:I
    :catch_66
    move-exception v8

    .line 259
    .local v8, e:Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_74

    .line 263
    if-eqz v7, :cond_61

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_61

    .line 231
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #app_type:I
    .restart local v9       #message_id:Ljava/lang/String;
    .restart local v10       #req_cnt:I
    .restart local v11       #spType:I
    :sswitch_70
    :try_start_70
    invoke-direct {p0, v9, v11}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doCheckExistSNSMessage(Ljava/lang/String;I)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_66

    goto :goto_56

    .line 263
    .end local v6           #app_type:I
    .end local v9           #message_id:Ljava/lang/String;
    .end local v10           #req_cnt:I
    .end local v11           #spType:I
    :catchall_74
    move-exception v0

    if-eqz v7, :cond_7a

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v0

    .line 235
    .restart local v6       #app_type:I
    .restart local v9       #message_id:Ljava/lang/String;
    .restart local v10       #req_cnt:I
    .restart local v11       #spType:I
    :sswitch_7b
    :try_start_7b
    invoke-direct {p0, v9}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doCheckExistIMMessage(Ljava/lang/String;)V

    goto :goto_56

    .line 241
    :sswitch_7f
    invoke-direct {p0, v9}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doCheckExistMsgMessage(Ljava/lang/String;)V

    goto :goto_56

    .line 247
    :cond_83
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 248
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v0, "remove_req_cnt"

    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v12, v0, v9}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_7b .. :try_end_a2} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a2} :catch_66

    goto :goto_56

    .line 223
    nop

    :sswitch_data_a4
    .sparse-switch
        0xc8 -> :sswitch_7f
        0x12c -> :sswitch_7f
        0x136 -> :sswitch_7f
        0x190 -> :sswitch_62
        0x19a -> :sswitch_62
        0x258 -> :sswitch_70
        0x2bc -> :sswitch_7b
    .end sparse-switch
.end method

.method private doHandleRemoveReady()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 306
    const/4 v7, 0x0

    .line 308
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 310
    .local v6, app_type:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v11, messaging_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v9, email_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v10, im_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v12, sns_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;>;"
    :try_start_17
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;->FIELD:[Ljava/lang/String;

    const-string v3, "status=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 319
    if-eqz v7, :cond_62

    .line 321
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRemoveReady()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove_ready count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v13, :cond_62

    .line 327
    :cond_4b
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 329
    sparse-switch v6, :sswitch_data_102

    .line 359
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRemoveReady()"

    const-string v2, "Invalid Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_5c
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 366
    :cond_62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doRequestRemoveEmail([Ljava/lang/String;)V

    .line 367
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doRequestRemoveIM([Ljava/lang/String;)V

    .line 368
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doRequestRemoveMsg([Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;)V

    .line 369
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doRequestRemoveSNS([Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;)V
    :try_end_9e
    .catchall {:try_start_17 .. :try_end_9e} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_9e} :catch_b7

    .line 377
    if-eqz v7, :cond_a3

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_a3
    :goto_a3
    return-void

    .line 334
    :sswitch_a4
    :try_start_a4
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catchall {:try_start_a4 .. :try_end_b6} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b6} :catch_b7

    goto :goto_5c

    .line 371
    :catch_b7
    move-exception v8

    .line 373
    .local v8, e:Ljava/lang/Exception;
    :try_start_b8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_ca

    .line 377
    if-eqz v7, :cond_a3

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_a3

    .line 342
    .end local v8           #e:Ljava/lang/Exception;
    :sswitch_c1
    const/4 v0, 0x2

    :try_start_c2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c9} :catch_b7

    goto :goto_5c

    .line 377
    :catchall_ca
    move-exception v0

    if-eqz v7, :cond_d0

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d0
    throw v0

    .line 346
    :sswitch_d1
    :try_start_d1
    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;

    const/16 v0, 0x8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_f4

    const-string v0, "inbox"

    :goto_e2
    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5c

    :cond_f4
    const-string v0, "outbox"

    goto :goto_e2

    .line 355
    :sswitch_f7
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ff
    .catchall {:try_start_d1 .. :try_end_ff} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ff} :catch_b7

    goto/16 :goto_5c

    .line 329
    nop

    :sswitch_data_102
    .sparse-switch
        0xc8 -> :sswitch_a4
        0x12c -> :sswitch_a4
        0x136 -> :sswitch_a4
        0x190 -> :sswitch_c1
        0x19a -> :sswitch_c1
        0x258 -> :sswitch_d1
        0x2bc -> :sswitch_f7
    .end sparse-switch
.end method

.method private doHandleRemoved()V
    .registers 9

    .prologue
    .line 166
    const/4 v6, 0x0

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;->FIELD:[Ljava/lang/String;

    const-string v3, "status=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_39

    .line 174
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRemoved()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "status=3"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3f

    .line 184
    :cond_39
    if-eqz v6, :cond_3e

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_3e
    :goto_3e
    return-void

    .line 178
    :catch_3f
    move-exception v7

    .line 180
    .local v7, e:Ljava/lang/Exception;
    :try_start_40
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_49

    .line 184
    if-eqz v6, :cond_3e

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 184
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_49
    move-exception v0

    if-eqz v6, :cond_4f

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v0
.end method

.method private doHandleRemoving()V
    .registers 9

    .prologue
    .line 272
    const/4 v6, 0x0

    .line 276
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;->FIELD:[Ljava/lang/String;

    const-string v3, "status=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    if-eqz v6, :cond_2f

    .line 280
    const-string v0, "SocialHubMsgService"

    const-string v1, "doHandleRemoving()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_35

    .line 297
    :cond_2f
    if-eqz v6, :cond_34

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_34
    :goto_34
    return-void

    .line 291
    :catch_35
    move-exception v7

    .line 293
    .local v7, e:Ljava/lang/Exception;
    :try_start_36
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    .line 297
    if-eqz v6, :cond_34

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 297
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_3f
    move-exception v0

    if-eqz v6, :cond_45

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method private doHandleResponseRemoveEmail(Landroid/content/Intent;)V
    .registers 14
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    .line 671
    const-string v8, "intentType"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 672
    .local v6, type:I
    const-string v8, "action"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 677
    .local v0, action:I
    const-string v8, "id_array"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, id_array:[Ljava/lang/String;
    const-string v8, "SocialHubMsgService"

    const-string v9, "doHandleResponseRemoveEmail()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/sec/android/socialhub/service/type/BroadCastType$ActionType;->getType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    if-eqz v4, :cond_66

    .line 683
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v7, value:Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 686
    const-string v8, "status"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_52
    if-ge v2, v5, :cond_5e

    aget-object v3, v1, v2

    .line 690
    .local v3, id:Ljava/lang/String;
    const-string v8, "400,410"

    invoke-direct {p0, v7, v8, v3}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 693
    .end local v3           #id:Ljava/lang/String;
    :cond_5e
    const/4 v8, 0x2

    sget-object v9, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    invoke-static {p0, v8, v9, v10}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V

    .line 699
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v7           #value:Landroid/content/ContentValues;
    :goto_65
    return-void

    .line 697
    :cond_66
    const-string v8, "SocialHubMsgService"

    const-string v9, "doHandleResponseRemoveEmail()"

    const-string v10, "id_array is null!!"

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method

.method private doHandleResponseRemoveIM(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 707
    return-void
.end method

.method private doHandleResponseRemoveSNS(Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;ZII)V
    .registers 9
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "subError"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v1, -0x64

    .line 636
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 637
    .local v0, value:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 639
    if-ne p2, v3, :cond_24

    .line 641
    const-string v1, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :goto_17
    sget-object v1, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_SNS:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->messageID:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->runRetry(Z)V

    .line 666
    return-void

    .line 653
    :cond_24
    if-ne p3, v1, :cond_32

    if-ne p4, v1, :cond_32

    .line 655
    const-string v1, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_17

    .line 659
    :cond_32
    const-string v1, "status"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_17
.end method

.method private doRequestRemoveEmail([Ljava/lang/String;)V
    .registers 11
    .parameter "messageID"

    .prologue
    .line 503
    if-eqz p1, :cond_5

    array-length v6, p1

    if-gtz v6, :cond_f

    .line 505
    :cond_5
    const-string v6, "SocialHubMsgService"

    const-string v7, "doRequestRemoveEmail()"

    const-string v8, "no messages!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_e
    return-void

    .line 509
    :cond_f
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v5, value:Landroid/content/ContentValues;
    const-string v6, "status"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v3, :cond_2d

    aget-object v4, v0, v1

    .line 514
    .local v4, message:Ljava/lang/String;
    const-string v6, "400,410"

    invoke-direct {p0, v5, v6, v4}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 519
    .end local v4           #message:Ljava/lang/String;
    :cond_2d
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.email.intent.action.ACTION_EXTERNAL_EMAIL_DELETE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, intent_br:Landroid/content/Intent;
    const-string v6, "intentType"

    const/16 v7, 0x190

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string v6, "id_array"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v6, "action"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_e
.end method

.method private doRequestRemoveIM([Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 574
    if-eqz p1, :cond_6

    array-length v0, p1

    if-gtz v0, :cond_10

    .line 576
    :cond_6
    const-string v0, "SocialHubMsgService"

    const-string v1, "doRequestRemoveIM()"

    const-string v2, "no messages!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :goto_f
    return-void

    .line 580
    :cond_10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 581
    const-string v0, "status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    array-length v3, p1

    move v0, v1

    :goto_21
    if-ge v0, v3, :cond_2d

    aget-object v4, p1, v0

    .line 585
    sget-object v5, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_IM:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v4}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 588
    :cond_2d
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    const-string v2, "intentType"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v2, "id_array"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->startActivity(Landroid/content/Intent;)V

    .line 597
    const-string v2, "SocialHubMsgService"

    const-string v3, "doRequestRemoveIM()"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request close chat : contact_id : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_76

    aget-object v0, p1, v1

    :goto_61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "SocialHubMsgService"

    const-string v1, "doRequestRemoveIM()"

    const-string v2, "IM update status changed \' true\'"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 597
    :cond_76
    const-string v0, "x"

    goto :goto_61
.end method

.method private doRequestRemoveMsg([Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;)V
    .registers 15
    .parameter "messages"

    .prologue
    const/4 v8, 0x0

    .line 529
    if-eqz p1, :cond_6

    array-length v9, p1

    if-gtz v9, :cond_10

    .line 531
    :cond_6
    const-string v8, "SocialHubMsgService"

    const-string v9, "doRequestRemoveMsg()"

    const-string v10, "no messages!"

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_f
    :goto_f
    return-void

    .line 535
    :cond_10
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .local v7, value:Landroid/content/ContentValues;
    move-object v0, p1

    .local v0, arr$:[Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;
    :try_start_16
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_18
    if-ge v3, v4, :cond_f

    aget-object v5, v0, v3

    .line 541
    .local v5, message:Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;
    const/4 v1, 0x0

    .line 544
    .local v1, cnt:I
    iget v9, v5, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;->isLocked:I

    if-gtz v9, :cond_6b

    move-object v6, v8

    .line 546
    .local v6, selection:Ljava/lang/String;
    :goto_22
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 547
    const-string v9, "status"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v9, "300,200,310"

    iget-object v10, v5, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;->messageID:Ljava/lang/String;

    invoke-direct {p0, v7, v9, v10}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v9, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v11, v5, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;->messageID:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 557
    if-gtz v1, :cond_68

    .line 559
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 560
    const-string v9, "status"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string v9, "SocialHubMsgService"

    const-string v10, "doRequestRemoveMsg()"

    const-string v11, "removed message count is 0!!!"

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v9, "300,200,310"

    iget-object v10, v5, Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;->messageID:Ljava/lang/String;

    invoke-direct {p0, v7, v9, v10}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 544
    .end local v6           #selection:Ljava/lang/String;
    :cond_6b
    const-string v6, "locked=0"
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6d} :catch_6e

    goto :goto_22

    .line 566
    .end local v1           #cnt:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #message:Lcom/sec/android/socialhub/service/SocialHubMsgService$MsgDeleteInfo;
    :catch_6e
    move-exception v2

    .line 568
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private doRequestRemoveSNS([Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;)V
    .registers 14
    .parameter "messages"

    .prologue
    .line 603
    if-eqz p1, :cond_5

    array-length v0, p1

    if-gtz v0, :cond_f

    .line 605
    :cond_5
    const-string v0, "SocialHubMsgService"

    const-string v1, "doRequestRemoveSNS()"

    const-string v2, "no messages!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_e
    return-void

    .line 609
    :cond_f
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v11, value:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    move-object v6, p1

    .local v6, arr$:[Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_21
    if-ge v7, v8, :cond_2f

    aget-object v9, v6, v7

    .line 614
    .local v9, message:Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
    sget-object v0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->TYPE_SNS:Ljava/lang/String;

    iget-object v1, v9, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->messageID:Ljava/lang/String;

    invoke-direct {p0, v11, v0, v1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 617
    .end local v9           #message:Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
    :cond_2f
    move-object v6, p1

    array-length v8, v6

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v8, :cond_5d

    aget-object v9, v6, v7

    .line 619
    .restart local v9       #message:Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget v2, v9, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->spType:I

    iget-object v3, v9, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->folderType:Ljava/lang/String;

    iget-object v4, v9, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->messageID:Ljava/lang/String;

    iget-object v5, v9, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;->threadID:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->messageDelete(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 621
    .local v10, ret:I
    if-gez v10, :cond_53

    .line 623
    const-string v0, "SocialHubMsgService"

    const-string v1, "doRequestRemoveSNS()"

    const-string v2, "API Call error"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :goto_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 627
    :cond_53
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsReqMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 631
    .end local v9           #message:Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
    .end local v10           #ret:I
    :cond_5d
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->updateSnsFlagView()V

    goto :goto_e
.end method

.method private startManagement()V
    .registers 4

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleRemoving()V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleRemoved()V

    .line 156
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleRemoveFail()V

    .line 158
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleRemoveReady()V

    .line 160
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->FAST_REQUERY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 161
    return-void
.end method

.method private updateSnsFlagView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 885
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .local v1, flag_view_1:Landroid/content/ContentValues;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 888
    .local v0, flag_view_0:Landroid/content/ContentValues;
    const-string v2, "flag_view"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v2, "flag_view"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type=600 and sp_type != 0"

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 892
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "app_type=600 and _id_origin in (select _id_origin from messages join (select sp_type, contactid,max(date) as date from messages where app_type=600 and status = 0 group by contactid,sp_type) as jt on (messages.app_type=600 and messages.sp_type=jt.sp_type and messages.contactid=jt.contactid and messages.date=jt.date))"

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method private updateStatus(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "value"
    .parameter "condition"
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 770
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 772
    .local v0, status:I
    packed-switch v0, :pswitch_data_3e

    .line 777
    :goto_e
    const-string v1, "remove_req_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "app_type in (%s) and _id_origin=\'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 775
    :pswitch_2f
    const-string v1, "remove_req_time"

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_e

    .line 772
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 94
    new-instance v0, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-direct {v0}, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->setOnBroadCastListener(Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;)V

    .line 97
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bindService()V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mResolver:Landroid/content/ContentResolver;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;-><init>(Lcom/sec/android/socialhub/service/SocialHubMsgService;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsReqMap:Ljava/util/HashMap;

    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    const-string v0, "SocialHubMsgService"

    const-string v1, "onCreate()"

    const-string v2, "service is created!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mReceiver:Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->unbindService()V

    .line 119
    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, action:Ljava/lang/String;
    const-string v5, "SocialHubMsgService"

    const-string v6, "onReceive()"

    if-eqz v0, :cond_28

    move-object v4, v0

    :goto_b
    invoke-static {v5, v6, v4}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :try_start_e
    const-string v4, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 730
    const-string v4, "intentType"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 731
    .local v3, type:I
    const-string v4, "action"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_39

    move-result v1

    .line 742
    .local v1, action_type:I
    sparse-switch v3, :sswitch_data_50

    .line 766
    .end local v1           #action_type:I
    .end local v3           #type:I
    :cond_27
    :goto_27
    return-void

    .line 724
    :cond_28
    const-string v4, ""

    goto :goto_b

    .line 746
    .restart local v1       #action_type:I
    .restart local v3       #type:I
    :sswitch_2b
    packed-switch v1, :pswitch_data_5a

    goto :goto_27

    .line 749
    :pswitch_2f
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleResponseRemoveEmail(Landroid/content/Intent;)V

    .line 750
    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->runRetry(Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_27

    .line 761
    .end local v1           #action_type:I
    .end local v3           #type:I
    :catch_39
    move-exception v2

    .line 763
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 755
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3e
    :try_start_3e
    const-string v4, "com.sec.android.im.action.chat_closed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 757
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleResponseRemoveIM(Landroid/content/Intent;)V

    .line 758
    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->runRetry(Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4f} :catch_39

    goto :goto_27

    .line 742
    :sswitch_data_50
    .sparse-switch
        0x190 -> :sswitch_2b
        0x19a -> :sswitch_2b
    .end sparse-switch

    .line 746
    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_2f
    .end packed-switch
.end method

.method public onResponse(IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 16
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 793
    packed-switch p2, :pswitch_data_40

    .line 809
    :goto_3
    return-void

    .line 797
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsReqMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;

    .line 799
    .local v0, message:Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;
    if-eqz v0, :cond_1e

    .line 801
    invoke-direct {p0, v0, p3, p7, p8}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->doHandleResponseRemoveSNS(Lcom/sec/android/socialhub/service/SocialHubMsgService$SnsDeleteMsgInfo;ZII)V

    .line 802
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsReqMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_1e
    const-string v1, "SocialHubMsgService"

    const-string v2, "onResponse()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remain map size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mSnsReqMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 793
    nop

    :pswitch_data_40
    .packed-switch 0x13
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceConnected()V
    .registers 4

    .prologue
    .line 712
    const-string v0, "SocialHubMsgService"

    const-string v1, "onServiceConnected()"

    const-string v2, "connected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 4

    .prologue
    .line 717
    const-string v0, "SocialHubMsgService"

    const-string v1, "onServiceDisconnected()"

    const-string v2, "disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/MsgLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 124
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    :goto_6
    const-string v1, "SocialHubMsgService"

    const-string v2, "onStartCommand()"

    invoke-static {v1, v2, v0}, Lcom/sec/android/socialhub/service/util/MsgLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz v0, :cond_20

    .line 130
    const-string v1, "com.sec.android.socialhub.REMOVE_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 132
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->startManagement()V

    .line 133
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService;->mRetryManager:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->runRetry(Z)V

    .line 141
    :cond_20
    :goto_20
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 124
    .end local v0           #action:Ljava/lang/String;
    :cond_25
    const/4 v0, 0x0

    goto :goto_6

    .line 135
    .restart local v0       #action:Ljava/lang/String;
    :cond_27
    const-string v1, "com.sec.android.socialhub.CREATE_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_20
.end method
