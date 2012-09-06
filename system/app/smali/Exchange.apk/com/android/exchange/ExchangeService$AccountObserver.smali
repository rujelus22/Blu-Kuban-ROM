.class Lcom/android/exchange/ExchangeService$AccountObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountObserver"
.end annotation


# instance fields
.field mEasAccountSelector:Ljava/lang/String;

.field mSyncableEasMailboxSelector:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
    .registers 13
    .parameter
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    .line 609
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 610
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 605
    iput-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 606
    iput-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 613
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 614
    .local v2, context:Landroid/content/Context;
    iget-object v6, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v6

    .line 616
    :try_start_11
    iget-object v5, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    #calls: Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    invoke-static {v2, v5}, Lcom/android/exchange/ExchangeService;->access$500(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_4c
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_11 .. :try_end_16} :catch_4f

    .line 622
    :try_start_16
    iget-object v5, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 623
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v5, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 625
    .local v1, cnt:I
    if-nez v1, :cond_1c

    .line 627
    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-direct {p0, v7, v8}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(J)V

    goto :goto_1c

    .line 630
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #cnt:I
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_4c
    move-exception v5

    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_4c

    throw v5

    .line 617
    :catch_4f
    move-exception v3

    .line 619
    .local v3, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :try_start_50
    monitor-exit v6

    .line 653
    .end local v3           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_51
    return-void

    .line 630
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4c

    .line 632
    new-instance v5, Lcom/android/exchange/ExchangeService$AccountObserver$1;

    invoke-direct {v5, p0, p1}, Lcom/android/exchange/ExchangeService$AccountObserver$1;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;Lcom/android/exchange/ExchangeService;)V

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_51
.end method

.method static synthetic access$600(Lcom/android/exchange/ExchangeService$AccountObserver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private addAccountMailbox(J)V
    .registers 8
    .parameter "acctId"

    .prologue
    .line 813
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 814
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 815
    .local v1, main:Lcom/android/emailcommon/provider/Mailbox;
    const-string v2, "__eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__eas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 817
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 818
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 819
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 820
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 821
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method private onAccountChanged()V
    .registers 21

    .prologue
    .line 707
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 708
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 712
    .local v4, context:Landroid/content/Context;
    new-instance v5, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v5}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V
    :try_end_10
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_0 .. :try_end_10} :catch_87

    .line 714
    .local v5, currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    :try_start_10
    #calls: Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->access$500(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    :try_end_13
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_10 .. :try_end_13} :catch_8e

    .line 719
    :try_start_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v13, v12, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v13
    :try_end_1a
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_13 .. :try_end_1a} :catch_87

    .line 720
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v12, v12, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_165

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Account;

    .line 721
    .local v2, account:Lcom/android/emailcommon/provider/Account;
    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_90

    const/4 v3, 0x1

    .line 725
    .local v3, accountIncomplete:Z
    :goto_37
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v5, v14, v15}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v12

    if-nez v12, :cond_c3

    if-nez v3, :cond_c3

    .line 727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Observer found deleted account: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 731
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 733
    .local v7, deletedAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v7, :cond_92

    .line 735
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account still in provider: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v5, v2}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    goto :goto_24

    .line 795
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v3           #accountIncomplete:Z
    .end local v7           #deletedAccount:Lcom/android/emailcommon/provider/Account;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_84
    move-exception v12

    monitor-exit v13
    :try_end_86
    .catchall {:try_start_1a .. :try_end_86} :catchall_84

    :try_start_86
    throw v12
    :try_end_87
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_86 .. :try_end_87} :catch_87

    .line 799
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    :catch_87
    move-exception v8

    .line 800
    .local v8, e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    const-string v12, "Observer failed; provider unavailable"

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 802
    .end local v8           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    :goto_8d
    return-void

    .line 715
    .restart local v4       #context:Landroid/content/Context;
    .restart local v5       #currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    :catch_8e
    move-exception v8

    .restart local v8       #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    goto :goto_8d

    .line 721
    .end local v8           #e:Lcom/android/emailcommon/provider/ProviderUnavailableException;
    .restart local v2       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_90
    const/4 v3, 0x0

    goto :goto_37

    .line 739
    .restart local v3       #accountIncomplete:Z
    .restart local v7       #deletedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_92
    :try_start_92
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account deletion confirmed: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/16 v16, 0x1

    move/from16 v0, v16

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v12, v14, v15, v0}, Lcom/android/exchange/ExchangeService;->access$400(Lcom/android/exchange/ExchangeService;JZ)V

    .line 741
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 742
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto/16 :goto_24

    .line 746
    .end local v7           #deletedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_c3
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v14, v15}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 748
    .local v11, updatedAccount:Lcom/android/emailcommon/provider/Account;
    if-eqz v11, :cond_24

    .line 749
    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    if-ne v12, v14, :cond_d7

    iget v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    if-eq v12, v14, :cond_137

    .line 753
    :cond_d7
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v6, cv:Landroid/content/ContentValues;
    const-string v12, "syncInterval"

    iget v14, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v14, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "accountKey=? and type = 0"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-wide v0, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v6, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " changed; stop syncs"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    const/16 v16, 0x1

    move/from16 v0, v16

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v12, v14, v15, v0}, Lcom/android/exchange/ExchangeService;->access$400(Lcom/android/exchange/ExchangeService;JZ)V

    .line 765
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v12, v2}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v12

    if-eqz v12, :cond_157

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v12, v11}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v12

    if-nez v12, :cond_157

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v15, 0x4

    invoke-virtual {v12, v14, v15, v2}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 771
    :cond_157
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 772
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 773
    iget v12, v11, Lcom/android/emailcommon/provider/Account;->mFlags:I

    iput v12, v2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto/16 :goto_24

    .line 777
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v3           #accountIncomplete:Z
    .end local v11           #updatedAccount:Lcom/android/emailcommon/provider/Account;
    :cond_165
    invoke-virtual {v5}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_169
    :goto_169
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Account;

    .line 778
    .restart local v2       #account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v12, v12, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v12, v14, v15}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v12

    if-nez v12, :cond_169

    .line 780
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v12, v14, v15}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 782
    .local v9, ha:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v9, :cond_169

    .line 783
    iput-object v9, v2, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 785
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Account observer found new account: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v2, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 786
    iget-wide v14, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(J)V

    .line 787
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v12, v12, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v12, v2}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/Account;)Z

    .line 788
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 789
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_169

    .line 793
    .end local v2           #account:Lcom/android/emailcommon/provider/Account;
    .end local v9           #ha:Lcom/android/emailcommon/provider/HostAuth;
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v12, v12, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService$AccountList;->clear()V

    .line 794
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v12, v12, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v12, v5}, Lcom/android/exchange/ExchangeService$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 795
    monitor-exit v13
    :try_end_1d7
    .catchall {:try_start_92 .. :try_end_1d7} :catchall_84

    .line 798
    :try_start_1d7
    const-string v12, "account changed"

    invoke-static {v12}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_1dc
    .catch Lcom/android/emailcommon/provider/ProviderUnavailableException; {:try_start_1d7 .. :try_end_1dc} :catch_87

    goto/16 :goto_8d
.end method


# virtual methods
.method public getAccountKeyWhere()Ljava/lang/String;
    .registers 9

    .prologue
    .line 686
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_43

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 689
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v5, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v5

    .line 690
    :try_start_11
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v4}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 691
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_35

    .line 692
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    :goto_2c
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 698
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw v4

    .line 694
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_35
    const/4 v1, 0x0

    goto :goto_2c

    .line 698
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_32

    .line 699
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 702
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_43
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getSyncableEasMailboxWhere()Ljava/lang/String;
    .registers 9

    .prologue
    .line 661
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_43

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type=4 or syncInterval!=-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 664
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v5, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v5

    .line 665
    :try_start_11
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v4}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 666
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_35

    .line 667
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    :goto_2c
    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 673
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw v4

    .line 669
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_35
    const/4 v1, 0x0

    goto :goto_2c

    .line 673
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_32

    .line 674
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 677
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_43
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 806
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/ExchangeService$AccountObserver$2;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$AccountObserver$2;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    const-string v2, "Account Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 810
    return-void
.end method
