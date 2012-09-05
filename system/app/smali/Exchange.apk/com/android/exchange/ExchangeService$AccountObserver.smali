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
    .registers 15
    .parameter
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    .line 1662
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 1663
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1658
    iput-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 1660
    iput-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 1665
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1666
    .local v2, context:Landroid/content/Context;
    sget-object v6, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v6

    .line 1667
    :try_start_11
    const-string v5, "accountobserver contructor"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1668
    sget-object v5, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    #calls: Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    invoke-static {v2, v5}, Lcom/android/exchange/ExchangeService;->access$1200(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    .line 1670
    sget-object v5, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1677
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "accountKey =? AND type =?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x44

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v5, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1684
    .local v1, cnt:I
    if-nez v1, :cond_21

    .line 1685
    const-string v5, "Adding __eas mailbox"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1686
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v7, v8}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(J)V

    goto :goto_21

    .line 1689
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #cnt:I
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_11 .. :try_end_59} :catchall_57

    throw v5

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5a
    :try_start_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 1693
    :try_start_5b
    new-instance v5, Lcom/android/exchange/ExchangeService$AccountObserver$1;

    invoke-direct {v5, p0, p1}, Lcom/android/exchange/ExchangeService$AccountObserver$1;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;Lcom/android/exchange/ExchangeService;)V

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_63} :catch_64

    .line 1723
    :goto_63
    return-void

    .line 1720
    :catch_64
    move-exception v3

    .line 1721
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method static synthetic access$1300(Lcom/android/exchange/ExchangeService$AccountObserver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private addAccountMailbox(J)V
    .registers 8
    .parameter "acctId"

    .prologue
    .line 1972
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1973
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 1974
    .local v1, main:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-string v2, "__eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1975
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

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 1976
    if-eqz v0, :cond_30

    .line 1977
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1980
    :cond_30
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 1981
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 1982
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 1983
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1986
    return-void
.end method

.method private onAccountChanged()V
    .registers 21

    .prologue
    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 1808
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 1813
    .local v11, context:Landroid/content/Context;
    new-instance v2, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v2}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    #calls: Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    invoke-static {v11, v2}, Lcom/android/exchange/ExchangeService;->access$1200(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v12

    .line 1817
    .local v12, currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    if-nez v12, :cond_1c

    .line 1818
    const-string v2, "onAccountChanged(): empty accounts list was returned from collectEasAccounts()! Exit immediately."

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1960
    :goto_1b
    return-void

    .line 1823
    :cond_1c
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_63

    .line 1824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccountChanged(): currentAccounts size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService$AccountList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1826
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccountChanged():  current accounts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_3e

    .line 1829
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_63
    sget-object v17, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v17

    .line 1834
    :try_start_66
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v2, :cond_74

    .line 1835
    const-string v2, "!!! EAS ExchangeService  -----------  Quit onAccountChanged() : null INSTANCE "

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1836
    monitor-exit v17

    goto :goto_1b

    .line 1956
    :catchall_71
    move-exception v2

    monitor-exit v17
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_71

    throw v2

    .line 1840
    :cond_74
    :try_start_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccountChanged(): mAccountList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService$AccountList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1841
    sget-object v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_96
    :goto_96
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1844
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v2, v3}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z
    :try_end_a7
    .catchall {:try_start_74 .. :try_end_a7} :catchall_71

    move-result v2

    if-nez v2, :cond_b4

    .line 1846
    :try_start_aa
    new-instance v2, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v2, v11}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;->resetNewMessageCount(J)V
    :try_end_b4
    .catchall {:try_start_aa .. :try_end_b4} :catchall_71
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_b4} :catch_201

    .line 1851
    :cond_b4
    :goto_b4
    :try_start_b4
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_f5

    const/4 v9, 0x1

    .line 1855
    .local v9, accountIncomplete:Z
    :goto_bb
    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v2, v3}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v2

    if-nez v2, :cond_f7

    if-nez v9, :cond_f7

    .line 1857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->access$1000(Lcom/android/exchange/ExchangeService;JZ)V

    .line 1862
    new-instance v10, Landroid/accounts/Account;

    iget-object v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-direct {v10, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    .local v10, acct:Landroid/accounts/Account;
    const-string v2, "onAccountChanged(), removing from acount manger db"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v3, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1866
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 1867
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_96

    .line 1851
    .end local v9           #accountIncomplete:Z
    .end local v10           #acct:Landroid/accounts/Account;
    :cond_f5
    const/4 v9, 0x0

    goto :goto_bb

    .line 1870
    .restart local v9       #accountIncomplete:Z
    :cond_f7
    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v16

    .line 1871
    .local v16, updatedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v16, :cond_96

    .line 1873
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v2, v3, :cond_10f

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    if-eq v2, v3, :cond_148

    .line 1878
    :cond_10f
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1879
    .local v13, cv:Landroid/content/ContentValues;
    const-string v2, "syncInterval"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type = 0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->access$1000(Lcom/android/exchange/ExchangeService;JZ)V

    .line 1895
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_148
    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    if-ne v2, v3, :cond_160

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    if-ne v2, v3, :cond_160

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCalendarSyncLookback:I

    if-eq v2, v3, :cond_17e

    .line 1909
    :cond_160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/exchange/ExchangeService;->setEasSyncIntervals(Landroid/content/Context;Ljava/lang/String;IJZ)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->access$1000(Lcom/android/exchange/ExchangeService;JZ)V

    .line 1921
    :cond_17e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/exchange/ExchangeService$AccountObserver;->onSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-eqz v2, :cond_19c

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->onSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_19c

    .line 1922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 1927
    :cond_19c
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 1928
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 1929
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto/16 :goto_96

    .line 1933
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #accountIncomplete:Z
    .end local v16           #updatedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1b0
    invoke-virtual {v12}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1b4
    :goto_1b4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ef

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1936
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v2

    if-nez v2, :cond_1b4

    .line 1938
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v14

    .line 1940
    .local v14, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v14, :cond_1b4

    .line 1942
    iput-object v14, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 1947
    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(J)V

    .line 1948
    sget-object v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2, v8}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 1949
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 1950
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_1b4

    .line 1954
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v14           #ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_1ef
    sget-object v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService$AccountList;->clear()V

    .line 1955
    sget-object v2, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v2, v12}, Lcom/android/exchange/ExchangeService$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 1956
    monitor-exit v17
    :try_end_1fa
    .catchall {:try_start_b4 .. :try_end_1fa} :catchall_71

    .line 1959
    const-string v2, "account changed"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1847
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_201
    move-exception v2

    goto/16 :goto_b4
.end method

.method private onSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 3
    .parameter "account"

    .prologue
    .line 1803
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getAccountKeyWhere()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1759
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_3f

    .line 1760
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1762
    .local v1, first:Z
    sget-object v5, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v5

    .line 1763
    :try_start_f
    sget-object v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v4}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1764
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_31

    .line 1765
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1769
    :goto_28
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1771
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v4

    .line 1767
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_31
    const/4 v1, 0x0

    goto :goto_28

    .line 1771
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_33
    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2e

    .line 1772
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1773
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 1775
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_3f
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getSyncableEasMailboxWhere()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1732
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_3f

    .line 1733
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type=4 or type=68 or syncInterval!=-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1734
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1735
    .local v1, first:Z
    sget-object v5, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v5

    .line 1736
    :try_start_f
    sget-object v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v4}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1737
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_31

    .line 1738
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1742
    :goto_28
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1744
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v4

    .line 1740
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_31
    const/4 v1, 0x0

    goto :goto_28

    .line 1744
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_33
    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2e

    .line 1745
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 1748
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_3f
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 1964
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/ExchangeService$AccountObserver$2;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$AccountObserver$2;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    const-string v2, "Account Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1969
    return-void
.end method
