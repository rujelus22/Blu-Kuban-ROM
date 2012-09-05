.class public abstract Lcom/android/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;,
        Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;
    }
.end annotation


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field public mAccountManagerAccount:Landroid/accounts/Account;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field public mMoreAvailableSyncHBI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 6
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreAvailableSyncHBI:Ljava/util/HashMap;

    .line 127
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 128
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 129
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 130
    iget-object v0, p2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 131
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2a

    .line 132
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 134
    :cond_2a
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreAvailableSyncHBI:Ljava/util/HashMap;

    .line 116
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 117
    iget-object v0, p1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 118
    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 120
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2c

    .line 121
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 123
    :cond_2c
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    return-void
.end method

.method private applyAndCopyResults(Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V
    .registers 8
    .parameter "authority"
    .parameter
    .parameter "result"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    .local p2, mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 378
    :goto_6
    return-void

    .line 372
    :cond_7
    :try_start_7
    invoke-direct {p0, p1, p2, p4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 374
    .local v0, miniResult:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_10
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    .line 375
    .end local v0           #miniResult:[Landroid/content/ContentProviderResult;
    :catch_11
    move-exception v1

    goto :goto_6
.end method

.method private applyBatch(Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    .registers 8
    .parameter "authority"
    .parameter
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;I)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 354
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 355
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentProviderResult;

    .line 361
    :goto_9
    return-object v3

    .line 357
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, cpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 359
    .local v2, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    invoke-static {v2, p3}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 361
    .end local v2           #op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_27
    invoke-direct {p0, p1, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->execute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    goto :goto_9
.end method

.method private execute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 10
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 319
    :try_start_8
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 320
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 321
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 322
    .local v0, result:[Landroid/content/ContentProviderResult;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 323
    monitor-exit v2

    .line 327
    .end local v0           #result:[Landroid/content/ContentProviderResult;
    :goto_3c
    return-object v0

    .line 326
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_41

    .line 327
    new-array v0, v3, [Landroid/content/ContentProviderResult;

    goto :goto_3c

    .line 326
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method static operationToContentProviderOperation(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;
    .registers 5
    .parameter "op"
    .parameter "offset"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    if-eqz v1, :cond_7

    .line 337
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 345
    :goto_6
    return-object v1

    .line 338
    :cond_7
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v1, :cond_13

    .line 339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Operation must have CPO.Builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_13
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 342
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 343
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 345
    :cond_21
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_6
.end method


# virtual methods
.method protected addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    .line 445
    .local v0, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 446
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Reset SyncKey to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 188
    :cond_17
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public incrementChangeCount()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 143
    return-void
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method protected safeExecute(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 20
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v13, "Try to execute "

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " CPO\'s for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    const/4 v11, 0x0

    .line 398
    .local v11, result:[Landroid/content/ContentProviderResult;
    const/4 v12, 0x0

    :try_start_24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    :try_end_2d
    .catch Landroid/os/TransactionTooLargeException; {:try_start_24 .. :try_end_2d} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_aa
    .catch Landroid/content/OperationApplicationException; {:try_start_24 .. :try_end_2d} :catch_ac

    move-result-object v12

    .line 436
    :goto_2e
    return-object v12

    .line 399
    :catch_2f
    move-exception v4

    .line 401
    .local v4, e:Landroid/os/TransactionTooLargeException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Transaction too large; spliting!"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v7, mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v11, v12, [Landroid/content/ContentProviderResult;

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, count:I
    const/4 v9, 0x0

    .line 407
    .local v9, offset:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 408
    .local v10, op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    iget-boolean v12, v10, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-eqz v12, :cond_89

    .line 410
    :try_start_60
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v13, "Try mini-batch of "

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v15, " CPO\'s"

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyAndCopyResults(Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_79
    .catch Landroid/os/TransactionTooLargeException; {:try_start_60 .. :try_end_79} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_79} :catch_87

    .line 415
    add-int/lit8 v9, v3, 0x1

    .line 424
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 416
    :catch_7e
    move-exception v5

    .line 417
    .local v5, e1:Landroid/os/TransactionTooLargeException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Can\'t send transaction; sync stopped."

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 418
    .end local v5           #e1:Landroid/os/TransactionTooLargeException;
    :catch_87
    move-exception v5

    .line 419
    .local v5, e1:Landroid/os/RemoteException;
    throw v5

    .line 422
    .end local v5           #e1:Landroid/os/RemoteException;
    :cond_89
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 427
    .end local v10           #op:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_8d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 428
    .local v8, miniSize:I
    if-lez v8, :cond_a8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_a1

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-boolean v12, v12, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-nez v12, :cond_a8

    .line 429
    :cond_a1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->applyAndCopyResults(Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .end local v3           #count:I
    .end local v4           #e:Landroid/os/TransactionTooLargeException;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mini:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    .end local v8           #miniSize:I
    .end local v9           #offset:I
    :cond_a8
    :goto_a8
    move-object v12, v11

    .line 436
    goto :goto_2e

    .line 431
    :catch_aa
    move-exception v4

    .line 432
    .local v4, e:Landroid/os/RemoteException;
    throw v4

    .line 433
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_ac
    move-exception v12

    goto :goto_a8
.end method

.method public abstract sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setIntervalPing()V
    .registers 11

    .prologue
    .line 197
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 201
    .local v3, mailboxUpdated:Z
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_3a

    .line 202
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v7, -0x3

    iput v7, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 203
    const-string v6, "syncInterval"

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const/4 v3, 0x1

    .line 221
    :goto_20
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 222
    if-eqz v3, :cond_38

    .line 223
    :try_start_29
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v6

    if-nez v6, :cond_38

    .line 224
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 227
    :cond_38
    monitor-exit v7
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_de

    .line 228
    return-void

    .line 206
    :cond_3a
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 207
    .local v0, acctInterval:I
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 208
    .local v2, interval:I
    const-string v6, "AbstractSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> AccountInterval["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] MailboxInterval["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 213
    .local v4, now:J
    const-string v6, "AbstractSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> oldSynctime["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] newSynctime["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] delta["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncTime:J

    .line 217
    const-string v6, "syncTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const/4 v3, 0x1

    goto/16 :goto_20

    .line 227
    .end local v0           #acctInterval:I
    .end local v2           #interval:I
    .end local v4           #now:J
    :catchall_de
    move-exception v6

    :try_start_df
    monitor-exit v7
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v6
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .registers 4
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .registers 3
    .parameter "strings"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public abstract wipe()V
.end method
