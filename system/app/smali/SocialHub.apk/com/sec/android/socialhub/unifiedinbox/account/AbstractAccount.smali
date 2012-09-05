.class public abstract Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.super Ljava/lang/Object;
.source "AbstractAccount.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;,
        Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;
    }
.end annotation


# static fields
.field private static mAccountHandler:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;


# instance fields
.field protected Tag:Ljava/lang/String;

.field protected accountURI:Landroid/net/Uri;

.field protected ctx:Landroid/content/Context;

.field protected handle:Landroid/os/Handler;

.field protected mAccount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field protected mEmailSearcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

.field protected observer:Landroid/database/ContentObserver;

.field protected selection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountHandler:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractAccount"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractAccount"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    .line 89
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    .line 93
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountHandler:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .parameter "ctx"
    .parameter "uri"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;)V

    .line 100
    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->accountURI:Landroid/net/Uri;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4
    .parameter "ctx"
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 106
    iput-object p3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->selection:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->initialize()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .parameter "ctx"
    .parameter "uri"
    .parameter "selection"
    .parameter "handle"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 115
    iput-object p4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->handle:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->accountURI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p4}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerObserver(Landroid/net/Uri;Landroid/os/Handler;)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 119
    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountHandler:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    return-object v0
.end method

.method static synthetic access$100(ILandroid/os/Handler;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->sendMessageToHandler(ILandroid/os/Handler;)V

    return-void
.end method

.method private static sendMessageToHandler(ILandroid/os/Handler;)V
    .registers 6
    .parameter "token"
    .parameter "handler"

    .prologue
    .line 578
    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 580
    const-string v0, "AbstractAccount"

    const-string v1, "sendMessageToHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UinboxProvider : Seven Handler Remove Msg - token :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    :cond_23
    const-string v0, "AbstractAccount"

    const-string v1, "sendMessageToHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")  sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 585
    return-void
.end method


# virtual methods
.method public addAccountWizard(Ljava/util/ArrayList;)Z
    .registers 3
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
    .line 167
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isExistPackage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->unregisterObserver()V

    .line 129
    return-void
.end method

.method public abstract createAccount()V
.end method

.method public abstract drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
.end method

.method public getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .registers 4
    .parameter "id"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    return-object v0
.end method

.method public abstract getAppType()Ljava/lang/String;
.end method

.method public getHash()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNumberOfAccount()I
    .registers 7

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, ret:I
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 232
    :cond_d
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v3, "getNumberOfAccount()"

    const-string v4, "mAccount is null!!!! or size is 0!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 240
    .end local v0           #ret:I
    .local v1, ret:I
    :goto_17
    return v1

    .line 236
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_18
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v3, "getNumberOfAccount()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAccount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 240
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_17
.end method

.method public getOtherCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "selection"
    .parameter "projection"

    .prologue
    .line 428
    const/4 v6, 0x0

    .line 432
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "getOtherCursor()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->accountURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    if-eqz v6, :cond_30

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    :cond_30
    move-object v7, v6

    .line 445
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    :goto_31
    return-object v7

    .line 439
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_32
    move-exception v8

    .line 441
    .local v8, e:Ljava/lang/Exception;
    :try_start_33
    const-string v0, "UnifiedInbox"

    const-string v1, "AbstractAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCursor() : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_53

    move-object v7, v6

    .line 445
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_31

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_53
    move-exception v0

    move-object v7, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_31
.end method

.method public getOtherCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "selection"
    .parameter "projection"
    .parameter "order"

    .prologue
    .line 452
    const/4 v6, 0x0

    .line 456
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "getOtherCursor()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->accountURI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 460
    if-eqz v6, :cond_30

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    :cond_30
    move-object v7, v6

    .line 469
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    :goto_31
    return-object v7

    .line 463
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_32
    move-exception v8

    .line 465
    .local v8, e:Ljava/lang/Exception;
    :try_start_33
    const-string v0, "UnifiedInbox"

    const-string v1, "AbstractAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCursor() : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_53

    move-object v7, v6

    .line 469
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_31

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_53
    move-exception v0

    move-object v7, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_31
.end method

.method public getUinboxCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "selection"

    .prologue
    .line 403
    const/4 v6, 0x0

    .line 407
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "getUinboxCursor()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 411
    if-eqz v6, :cond_30

    .line 412
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    :cond_30
    move-object v7, v6

    .line 420
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    :goto_31
    return-object v7

    .line 414
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_32
    move-exception v8

    .line 416
    .local v8, e:Ljava/lang/Exception;
    :try_start_33
    const-string v0, "UnifiedInbox"

    const-string v1, "AbstractAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCursor() : Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_53

    move-object v7, v6

    .line 420
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_31

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_53
    move-exception v0

    move-object v7, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_31
.end method

.method public initialize()V
    .registers 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->loadAccount()V

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->createAccount()V

    .line 271
    return-void
.end method

.method public isExistPackage()Z
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected loadAccount()V
    .registers 22

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->selection:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getUinboxCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 332
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_1a

    .line 334
    const-string v10, "UnifiedInbox"

    const-string v18, "Abstract Account"

    const-string v19, "initialize() : Cursor is null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_19
    return-void

    .line 340
    :cond_1a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 341
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 343
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_c1

    .line 347
    :cond_32
    const/4 v10, 0x3

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, app:Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, account:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, email:Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 351
    .local v6, _new:I
    const/4 v10, 0x7

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 352
    .local v7, unread:I
    const/4 v10, 0x1

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 353
    .local v8, acc_id:I
    const/16 v10, 0x9

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, ur_name:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 355
    .local v17, real_id:I
    const/16 v10, 0xa

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 356
    .local v15, last_email:I
    const/16 v10, 0x8

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 357
    .local v16, presence:I
    const/16 v10, 0xd

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 358
    .local v11, displayName:Ljava/lang/String;
    const/16 v10, 0xe

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 360
    .local v12, is_eas:I
    if-ltz v8, :cond_99

    .line 362
    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 376
    .local v2, value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    move/from16 v0, v17

    iput v0, v2, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 377
    iput v15, v2, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    .line 378
    move/from16 v0, v16

    iput v0, v2, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->presence:I

    .line 380
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v2           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_99
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v18, "loadAccount()"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "id - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_be
    .catchall {:try_start_1a .. :try_end_be} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_be} :catch_c9

    move-result v10

    if-nez v10, :cond_32

    .line 393
    .end local v3           #app:Ljava/lang/String;
    .end local v4           #account:Ljava/lang/String;
    .end local v5           #email:Ljava/lang/String;
    .end local v6           #_new:I
    .end local v7           #unread:I
    .end local v8           #acc_id:I
    .end local v9           #ur_name:Ljava/lang/String;
    .end local v11           #displayName:Ljava/lang/String;
    .end local v12           #is_eas:I
    .end local v15           #last_email:I
    .end local v16           #presence:I
    .end local v17           #real_id:I
    :cond_c1
    if-eqz v13, :cond_c6

    .line 394
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_c6
    const/4 v13, 0x0

    .line 397
    goto/16 :goto_19

    .line 387
    :catch_c9
    move-exception v14

    .line 389
    .local v14, e:Ljava/lang/Exception;
    :try_start_ca
    const-string v10, "UnifiedInbox"

    const-string v18, "Abstract Account"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initialize() : Exception = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v10, v0, v1}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_ca .. :try_end_ec} :catchall_f4

    .line 393
    if-eqz v13, :cond_f1

    .line 394
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_f1
    const/4 v13, 0x0

    .line 397
    goto/16 :goto_19

    .line 393
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_f4
    move-exception v10

    if-eqz v13, :cond_fa

    .line 394
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_fa
    const/4 v13, 0x0

    throw v10
.end method

.method public abstract onClickCompose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
.end method

.method public abstract onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
.end method

.method public abstract onMessageUpdate()V
.end method

.method public onUpdate()V
    .registers 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v0, :cond_13

    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAppType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->notifyChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 140
    :cond_13
    return-void
.end method

.method public registerMessageObserver()V
    .registers 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "registerMessageObserver()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public registerObserver(Landroid/net/Uri;Landroid/os/Handler;)V
    .registers 6
    .parameter "uri"
    .parameter "h"

    .prologue
    .line 303
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->observer:Landroid/database/ContentObserver;

    .line 321
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->observer:Landroid/database/ContentObserver;

    if-eqz v0, :cond_17

    .line 322
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    :cond_17
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "registerObserver()"

    const-string v2, "registerObserver Completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public runUpdateEmailTask()V
    .registers 5

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    if-nez v1, :cond_b

    .line 508
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    .line 511
    :cond_b
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_27

    .line 513
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 514
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v2, "runUpdateEmailTask()"

    const-string v3, "PENDING"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_26
    return-void

    .line 516
    :cond_27
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_40

    .line 518
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v2, "runUpdateEmailTask()"

    const-string v3, "RUNNING"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_26

    .line 527
    :catch_3b
    move-exception v0

    .line 529
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_26

    .line 522
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :cond_40
    :try_start_40
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    .line 523
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mUpdateTask:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 524
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v2, "runUpdateEmailTask()"

    const-string v3, "FINISHED"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_40 .. :try_end_58} :catch_3b

    goto :goto_26
.end method

.method public unregisterMessageObserver()V
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "unregisterMessageObserver()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public unregisterObserver()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    return-void
.end method

.method public verifyMessage(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;IIIZ)V
    .registers 10
    .parameter "account"
    .parameter "lastEmail"
    .parameter "readState"
    .parameter "count"
    .parameter "is_im"

    .prologue
    .line 475
    iget v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    if-le p2, v0, :cond_4b

    .line 477
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "verifyMessage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newMessageRecv account id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", before/last e_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Email Mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    iput v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    .line 486
    iput p2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    .line 489
    :cond_4b
    iput p4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    .line 490
    return-void
.end method
