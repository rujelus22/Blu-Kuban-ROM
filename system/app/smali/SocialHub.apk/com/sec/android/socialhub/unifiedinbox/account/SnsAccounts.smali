.class public Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;
.super Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.source "SnsAccounts.java"


# static fields
.field public static final REGISTERED_ISP:[Ljava/lang/String;

.field public static final REGISTERED_ISP_TYPE_ID:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xc

    .line 61
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MySpace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Twitter"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LinkedIn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Skyrock"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Vz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mixi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "me2day"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KaiXin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RenRen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Qzone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Plurk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    return-void

    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .parameter "ctx"
    .parameter "handle"

    .prologue
    const/4 v3, 0x0

    .line 95
    const-string v2, "app=\'5_SNS\'"

    invoke-direct {p0, p1, v3, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 56
    iput-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    .line 97
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 101
    .local v1, am:Landroid/accounts/AccountManager;
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;)V

    .line 110
    .local v0, al:Landroid/accounts/OnAccountsUpdateListener;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doActionForSNS(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 313
    iget v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    .line 314
    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    .line 315
    iget-object v4, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    .line 316
    iget-object v5, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    .line 317
    iget-object v6, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    .line 318
    iget v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v1, :cond_57

    const-string v0, "inbox"

    .line 320
    :goto_11
    iget-object v7, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverIds:[Ljava/lang/String;

    .line 321
    iget-object v8, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverNames:[Ljava/lang/String;

    .line 323
    iget v9, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    .line 325
    const/4 v1, 0x0

    .line 327
    sparse-switch p3, :sswitch_data_9a

    .line 338
    :goto_1b
    const-string v10, "taISpType"

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v10, "taActorId"

    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v10, "taActorName"

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v10, "taTreadId"

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v5, "taReceiverNum"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v5, "taFolder"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 349
    const/4 v2, 0x2

    :try_start_3e
    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 351
    const-string v0, "taReceiverId"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v0, "taReceiverName"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v0, "reciver_count"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    :goto_53
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_3e .. :try_end_56} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_94

    .line 372
    :goto_56
    return-void

    .line 318
    :cond_57
    const-string v0, "outbox"

    goto :goto_11

    .line 330
    :sswitch_5a
    new-instance v1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    const-class v11, Lcom/sec/android/socialhub/activity/SocialHubMessageReplyActivity;

    invoke-direct {v1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1b

    .line 334
    :sswitch_64
    new-instance v1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    const-class v11, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-direct {v1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1b

    .line 357
    :cond_6e
    :try_start_6e
    const-string v0, "taReceiverId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v0, "taReceiverName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v0, "taMessageId"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v0, "reciver_count"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8e
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_6e .. :try_end_8e} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8e} :catch_94

    goto :goto_53

    .line 364
    :catch_8f
    move-exception v0

    .line 366
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_56

    .line 368
    :catch_94
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 327
    nop

    :sswitch_data_9a
    .sparse-switch
        0x2 -> :sswitch_5a
        0x7 -> :sswitch_64
    .end sparse-switch
.end method

.method public static findSpIndex(I)I
    .registers 4
    .parameter "sp"

    .prologue
    .line 486
    const/4 v1, -0x1

    .line 487
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_2
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 489
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v2, v2, v0

    if-ne p0, v2, :cond_f

    .line 491
    move v1, v0

    .line 495
    :cond_e
    return v1

    .line 487
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addAccountWizard(Ljava/util/ArrayList;)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 593
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 621
    :goto_9
    return v2

    .line 597
    :cond_a
    if-eqz p1, :cond_3b

    .line 599
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->getSupportedSnsAccountCount()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 601
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v4, 0x3

    const v5, 0x7f080078

    move v3, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 612
    .local v0, title:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->getAppType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocalISP(Ljava/lang/String;)Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;

    move-result-object v8

    .line 616
    .local v8, isp:Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;
    if-eqz v8, :cond_3b

    .line 617
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->getAppType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-interface {v8, v2, v3, p1, v4}, Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;->addSpList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .end local v0           #title:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v8           #isp:Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;
    :cond_3b
    move v2, v1

    .line 621
    goto :goto_9
.end method

.method public createAccount()V
    .registers 4

    .prologue
    .line 378
    const-string v0, "SnsAccounts"

    const-string v1, "createAccount()"

    const-string v2, "is called"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->onUpdate()V

    .line 380
    return-void
.end method

.method public drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "wrapper"

    .prologue
    const/4 v4, 0x0

    .line 652
    iget-object v3, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    iget-object v3, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getSnsIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 655
    iget-object v3, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 657
    .local v0, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v0, :cond_2b

    .line 659
    invoke-interface {v0, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getStringResource(I)I

    move-result v2

    .line 660
    .local v2, resource:I
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, ispName:Ljava/lang/String;
    iget-object v3, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    .end local v1           #ispName:Ljava/lang/String;
    .end local v2           #resource:I
    :cond_2b
    return-void
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 645
    const-string v0, "5_SNS"

    return-object v0
.end method

.method public getSupportedSnsAccountCount()I
    .registers 9

    .prologue
    .line 574
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 575
    .local v2, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v1, 0x0

    .line 576
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    array-length v4, v2

    if-ge v3, v4, :cond_22

    .line 578
    aget-object v4, v2, v3

    iget-object v0, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 579
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_1f

    const-string v4, "com.sec.android.app.snsaccount"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 581
    add-int/lit8 v1, v1, 0x1

    .line 576
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 585
    .end local v0           #accountType:Ljava/lang/String;
    :cond_22
    const-string v4, "SnsAccounts"

    const-string v5, "getSupportedSnsAccountCount()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return v1
.end method

.method public insertAccount(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 15
    .parameter "account"
    .parameter "value"

    .prologue
    .line 534
    iget-object v11, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    monitor-enter v11

    .line 536
    :try_start_3
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    const-string v1, "app"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "account_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 550
    .local v0, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const-string v1, "SnsAccounts"

    const-string v2, "insertAccount()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sp - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    iput v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 554
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    iget v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 557
    monitor-exit v11

    .line 558
    return-void

    .line 557
    .end local v0           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :catchall_6a
    move-exception v1

    monitor-exit v11
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public isExistPackage()Z
    .registers 2

    .prologue
    .line 627
    const/4 v0, 0x1

    return v0
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 117
    sparse-switch p1, :sswitch_data_a

    .line 135
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v0

    :sswitch_8
    return v0

    .line 117
    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x5 -> :sswitch_8
        0x7 -> :sswitch_8
        0x14 -> :sswitch_8
    .end sparse-switch
.end method

.method public onClickCompose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubSendMessageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 299
    const-string v1, "taISpType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    :try_start_f
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 309
    :goto_12
    return-void

    .line 305
    :catch_13
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 14
    .parameter "context"
    .parameter "api"
    .parameter "item"
    .parameter "menu_type"

    .prologue
    const/4 v5, 0x1

    .line 142
    packed-switch p4, :pswitch_data_86

    .line 190
    :cond_4
    :goto_4
    :pswitch_4
    return-void

    .line 146
    :pswitch_5
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->doActionForSNS(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V

    goto :goto_4

    .line 150
    :pswitch_9
    if-eqz p2, :cond_4

    .line 152
    if-eqz p3, :cond_4

    .line 154
    iget v0, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v7

    .line 157
    .local v7, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v0, 0x2

    :try_start_14
    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v0

    if-ne v0, v5, :cond_52

    .line 159
    const-string v1, "5_SNS"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v3, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v0, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v5, :cond_4f

    const-string v0, "inbox"

    :goto_32
    aput-object v0, v3, v4

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_49
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_14 .. :try_end_49} :catch_4a

    goto :goto_4

    .line 182
    :catch_4a
    move-exception v8

    .line 184
    .local v8, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v8}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v8           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_4f
    :try_start_4f
    const-string v0, "outbox"

    goto :goto_32

    .line 171
    :cond_52
    const-string v1, "5_SNS"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v3, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v0, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v5, :cond_82

    const-string v0, "inbox"

    :goto_6a
    aput-object v0, v3, v4

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v6, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    aput-object v6, v5, v0

    const/4 v6, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    goto :goto_4

    :cond_82
    const-string v0, "outbox"
    :try_end_84
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_4f .. :try_end_84} :catch_4a

    goto :goto_6a

    .line 142
    nop

    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    .line 202
    const-string v0, "content://com.sec.android.app.provider.sns/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 205
    const-string v1, "message/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    iget v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsKey:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 211
    :try_start_16
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sender_photo_url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "representative_receiver_url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "sender_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "representative_receiver_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_df
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_39} :catch_d1

    move-result-object v1

    .line 216
    if-eqz v1, :cond_12b

    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 219
    iget v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v8, :cond_c6

    .line 221
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_11a
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_4a} :catch_120

    move-result-object v2

    .line 222
    const/4 v0, 0x3

    :try_start_4c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_11a
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_125

    move-object v0, v2

    .line 237
    :goto_50
    if-eqz v1, :cond_55

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_55
    :goto_55
    iget v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 247
    const/4 v2, 0x2

    :try_start_5c
    invoke-interface {v1, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v1

    if-ne v1, v7, :cond_e6

    .line 249
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/socialhub/activity/SocialHubMessageCommentListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_6b
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_5c .. :try_end_6b} :catch_10a

    .line 252
    :try_start_6b
    const-string v2, "thread_id"

    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "type"

    iget v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_79
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_6b .. :try_end_79} :catch_114

    move-object v6, v1

    .line 265
    :goto_7a
    :try_start_7a
    const-string v1, "sp_type"

    iget v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "_id_origin"

    iget-object v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, "name"

    iget-object v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "m_subject"

    iget-object v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "sender_id"

    iget-object v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "photoUrl"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v0, "sns_receiver_count"

    iget v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v1, "taFolder"

    iget v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    if-ne v0, v7, :cond_107

    const-string v0, "inbox"

    :goto_b1
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v0, "receiveIds"

    iget-object v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mReceiverIds:[Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v0, "new"

    iget v1, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_c2
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7a .. :try_end_c2} :catch_10a

    .line 284
    :goto_c2
    :try_start_c2
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_10f

    .line 290
    :goto_c5
    return-void

    .line 226
    :cond_c6
    const/4 v0, 0x0

    :try_start_c7
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_11a
    .catch Ljava/lang/IllegalStateException; {:try_start_c7 .. :try_end_ca} :catch_120

    move-result-object v2

    .line 227
    const/4 v0, 0x2

    :try_start_cc
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_11a
    .catch Ljava/lang/IllegalStateException; {:try_start_cc .. :try_end_cf} :catch_125

    move-object v0, v2

    goto :goto_50

    .line 231
    :catch_d1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v6

    .line 233
    :goto_d5
    :try_start_d5
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_11d

    .line 237
    if-eqz v2, :cond_55

    .line 239
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_55

    .line 237
    :catchall_df
    move-exception v0

    :goto_e0
    if-eqz v6, :cond_e5

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_e5
    throw v0

    .line 257
    :cond_e6
    :try_start_e6
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_ef
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_e6 .. :try_end_ef} :catch_10a

    .line 259
    :try_start_ef
    const-string v2, "m_content"

    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "date"

    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v2, "type"

    iget v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_104
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_ef .. :try_end_104} :catch_117

    move-object v6, v1

    goto/16 :goto_7a

    .line 272
    :cond_107
    :try_start_107
    const-string v0, "outbox"
    :try_end_109
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_107 .. :try_end_109} :catch_10a

    goto :goto_b1

    .line 277
    :catch_10a
    move-exception v0

    .line 279
    :goto_10b
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_c2

    .line 286
    :catch_10f
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c5

    .line 277
    :catch_114
    move-exception v0

    move-object v6, v1

    goto :goto_10b

    :catch_117
    move-exception v0

    move-object v6, v1

    goto :goto_10b

    .line 237
    :catchall_11a
    move-exception v0

    move-object v6, v1

    goto :goto_e0

    :catchall_11d
    move-exception v0

    move-object v6, v2

    goto :goto_e0

    .line 231
    :catch_120
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_d5

    :catch_125
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_d5

    :cond_12b
    move-object v0, v6

    goto/16 :goto_50
.end method

.method public onMessageUpdate()V
    .registers 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->onUpdate()V

    .line 570
    return-void
.end method

.method public declared-synchronized onUpdate()V
    .registers 9

    .prologue
    .line 385
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, index:I
    :goto_2
    :try_start_2
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_110

    .line 387
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->hasSnsAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 389
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v6, v6, v2

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->getSnsAccount(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    .line 394
    .local v3, value:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b9

    .line 396
    const-string v4, "email"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, email:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .line 403
    .local v0, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    if-eqz v1, :cond_8b

    iget-object v4, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 405
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->updateAccount(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 406
    const-string v4, "SnsAccounts"

    const-string v5, "onUpdate()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "same sp["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but differrent email. so update it!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v0           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #value:Landroid/content/ContentValues;
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 410
    .restart local v0       #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .restart local v1       #email:Ljava/lang/String;
    .restart local v3       #value:Landroid/content/ContentValues;
    :cond_8b
    const-string v4, "SnsAccounts"

    const-string v5, "onUpdate()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "same sp["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", same email"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_2 .. :try_end_b5} :catchall_b6

    goto :goto_87

    .line 385
    .end local v0           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #value:Landroid/content/ContentValues;
    :catchall_b6
    move-exception v4

    monitor-exit p0

    throw v4

    .line 415
    .restart local v3       #value:Landroid/content/ContentValues;
    :cond_b9
    :try_start_b9
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->insertAccount(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 416
    const-string v4, "SnsAccounts"

    const-string v5, "onUpdate()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account is not in HashMap, sp["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 421
    .end local v3           #value:Landroid/content/ContentValues;
    :cond_e5
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->removeAccount(Ljava/lang/String;)V

    .line 422
    const-string v4, "SnsAccounts"

    const-string v5, "onUpdate()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removed sp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 426
    :cond_110
    const-string v4, "SnsAccounts"

    const-string v5, "onUpdate()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sns Account count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_133
    .catchall {:try_start_b9 .. :try_end_133} :catchall_b6

    .line 429
    monitor-exit p0

    return-void
.end method

.method public registerMessageObserver()V
    .registers 1

    .prologue
    .line 563
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 564
    return-void
.end method

.method public removeAccount(Ljava/lang/String;)V
    .registers 7
    .parameter "id"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    monitor-enter v1

    .line 517
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app=\'5_SNS\' and account_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    monitor-exit v1

    .line 520
    return-void

    .line 519
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public updateAccount(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 9
    .parameter "id"
    .parameter "value"

    .prologue
    .line 524
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    monitor-enter v2

    .line 526
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .line 527
    .local v0, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const-string v1, "email"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app=\'5_SNS\' and account_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, p2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 529
    monitor-exit v2

    .line 530
    return-void

    .line 529
    .end local v0           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method
