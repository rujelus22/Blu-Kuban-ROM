.class public Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;
.super Landroid/os/AsyncTask;
.source "BulkSessionKeyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;,
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeyVolumeQuery;,
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;,
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;,
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBulkUpradeEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mFetchService:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOffline:Z

.field private final mListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

.field private mNumFailed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;)V
    .registers 6
    .parameter "context"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;",
            "Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "missing fetchService"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mFetchService:Ljava/util/concurrent/Future;

    .line 76
    const-string v0, "missing listener"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    .line 78
    iput v1, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    .line 79
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z

    .line 80
    return-void
.end method

.method private findAccountsWithKeys()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 184
    .local v7, accounts:Ljava/util/Set;,"Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 187
    .local v8, cursor:Landroid/database/Cursor;
    :goto_19
    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 188
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, accountName:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, v6, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_2f

    goto :goto_19

    .line 192
    .end local v6           #accountName:Ljava/lang/String;
    :catchall_2f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_34
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    return-object v7
.end method

.method private getStaleKeyInfo(Landroid/accounts/Account;)Ljava/util/List;
    .registers 12
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    const-string v9, "account_name=? AND root_key_version!= ?"

    .line 157
    .local v9, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 160
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeyVolumeQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND root_key_version!= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_26
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 167
    .local v7, info:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;>;"
    :goto_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 168
    new-instance v8, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;

    invoke-direct {v8}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;-><init>()V

    .line 169
    .local v8, keyVolume:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;->sessionKeyId:J

    .line 170
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;->volumeId:Ljava/lang/String;

    .line 171
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_47

    goto :goto_2a

    .line 175
    .end local v7           #info:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;>;"
    .end local v8           #keyVolume:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;
    :catchall_47
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #info:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;>;"
    :cond_4c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7
.end method

.method private removeStaleKeysAndContents(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    .registers 10
    .parameter "account"
    .parameter
    .parameter "keyFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;",
            ">;",
            "Lcom/google/android/apps/books/util/SessionKeyFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, staleKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;>;"
    const-string v3, "BulkSessionKeyUpgrTask"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 142
    const-string v3, "BulkSessionKeyUpgrTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keys from account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;

    .line 145
    .local v1, info:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;
    iget-wide v3, v1, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;->sessionKeyId:J

    invoke-static {v3, v4}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 146
    .local v2, sessionKeyUri:Landroid/net/Uri;
    iget-object v3, v1, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;->volumeId:Ljava/lang/String;

    invoke-virtual {p3, v2, p1, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_39

    .line 148
    .end local v1           #info:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;
    .end local v2           #sessionKeyUri:Landroid/net/Uri;
    :cond_51
    return-void
.end method

.method private sendRequest(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    .registers 9
    .parameter "account"
    .parameter
    .parameter "keyFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/apps/books/util/SessionKeyFactory;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
        }
    .end annotation

    .prologue
    .line 231
    .local p2, sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    :cond_6
    :goto_6
    return-void

    .line 233
    :cond_7
    const/4 v1, 0x0

    .line 235
    .local v1, numFailed:I
    :try_start_8
    invoke-virtual {p3, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestSessionKeyUpgrade(Landroid/accounts/Account;Ljava/util/List;)I
    :try_end_b
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_8 .. :try_end_b} :catch_5c
    .catch Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException; {:try_start_8 .. :try_end_b} :catch_5e
    .catch Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException; {:try_start_8 .. :try_end_b} :catch_7c
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_b} :catch_6a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_73

    move-result v1

    .line 256
    :goto_c
    const-string v2, "BulkSessionKeyUpgrTask"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 257
    const-string v2, "BulkSessionKeyUpgrTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Batch updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-lez v1, :cond_6

    .line 259
    const-string v2, "BulkSessionKeyUpgrTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Batch update failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keys in account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 236
    :catch_5c
    move-exception v0

    .line 237
    .local v0, e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    throw v0

    .line 238
    .end local v0           #e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    :catch_5e
    move-exception v0

    .line 242
    .local v0, e:Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 243
    iget v2, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    goto :goto_c

    .line 247
    .end local v0           #e:Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;
    :catch_6a
    move-exception v0

    .line 250
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem during K_s handshake"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 251
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :catch_73
    move-exception v0

    .line 253
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BulkSessionKeyUpgrTask"

    const-string v3, "Error in bulk session key upgrade."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :catch_7c
    move-exception v2

    goto :goto_c
.end method

.method private upgradeStaleKeys(Landroid/accounts/Account;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    .registers 21
    .parameter "account"
    .parameter "keyFactory"

    .prologue
    .line 200
    const-string v13, "account_name=? AND root_key_version!= ?"

    .line 202
    .local v13, selection:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 204
    .local v8, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "account_name=? AND root_key_version!= ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 209
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_2e
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 210
    .local v17, sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :cond_32
    :goto_32
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 211
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 212
    .local v14, sessionKeyId:J
    invoke-static {v14, v15}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v16

    .line 213
    .local v16, sessionKeyUri:Landroid/net/Uri;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->maxSessionKeyUpgradesPerRequest(Landroid/content/Context;)I

    move-result v12

    .line 215
    .local v12, maxKeys:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v12, :cond_32

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->sendRequest(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V

    .line 217
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V
    :try_end_64
    .catchall {:try_start_2e .. :try_end_64} :catchall_7e
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_2e .. :try_end_64} :catch_65

    goto :goto_32

    .line 221
    .end local v12           #maxKeys:I
    .end local v14           #sessionKeyId:J
    .end local v16           #sessionKeyUri:Landroid/net/Uri;
    .end local v17           #sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :catch_65
    move-exception v11

    .line 222
    .local v11, e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    const/4 v4, 0x1

    :try_start_67
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_7e

    .line 224
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    .end local v11           #e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    :goto_6e
    return-void

    .line 220
    .restart local v17       #sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :cond_6f
    :try_start_6f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->sendRequest(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_7e
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_6f .. :try_end_7a} :catch_65

    .line 224
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_6e

    .end local v17           #sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_7e
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14
    .parameter "voids"

    .prologue
    const/4 v11, 0x0

    .line 101
    :try_start_1
    iget-object v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->shouldBulkUpgradeSessionKeys(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mBulkUpradeEnabled:Z

    .line 102
    iget-boolean v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mBulkUpradeEnabled:Z

    if-nez v9, :cond_e

    .line 136
    :cond_d
    return-object v11

    .line 105
    :cond_e
    iget-object v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mFetchService:Ljava/util/concurrent/Future;

    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/service/ContentFetchService;

    .line 106
    .local v4, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-virtual {v4}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v7

    .line 107
    .local v7, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    iget-object v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 108
    .local v1, accountManager:Landroid/accounts/AccountManager;
    const-string v9, "com.google"

    invoke-virtual {v1, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 109
    .local v2, accounts:[Landroid/accounts/Account;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->findAccountsWithKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 113
    .local v0, account:Landroid/accounts/Account;
    const/4 v6, 0x0

    .line 114
    .local v6, isActiveAccount:Z
    invoke-static {v2, v0}, Lcom/google/android/apps/books/util/AccountUtils;->findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v9

    if-eqz v9, :cond_45

    .line 115
    invoke-direct {p0, v0, v7}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->upgradeStaleKeys(Landroid/accounts/Account;Lcom/google/android/apps/books/util/SessionKeyFactory;)V

    .line 116
    const/4 v6, 0x1

    .line 120
    :cond_45
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->getStaleKeyInfo(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v8

    .line 121
    .local v8, staleKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;>;"
    if-eqz v6, :cond_54

    .line 122
    iget v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    .line 126
    :cond_54
    iget-boolean v9, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z

    if-nez v9, :cond_2e

    .line 127
    invoke-direct {p0, v0, v8, v7}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->removeStaleKeysAndContents(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5b} :catch_5c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_5b} :catch_63

    goto :goto_2e

    .line 130
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountManager:Landroid/accounts/AccountManager;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v4           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isActiveAccount:Z
    .end local v7           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v8           #staleKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$KeyVolume;>;"
    :catch_5c
    move-exception v3

    .line 131
    .local v3, e:Ljava/lang/InterruptedException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 132
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_63
    move-exception v3

    .line 133
    .local v3, e:Ljava/util/concurrent/ExecutionException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mBulkUpradeEnabled:Z

    if-eqz v0, :cond_d

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z

    iget v2, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;->onFinished(ZI)V

    .line 269
    :cond_d
    return-void
.end method
