.class public Lcom/sec/android/app/sns/SnsSvc;
.super Landroid/app/Application;
.source "SnsSvc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/android/app/sns/SnsSvc;


# instance fields
.field private mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;

.field private mFramework:Lcom/sec/android/app/sns/framework/SnsFramework;

.field private mHandler:Landroid/os/Handler;

.field private mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;

.field private mPollingMgr:Lcom/sec/android/app/sns/polling/SnsPollingMgr;

.field private mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;

.field private mService:Lcom/sec/android/app/sns/SnsService;

.field private mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sns/SnsSvc;->mInstance:Lcom/sec/android/app/sns/SnsSvc;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/polling/SnsPollingMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mPollingMgr:Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/request/SnsRequestMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/http/SnsHttpMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/session/SnsSessionMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/framework/SnsFramework;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mFramework:Lcom/sec/android/app/sns/framework/SnsFramework;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sns/SnsSvc;)Lcom/sec/android/app/sns/SnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mService:Lcom/sec/android/app/sns/SnsService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcast(Lcom/sec/android/app/sns/result/SnsResultData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForRetryLogin(Lcom/sec/android/app/sns/result/SnsResultData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForLogin(Lcom/sec/android/app/sns/result/SnsResultData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/SnsSvc;->invokeBroadcastForMessageRetrieveStart(Lcom/sec/android/app/sns/result/SnsResultData;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/sec/android/app/sns/SnsSvc;->mInstance:Lcom/sec/android/app/sns/SnsSvc;

    if-nez v0, :cond_c

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SnsSvc Application is NOT created !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_c
    sget-object v0, Lcom/sec/android/app/sns/SnsSvc;->mInstance:Lcom/sec/android/app/sns/SnsSvc;

    return-object v0
.end method

.method private initPrimitiveInfo()V
    .registers 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->readSessionInfo()V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->readAccountInfo()V

    .line 207
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSSLServerAddress()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, sslURL:Ljava/lang/String;
    if-nez v0, :cond_22

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsSvc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSSLServerAddress(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 214
    :cond_22
    invoke-static {p0}, Lcom/sec/android/app/sns/util/SnsUtil;->initDebugKey(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method private invokeBroadcast(Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 14
    .parameter "data"

    .prologue
    .line 290
    const-string v0, "SNS_CONTENT_URI"

    .line 291
    .local v0, CONTENT_URI:Ljava/lang/String;
    const-string v2, "SNS_RESULT"

    .line 292
    .local v2, RESULT:Ljava/lang/String;
    const-string v1, "SNS_NO_DATA"

    .line 293
    .local v1, NO_DATA:Ljava/lang/String;
    const-string v3, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    .line 295
    .local v3, SNS_BROADCAST_PERMISSION:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getReqType()I

    move-result v7

    .line 296
    .local v7, reqType:I
    const/4 v8, 0x0

    .line 297
    .local v8, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 298
    .local v4, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 299
    .local v6, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 301
    .local v5, bResponseOnly:Z
    sparse-switch v7, :sswitch_data_14c

    .line 320
    const-string v10, "SnsSvc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invokeBroadcast : reqType("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-lez v7, :cond_117

    sget-object v9, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    aget-object v9, v9, v7

    :goto_26
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ") is NOT a broadcast type !!!"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_37
    return-void

    .line 303
    :sswitch_38
    const-string v4, "com.sec.android.app.sns.action.UPDATE_FRIEND"

    .line 304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/sec/android/app/sns/db/SnsDB$Friend;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 326
    :cond_5b
    :goto_5b
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "SNS_CONTENT_URI"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    const-string v9, "SNS_RESULT"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    const-string v9, "SNS_NO_DATA"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    const-string v9, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v6, v9}, Lcom/sec/android/app/sns/SnsSvc;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_11d

    .line 334
    const-string v9, "SnsSvc"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invokeBroadcast() : action = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], uri = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], result = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], bResponseOnly = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 308
    :sswitch_c6
    const-string v4, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/sec/android/app/sns/db/SnsDB$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 311
    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_5b

    .line 312
    const/4 v5, 0x1

    goto/16 :goto_5b

    .line 316
    :sswitch_f2
    const-string v4, "com.sec.android.app.sns.action.UPDATE_SCHEDULE"

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/sec/android/app/sns/db/SnsDB$Schedule;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 318
    goto/16 :goto_5b

    .line 320
    :cond_117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_26

    .line 338
    :cond_11d
    const-string v9, "SnsSvc"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invokeBroadcast() : result = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], bResponseOnly = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 301
    nop

    :sswitch_data_14c
    .sparse-switch
        0xe -> :sswitch_38
        0x13 -> :sswitch_c6
        0x15 -> :sswitch_c6
        0x24 -> :sswitch_f2
    .end sparse-switch
.end method

.method private invokeBroadcastForLogin(Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 11
    .parameter "data"

    .prologue
    .line 346
    const-string v0, "SNS_CONTENT_URI"

    .line 347
    .local v0, CONTENT_URI:Ljava/lang/String;
    const-string v1, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    .line 349
    .local v1, SNS_BROADCAST_PERMISSION:Ljava/lang/String;
    const-string v2, "com.sec.android.app.sns.action.LOGIN"

    .line 350
    .local v2, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 351
    .local v5, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 352
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v4

    .line 354
    .local v4, spType:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.sec.android.app.provider.sns/login/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 355
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "SNS_CONTENT_URI"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    const-string v6, "ServiceProvider"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v6, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/sns/SnsSvc;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 362
    const-string v6, "SnsSvc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invokeBroadcastForLogin() : action = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], uri = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_69
    return-void

    .line 364
    :cond_6a
    const-string v6, "SnsSvc"

    const-string v7, "invokeBroadcastForLogin()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method private invokeBroadcastForMessageRetrieveStart(Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 370
    const-string v0, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    .line 372
    .local v0, SNS_BROADCAST_PERMISSION:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v2

    .line 374
    .local v2, spType:I
    const/4 v1, 0x0

    .line 375
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.sns.action.START_MESSAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "ServiceProvider"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    const-string v3, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/sns/SnsSvc;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 380
    const-string v3, "SnsSvc"

    const-string v4, "invokeBroadcastForMessageRetrieveStart()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private invokeBroadcastForRetryLogin(Lcom/sec/android/app/sns/result/SnsResultData;)V
    .registers 9
    .parameter "data"

    .prologue
    .line 386
    const-string v0, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    .line 388
    .local v0, SNS_BROADCAST_PERMISSION:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSpType()I

    move-result v3

    .line 390
    .local v3, spType:I
    invoke-static {v3}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 391
    sget-object v4, Lcom/sec/android/app/sns/type/SnsIntentAction;->RETRY_LOGIN_ACTIONS:[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 392
    .local v1, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 393
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/sns/SnsSvc;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 396
    const-string v4, "SnsSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeBroadcastForRetryLogin() : action = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], spType = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_43
    return-void

    .line 400
    :cond_44
    const-string v4, "SnsSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeBroadcastForRetryLogin spType = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is invalid!!! ==============="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method


# virtual methods
.method public getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    return-object v0
.end method

.method public getPollingMgr()Lcom/sec/android/app/sns/polling/SnsPollingMgr;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mPollingMgr:Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    return-object v0
.end method

.method public getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;

    return-object v0
.end method

.method public getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;

    return-object v0
.end method

.method public invokeBroadCastForRemoveAllAccount()V
    .registers 5

    .prologue
    .line 418
    const-string v0, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    .line 420
    .local v0, SNS_BROADCAST_PERMISSION:Ljava/lang/String;
    const/4 v1, 0x0

    .line 421
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.sns.action.REMOVE_ALL_ACCOUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/SnsSvc;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 424
    const-string v2, "SnsSvc"

    const-string v3, "invokeBroadCastForRemoveAllAccount()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public invokeBroadcastForRemoveAccount(I)V
    .registers 7
    .parameter "spType"

    .prologue
    .line 406
    const-string v0, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    .line 408
    .local v0, SNS_BROADCAST_PERMISSION:Ljava/lang/String;
    const/4 v1, 0x0

    .line 409
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.sns.action.REMOVE_ACCOUNT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "ServiceProvider"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v2, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/SnsSvc;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 413
    const-string v2, "SnsSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeBroadcastForRemoveAccount() : spType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method public newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;
    .registers 4
    .parameter "data"
    .parameter "resultType"

    .prologue
    .line 236
    new-instance v0, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sns/SnsSvc$DoDeliverResponse;-><init>(Lcom/sec/android/app/sns/SnsSvc;Lcom/sec/android/app/sns/result/SnsResultData;I)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    sput-object p0, Lcom/sec/android/app/sns/SnsSvc;->mInstance:Lcom/sec/android/app/sns/SnsSvc;

    .line 75
    const-string v1, "SnsSvc"

    const-string v2, "SnsSvc : onCreate() Called !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/sns/SnsSvc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/app/sns/SnsSvc$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sns/SnsSvc$1;-><init>(Lcom/sec/android/app/sns/SnsSvc;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v1, Lcom/sec/android/app/sns/account/SnsAccountMgr;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;

    .line 183
    new-instance v1, Lcom/sec/android/app/sns/session/SnsSessionMgr;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/session/SnsSessionMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mSessionMgr:Lcom/sec/android/app/sns/session/SnsSessionMgr;

    .line 184
    new-instance v1, Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mPollingMgr:Lcom/sec/android/app/sns/polling/SnsPollingMgr;

    .line 185
    new-instance v1, Lcom/sec/android/app/sns/request/SnsRequestMgr;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mRequestMgr:Lcom/sec/android/app/sns/request/SnsRequestMgr;

    .line 186
    new-instance v1, Lcom/sec/android/app/sns/framework/SnsFramework;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/framework/SnsFramework;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mFramework:Lcom/sec/android/app/sns/framework/SnsFramework;

    .line 187
    new-instance v1, Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/sns/SnsSvc;->initPrimitiveInfo()V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_53

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mHttpMgr:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->initAndStart()V

    .line 198
    :cond_53
    iget-object v1, p0, Lcom/sec/android/app/sns/SnsSvc;->mAccountMgr:Lcom/sec/android/app/sns/account/SnsAccountMgr;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->validateAllAccounts(I)V

    .line 199
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 220
    return-void
.end method

.method public onTerminate()V
    .registers 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sns/SnsSvc;->mInstance:Lcom/sec/android/app/sns/SnsSvc;

    .line 225
    return-void
.end method

.method public setSnsService(Lcom/sec/android/app/sns/SnsService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sec/android/app/sns/SnsSvc;->mService:Lcom/sec/android/app/sns/SnsService;

    .line 438
    return-void
.end method
