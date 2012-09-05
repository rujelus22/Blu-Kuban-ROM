.class public Lcom/google/android/apps/plus/content/EsAccountsData;
.super Ljava/lang/Object;
.source "EsAccountsData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accountsChanged(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-string v3, "EsAccountsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 75
    const-string v3, "EsAccountsData"

    const-string v4, "accountsChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->filterRemovedAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, removedAccount:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_18

    .line 82
    .end local v1           #removedAccount:Ljava/lang/String;
    :cond_28
    return-object v2
.end method

.method public static activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 9
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 317
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    .line 318
    .local v1, helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->createNewDatabase()V

    .line 320
    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 323
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "last_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v3, "circle_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v3, "people_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v3, "people_last_update_token"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 328
    const-string v3, "avatars_downloaded"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v3, "user_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string v3, "account_status"

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 334
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->activateAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public static declared-synchronized deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 345
    const-class v7, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v7

    :try_start_3
    const-string v6, "EsAccountsData"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 346
    const-string v6, "EsAccountsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deactivateAccount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_24
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_b5

    move-result-object v0

    .line 350
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_2c

    .line 394
    :cond_2a
    :goto_2a
    monitor-exit v7

    return-void

    .line 354
    :cond_2c
    :try_start_2c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 357
    .local v1, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v8

    if-ne v6, v8, :cond_7c

    .line 358
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 359
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 360
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "active"

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 364
    .local v4, handler:Landroid/os/Handler;
    new-instance v6, Lcom/google/android/apps/plus/content/EsAccountsData$1;

    invoke-direct {v6, p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v2, contentValues:Landroid/content/ContentValues;
    const-string v8, "account"

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "content://com.google.android.apps.plus.content.ApiProvider/account"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v2, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    .end local v2           #contentValues:Landroid/content/ContentValues;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #handler:Landroid/os/Handler;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_7c
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsNotificationData;->deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 381
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsProvider;->deleteDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 383
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 385
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->deletedAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 389
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/AvatarCache;->clear()V

    .line 391
    const-string v6, "EsAccountsData"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 392
    const-string v6, "EsAccountsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Account deactivated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_2c .. :try_end_b3} :catchall_b5

    goto/16 :goto_2a

    .line 345
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :catchall_b5
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static declared-synchronized deleteAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 288
    const-class v5, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v5

    :try_start_3
    const-string v4, "EsAccountsData"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 289
    const-string v4, "EsAccountsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_24
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_c6

    move-result-object v0

    .line 293
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_2c

    .line 308
    :goto_2a
    monitor-exit v5

    return-void

    .line 297
    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 298
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 299
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v1

    .line 300
    .local v1, accountIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".user_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".display_name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".contacts_sync"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".is_child"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".location_dialog"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    const-string v4, "contacts_clean"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c4
    .catchall {:try_start_2c .. :try_end_c4} :catchall_c6

    goto/16 :goto_2a

    .line 288
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #accountIndex:I
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :catchall_c6
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized filterRemovedAccounts(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-class v10, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v10

    :try_start_3
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->getAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 91
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v5, accountsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 93
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_14

    .line 90
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v5           #accountsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_26
    move-exception v9

    monitor-exit v10

    throw v9

    .line 96
    .restart local v4       #accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local v5       #accountsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_29
    :try_start_29
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v8, removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 98
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v9, "count"

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, accountCount:I
    const/4 v2, 0x0

    .local v2, accountIndex:I
    :goto_3a
    if-ge v2, v1, :cond_62

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".name"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, accountName:Ljava/lang/String;
    if-eqz v3, :cond_5f

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 102
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_29 .. :try_end_5f} :catchall_26

    .line 99
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 105
    .end local v3           #accountName:Ljava/lang/String;
    :cond_62
    monitor-exit v10

    return-object v8
.end method

.method private static getAccount(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 12
    .parameter "context"
    .parameter "accountIndex"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 203
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 204
    .local v7, prefs:Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 205
    .local v8, userId:J
    cmp-long v0, v8, v5

    if-eqz v0, :cond_86

    .line 206
    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".user_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".display_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".is_child"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;JLjava/lang/String;ZI)V

    .line 213
    :goto_85
    return-object v0

    :cond_86
    move-object v0, v4

    goto :goto_85
.end method

.method public static declared-synchronized getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 13
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 248
    const-class v9, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 249
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v2, "count"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 250
    .local v7, accountCount:I
    const/4 v6, 0x0

    .local v6, accountIndex:I
    :goto_10
    if-ge v6, v7, :cond_7e

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, accountName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 253
    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".user_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v8, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".is_child"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v8, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;JLjava/lang/String;ZI)V
    :try_end_7e
    .catchall {:try_start_4 .. :try_end_7e} :catchall_83

    .line 261
    .end local v1           #accountName:Ljava/lang/String;
    :cond_7e
    monitor-exit v9

    return-object v0

    .line 250
    .restart local v1       #accountName:Ljava/lang/String;
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 248
    .end local v1           #accountName:Ljava/lang/String;
    .end local v6           #accountIndex:I
    .end local v7           #accountCount:I
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :catchall_83
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static getAccountByUserId(Landroid/content/Context;J)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 15
    .parameter "context"
    .parameter "userId"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 223
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 224
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v0, "count"

    invoke-interface {v8, v0, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 225
    .local v7, accountCount:I
    const/4 v6, 0x0

    .local v6, accountIndex:I
    :goto_d
    if-ge v6, v7, :cond_7a

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".user_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v9, 0x0

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 227
    .local v2, accountUserId:J
    cmp-long v0, v2, p1

    if-nez v0, :cond_77

    .line 228
    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".name"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".display_name"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".is_child"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;JLjava/lang/String;ZI)V

    .line 236
    .end local v2           #accountUserId:J
    :goto_76
    return-object v0

    .line 225
    .restart local v2       #accountUserId:J
    :cond_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .end local v2           #accountUserId:J
    :cond_7a
    move-object v0, v4

    .line 236
    goto :goto_76
.end method

.method public static declared-synchronized getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 5
    .parameter "context"

    .prologue
    .line 184
    const-class v1, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "active"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccount(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    const-string v0, "accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static hasLoggedInThePast(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 195
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_active"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 593
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 594
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 595
    .local v0, accountIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".location_dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static declared-synchronized insertAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 21
    .parameter "context"
    .parameter "userId"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "isChild"

    .prologue
    .line 119
    const-class v14, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v14

    :try_start_3
    const-string v2, "EsAccountsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 120
    const-string v2, "EsAccountsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_26
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 124
    .local v13, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 126
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p0 .. p2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByUserId(Landroid/content/Context;J)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v12

    .line 127
    .local v12, existingAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v12, :cond_b7

    .line 128
    invoke-virtual {v12}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v8

    .line 137
    .local v8, accountIndex:I
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".display_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".is_child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p5

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v2, "active"

    invoke-interface {v11, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    const-string v2, "last_active"

    invoke-interface {v11, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v2, "account"

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.google.android.apps.plus.content.ApiProvider/account"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v10, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    new-instance v2, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;JLjava/lang/String;ZI)V
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_e0

    monitor-exit v14

    return-object v2

    .line 130
    .end local v8           #accountIndex:I
    .end local v10           #contentValues:Landroid/content/ContentValues;
    :cond_b7
    :try_start_b7
    const-string v2, "count"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 131
    .local v9, accountCount:I
    move v8, v9

    .line 132
    .restart local v8       #accountIndex:I
    add-int/lit8 v9, v9, 0x1

    .line 133
    const-string v2, "count"

    invoke-interface {v11, v2, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".user_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-interface {v11, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_de
    .catchall {:try_start_b7 .. :try_end_de} :catchall_e0

    goto/16 :goto_38

    .line 119
    .end local v8           #accountIndex:I
    .end local v9           #accountCount:I
    .end local v11           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #existingAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    :catchall_e0
    move-exception v2

    monitor-exit v14

    throw v2
.end method

.method public static isContactsSyncClean(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 566
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 567
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "contacts_clean"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 547
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 548
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 549
    .local v0, accountIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".contacts_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isContactsSyncPreferenceSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 538
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 539
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 540
    .local v0, accountIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".contacts_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static queryContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 456
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 459
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT contacts_sync_version  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_11

    move-result-wide v2

    long-to-int v2, v2

    .line 463
    :goto_10
    return v2

    .line 462
    :catch_11
    move-exception v1

    .line 463
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public static queryLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 421
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 424
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT last_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 428
    :goto_f
    return-wide v2

    .line 427
    :catch_10
    move-exception v1

    .line 428
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method public static queryNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 493
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 496
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    const-string v4, "SELECT push_notifications  FROM account_status"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_a .. :try_end_10} :catch_17

    move-result-wide v4

    long-to-int v4, v4

    if-ne v4, v2, :cond_15

    .line 500
    :goto_14
    return v2

    :cond_15
    move v2, v3

    .line 496
    goto :goto_14

    .line 499
    :catch_17
    move-exception v1

    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    move v2, v3

    .line 500
    goto :goto_14
.end method

.method public static saveAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "audienceBytes"

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 408
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 409
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "audience_data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 411
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public static saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 556
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 557
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 558
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "contacts_clean"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    return-void
.end method

.method public static saveContactsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "syncOn"

    .prologue
    .line 527
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 528
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 529
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 530
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".contacts_sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    return-void
.end method

.method public static saveContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "version"

    .prologue
    const/4 v4, 0x0

    .line 513
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 515
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "contacts_sync_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 520
    return-void
.end method

.method public static saveLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 439
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 442
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "last_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 447
    return-void
.end method

.method public static saveLocationDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "seen"

    .prologue
    .line 579
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 580
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 581
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 582
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".location_dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 584
    return-void
.end method

.method public static setNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "pushEnabled"

    .prologue
    const/4 v4, 0x0

    .line 476
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "push_notifications"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 481
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method public static syncSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x6

    .line 606
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 608
    .local v0, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getSettings()V

    .line 609
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 610
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 611
    const-string v1, "EsAccountsData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 612
    const-string v1, "EsAccountsData"

    const-string v2, "Cannot refresh settings"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 617
    const-string v1, "EsAccountsData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 618
    const-string v1, "EsAccountsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot refresh settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_55
    return-void
.end method

.method public static declared-synchronized updateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "displayName"
    .parameter "isChild"

    .prologue
    .line 164
    const-class v4, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v4

    :try_start_3
    const-string v3, "EsAccountsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 165
    const-string v3, "EsAccountsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAccount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_28
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 170
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 171
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".display_name"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".is_child"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_65

    .line 174
    monitor-exit v4

    return-void

    .line 164
    .end local v0           #accountIndex:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :catchall_65
    move-exception v3

    monitor-exit v4

    throw v3
.end method
