.class public Lcom/google/android/apps/plus/content/EsAccountsData;
.super Ljava/lang/Object;
.source "EsAccountsData.java"


# direct methods
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
    .line 100
    const-string v3, "EsAccountsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 101
    const-string v3, "EsAccountsData"

    const-string v4, "accountsChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->filterRemovedAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 105
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

    .line 106
    .local v1, removedAccount:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_18

    .line 108
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

    .line 377
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    .line 378
    .local v1, helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->createNewDatabase()V

    .line 380
    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 383
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "last_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v3, "last_stats_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v3, "last_contacted_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v3, "wipeout_stats"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v3, "circle_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v3, "people_sync_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v3, "people_last_update_token"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 391
    const-string v3, "avatars_downloaded"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v3, "user_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v3, "account_status"

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsPeopleData;->activateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 397
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->activateAccount(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->activateAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public static declared-synchronized deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/16 v10, 0x9

    .line 409
    const-class v7, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v7

    :try_start_5
    const-string v6, "EsAccountsData"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 410
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

    .line 413
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_d7

    move-result-object v0

    .line 414
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_2e

    .line 477
    :cond_2c
    :goto_2c
    monitor-exit v7

    return-void

    .line 418
    :cond_2e
    :try_start_2e
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->deactivateAccount(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->deactivateAccount(Ljava/lang/String;)V

    .line 421
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 422
    .local v1, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v8

    if-ne v6, v8, :cond_80

    .line 423
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 424
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 425
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "active_account"

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_da

    .line 427
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    :goto_58
    const-string v6, "streams"

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 434
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 435
    const-string v6, "circle"

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v10, :cond_df

    .line 437
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    :goto_6f
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    .local v4, handler:Landroid/os/Handler;
    new-instance v6, Lcom/google/android/apps/plus/content/EsAccountsData$1;

    invoke-direct {v6, p0, v0}, Lcom/google/android/apps/plus/content/EsAccountsData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #handler:Landroid/os/Handler;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_80
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/InstantUpload;->cancelAllUploads(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 453
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v6, v8}, Lcom/google/android/apps/plus/phone/InstantUpload;->enableInstantUpload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 454
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V

    .line 456
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 458
    .local v2, alarmManager:Landroid/app/AlarmManager;
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/google/android/apps/plus/phone/Intents;->getEventFinishedIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 460
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsNotificationData;->deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 462
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsProvider;->deleteDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 464
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 466
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 470
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/ImageCache;->clear()V

    .line 472
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->clear()V

    .line 474
    const-string v6, "EsAccountsData"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 475
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
    :try_end_d5
    .catchall {:try_start_2e .. :try_end_d5} :catchall_d7

    goto/16 :goto_2c

    .line 409
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    :catchall_d7
    move-exception v6

    monitor-exit v7

    throw v6

    .line 429
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v1       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    :cond_da
    :try_start_da
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_58

    .line 439
    :cond_df
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_e2
    .catchall {:try_start_da .. :try_end_e2} :catchall_d7

    goto :goto_6f
.end method

.method private static declared-synchronized deleteAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 343
    const-class v5, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v5

    :try_start_3
    const-string v4, "EsAccountsData"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 344
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

    .line 347
    :cond_24
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_123

    move-result-object v0

    .line 348
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_2c

    .line 368
    :goto_2a
    monitor-exit v5

    return-void

    .line 352
    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 353
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 354
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v1

    .line 355
    .local v1, accountIndex:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".gaia_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".account_name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
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

    .line 358
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

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".contacts_stats_sync"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
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

    .line 361
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

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".warm_welcome_ts"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".last_photo_notification_ts"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".seen_hangout_minor_warning"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    const-string v4, "contacts_clean"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    const-string v4, "contacts_stats_clean"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_121
    .catchall {:try_start_2c .. :try_end_121} :catchall_123

    goto/16 :goto_2a

    .line 343
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #accountIndex:I
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :catchall_123
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
    .line 116
    const-class v10, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v10

    :try_start_3
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->getAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 117
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
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

    .line 119
    .local v0, account:Landroid/accounts/Account;
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_14

    .line 116
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v5           #accountsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_26
    move-exception v9

    monitor-exit v10

    throw v9

    .line 122
    .restart local v4       #accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local v5       #accountsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_29
    :try_start_29
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v8, removedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 124
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v9, "count"

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, accountCount:I
    const/4 v2, 0x0

    .local v2, accountIndex:I
    :goto_3a
    if-ge v2, v1, :cond_62

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".account_name"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, accountName:Ljava/lang/String;
    if-eqz v3, :cond_5f

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 128
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_29 .. :try_end_5f} :catchall_26

    .line 125
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 131
    .end local v3           #accountName:Ljava/lang/String;
    :cond_62
    monitor-exit v10

    return-object v8
.end method

.method private static getAccount(Landroid/content/Context;IZ)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 10
    .parameter "context"
    .parameter "accountIndex"
    .parameter "unsafe"

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 288
    .local v6, prefs:Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".gaia_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, gaiaId:Ljava/lang/String;
    if-nez v2, :cond_20

    if-eqz p2, :cond_ad

    .line 290
    :cond_20
    const-string v0, "EsAccountsData"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 291
    const-string v4, "EsAccountsData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EsAccount.getAccount returning account for gaiaId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_ab

    const-string v0, "null"

    :goto_3a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".account_name"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, accountName:Ljava/lang/String;
    if-nez v1, :cond_75

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".name"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_75
    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".is_child"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 308
    .end local v1           #accountName:Ljava/lang/String;
    :goto_aa
    return-object v0

    :cond_ab
    move-object v0, v2

    .line 291
    goto :goto_3a

    .line 305
    :cond_ad
    const-string v0, "EsAccountsData"

    const/4 v4, 0x6

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 306
    const-string v0, "EsAccountsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EsAccount.getAccount failed to get account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ce
    move-object v0, v3

    .line 308
    goto :goto_aa
.end method

.method public static declared-synchronized getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 12
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 320
    const-class v8, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v8

    :try_start_4
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 321
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v2, "count"

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 322
    .local v6, accountCount:I
    const/4 v5, 0x0

    .local v5, accountIndex:I
    :goto_10
    if-ge v5, v6, :cond_7d

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, accountName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 325
    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gaia_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".display_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v7, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".is_child"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    invoke-interface {v7, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_7d
    .catchall {:try_start_4 .. :try_end_7d} :catchall_82

    .line 333
    .end local v1           #accountName:Ljava/lang/String;
    :cond_7d
    monitor-exit v8

    return-object v0

    .line 322
    .restart local v1       #accountName:Ljava/lang/String;
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 320
    .end local v1           #accountName:Ljava/lang/String;
    .end local v5           #accountIndex:I
    .end local v6           #accountCount:I
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    :catchall_82
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 213
    const-class v2, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "active_account"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1a

    move-result v0

    .line 214
    .local v0, index:I
    if-ne v0, v5, :cond_14

    .line 215
    const/4 v1, 0x0

    .line 218
    :goto_12
    monitor-exit v2

    return-object v1

    :cond_14
    const/4 v1, 0x0

    :try_start_15
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccount(Landroid/content/Context;IZ)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    move-result-object v1

    goto :goto_12

    .line 213
    .end local v0           #index:I
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getActiveAccountUnsafe(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 230
    const-class v3, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 231
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "active_account"

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 232
    .local v0, accountIndex:I
    if-ne v0, v5, :cond_1d

    .line 235
    const-string v2, "active"

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_23

    move-result v0

    .line 236
    if-ne v0, v5, :cond_1d

    .line 237
    const/4 v2, 0x0

    .line 240
    :goto_1b
    monitor-exit v3

    return-object v2

    :cond_1d
    const/4 v2, 0x1

    :try_start_1e
    invoke-static {p0, v0, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccount(Landroid/content/Context;IZ)Lcom/google/android/apps/plus/content/EsAccount;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    move-result-object v2

    goto :goto_1b

    .line 230
    .end local v0           #accountIndex:I
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 89
    const-string v0, "accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/util/ArrayList;
    .registers 13
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1188
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 1189
    .local v0, accountIndex:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".stream_views"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1190
    .local v2, circleIds:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1191
    .local v5, ids:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2f
    if-ge v3, v6, :cond_3f

    aget-object v4, v1, v3

    .line 1193
    .local v4, id:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3c

    .line 1194
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1198
    .end local v4           #id:Ljava/lang/String;
    :cond_3f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 1199
    const-string v9, "v.whatshot"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    const-string v9, "v.all.circles"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    const-string v9, "v.nearby"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_54
    return-object v7
.end method

.method public static hasLoggedInThePast(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 251
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
    .line 924
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 925
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 926
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

.method public static hasSeenMinorHangoutWarningDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 534
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 536
    .local v0, accountIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".seen_hangout_minor_warning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static hasSeenMinorPublicExtendedDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 895
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 896
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 897
    .local v0, accountIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".minor_public_extended_dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static hasSeenWarmWelcome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 9
    .parameter "context"
    .parameter "account"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 1074
    sget-object v3, Lcom/google/android/apps/plus/util/Property;->WARM_WELCOME_ON_LOGIN:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1080
    :cond_11
    :goto_11
    return v2

    .line 1078
    :cond_12
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1079
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 1080
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".warm_welcome_ts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public static hasVisitedOob(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 277
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "visited_oob"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized insertAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 18
    .parameter "context"
    .parameter "gaiaId"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "isChild"

    .prologue
    .line 145
    const-class v12, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v12

    :try_start_3
    const-string v1, "EsAccountsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 146
    const-string v1, "EsAccountsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_24
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 150
    .local v11, prefs:Landroid/content/SharedPreferences;
    const/4 v6, -0x1

    .line 151
    .local v6, accountIndex:I
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 152
    .local v7, accountCount:I
    const/4 v9, 0x0

    .local v9, index:I
    :goto_31
    if-ge v9, v7, :cond_54

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, name:Ljava/lang/String;
    if-eqz v10, :cond_d9

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 155
    move v6, v9

    .line 160
    .end local v10           #name:Ljava/lang/String;
    :cond_54
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 161
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, -0x1

    if-ne v6, v1, :cond_63

    .line 162
    move v6, v7

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    const-string v1, "count"

    invoke-interface {v8, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gaia_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".display_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v8, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".is_child"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p4

    invoke-interface {v8, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v1, "active_account"

    invoke-interface {v8, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v1, "last_active"

    invoke-interface {v8, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    new-instance v1, Lcom/google/android/apps/plus/content/EsAccount;

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_dd

    monitor-exit v12

    return-object v1

    .line 152
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v10       #name:Ljava/lang/String;
    :cond_d9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_31

    .line 145
    .end local v6           #accountIndex:I
    .end local v7           #accountCount:I
    .end local v9           #index:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #prefs:Landroid/content/SharedPreferences;
    :catchall_dd
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method public static isAccountUpgradeRequired(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 1026
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 1027
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 1033
    :cond_8
    :goto_8
    return v2

    .line 1032
    :cond_9
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1033
    .local v1, preferences:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".gaia_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".user_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    goto :goto_8
.end method

.method public static isContactsStatsSyncClean(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 868
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 869
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "contacts_stats_clean"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isContactsStatsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 849
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 850
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 851
    .local v0, accountIndex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".contacts_stats_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isContactsStatsSyncPreferenceSet(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 837
    .local v0, accountIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 838
    const/4 v2, 0x1

    .line 842
    :goto_8
    return v2

    .line 841
    :cond_9
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 842
    .local v1, prefs:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".contacts_stats_sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    goto :goto_8
.end method

.method public static isContactsStatsWipeoutNeeded(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 9
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 668
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 671
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    const-string v3, "SELECT wipeout_stats  FROM account_status"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_9 .. :try_end_f} :catch_18

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    const/4 v2, 0x1

    .line 675
    :cond_17
    :goto_17
    return v2

    .line 674
    :catch_18
    move-exception v1

    .line 675
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_17
.end method

.method public static isContactsSyncClean(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 816
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 817
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
    .line 797
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 798
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 799
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
    .line 784
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 785
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 786
    .local v0, accountIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 787
    const/4 v2, 0x1

    .line 790
    :goto_c
    return v2

    :cond_d
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

    goto :goto_c
.end method

.method public static onAccountUpgradeRequired(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "accountIndex"

    .prologue
    .line 1014
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1015
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1016
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gaia_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".user_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1018
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1019
    return-void
.end method

.method public static onUpgradeStreamViewList(Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "accountIndex"
    .parameter "circleIds"

    .prologue
    .line 1168
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1169
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1171
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    array-length v2, p2

    if-lez v2, :cond_27

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".stream_views"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1176
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".settings_synced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1178
    return-void
.end method

.method public static queryContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 702
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 705
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT contacts_sync_version  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_11

    move-result-wide v2

    long-to-int v2, v2

    .line 709
    :goto_10
    return v2

    .line 708
    :catch_11
    move-exception v1

    .line 709
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public static queryLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 632
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 635
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT last_contacted_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 639
    :goto_f
    return-wide v2

    .line 638
    :catch_10
    move-exception v1

    .line 639
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method public static queryLastStatsSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 597
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 600
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT last_stats_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 604
    :goto_f
    return-wide v2

    .line 603
    :catch_10
    move-exception v1

    .line 604
    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_f
.end method

.method public static queryLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 562
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 565
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8
    const-string v2, "SELECT last_sync_time  FROM account_status"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-wide v2

    .line 569
    :goto_f
    return-wide v2

    .line 568
    :catch_10
    move-exception v1

    .line 569
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

    .line 739
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 742
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

    .line 746
    :goto_14
    return v2

    :cond_15
    move v2, v3

    .line 742
    goto :goto_14

    .line 745
    :catch_17
    move-exception v1

    .local v1, noData:Landroid/database/sqlite/SQLiteDoneException;
    move v2, v3

    .line 746
    goto :goto_14
.end method

.method public static saveAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "audienceBytes"

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 491
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 492
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "audience_data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 494
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method public static saveContactsStatsSyncCleanupStatus(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 858
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 859
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 860
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "contacts_stats_clean"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 861
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 862
    return-void
.end method

.method public static saveContactsStatsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "syncOn"

    .prologue
    .line 825
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 826
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 827
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 828
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".contacts_stats_sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 830
    return-void
.end method

.method public static saveContactsStatsWipeoutNeeded(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "wipeout"

    .prologue
    const/4 v4, 0x0

    .line 687
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 690
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 691
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "wipeout_stats"

    if-eqz p2, :cond_20

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 693
    return-void

    .line 691
    :cond_20
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static saveContactsSyncCleanupStatus(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 806
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 807
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 808
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "contacts_clean"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 810
    return-void
.end method

.method public static saveContactsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "syncOn"

    .prologue
    .line 773
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 774
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 775
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 776
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

    .line 777
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 778
    return-void
.end method

.method public static saveContactsSyncVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "version"

    .prologue
    const/4 v4, 0x0

    .line 759
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 761
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 762
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "contacts_sync_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 766
    return-void
.end method

.method public static saveLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x0

    .line 651
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 654
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "last_contacted_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 659
    return-void
.end method

.method public static saveLastStatsSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 615
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 618
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "last_stats_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 620
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 623
    return-void
.end method

.method public static saveLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 580
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 583
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 584
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "last_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 585
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 588
    return-void
.end method

.method public static saveLocationDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "seen"

    .prologue
    .line 881
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 882
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 883
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 884
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

    .line 885
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 886
    return-void
.end method

.method public static saveMinorHangoutWarningDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "seen"

    .prologue
    .line 548
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 549
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 550
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 551
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".seen_hangout_minor_warning"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    return-void
.end method

.method public static saveMinorPublicExtendedDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "seen"

    .prologue
    .line 910
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 911
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 912
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 913
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".minor_public_extended_dialog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 914
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 915
    return-void
.end method

.method public static saveStreamViewList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Z)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "circleIds"
    .parameter "fromServer"

    .prologue
    .line 1127
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 1128
    .local v0, accountIndex:I
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1129
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1132
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p3, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".stream_views"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1134
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".stream_views"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1138
    :cond_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".settings_synced"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1139
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1141
    if-nez p3, :cond_75

    .line 1144
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1145
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/google/android/apps/plus/content/EsAccountsData$2;

    invoke-direct {v5, p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData$2;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    .end local v2           #handler:Landroid/os/Handler;
    :cond_75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1156
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/google/android/apps/plus/content/EsProvider;->CIRCLES_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1157
    return-void
.end method

.method public static setHasVisitedOob(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "visitedOob"

    .prologue
    .line 262
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 263
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "visited_oob"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public static setNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "pushEnabled"

    .prologue
    const/4 v4, 0x0

    .line 722
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 725
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 726
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "push_notifications"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 727
    const-string v2, "account_status"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method public static setWarmWelcomeTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "timestamp"
    .parameter "fromServer"

    .prologue
    .line 1095
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 1096
    .local v0, accountIndex:I
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1098
    .local v2, prefs:Landroid/content/SharedPreferences;
    if-eqz p4, :cond_28

    .line 1100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".warm_welcome_ts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1101
    .local v3, savedTs:J
    cmp-long v5, v3, p2

    if-lez v5, :cond_28

    .line 1114
    .end local v3           #savedTs:J
    :cond_27
    :goto_27
    return-void

    .line 1106
    :cond_28
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1107
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".warm_welcome_ts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".settings_synced"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1111
    if-nez p4, :cond_27

    .line 1112
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/EsService;->uploadChangedSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_27
.end method

.method public static syncSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x6

    .line 937
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 939
    .local v0, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getSettings()V

    .line 940
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 941
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 942
    const-string v1, "EsAccountsData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 943
    const-string v1, "EsAccountsData"

    const-string v2, "Cannot refresh settings"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 948
    const-string v1, "EsAccountsData"

    invoke-static {v1, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 949
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

    .line 952
    :cond_55
    return-void
.end method

.method public static declared-synchronized updateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "displayName"
    .parameter "isChild"

    .prologue
    .line 191
    const-class v4, Lcom/google/android/apps/plus/content/EsAccountsData;

    monitor-enter v4

    :try_start_3
    const-string v3, "EsAccountsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 192
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

    .line 195
    :cond_28
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 196
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 197
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 198
    .local v0, accountIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".gaia_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".account_name"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".display_name"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".is_child"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_95

    .line 203
    monitor-exit v4

    return-void

    .line 191
    .end local v0           #accountIndex:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :catchall_95
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static upgradeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1042
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1043
    .local v0, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getSettings()V

    .line 1044
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 1045
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1046
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Account upgrade failed"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1052
    :cond_23
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1053
    .local v9, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1054
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v7

    .line 1055
    .local v7, accountIndex:I
    const-string v1, "active_account"

    invoke-interface {v8, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1056
    const-string v1, "active"

    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".user_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1059
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1061
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1064
    return-void
.end method

.method public static uploadChangedSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 23
    .parameter "context"
    .parameter "account"

    .prologue
    .line 961
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 962
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v4

    .line 963
    .local v4, accountIndex:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".settings_synced"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 1007
    :cond_29
    :goto_29
    return-void

    .line 967
    :cond_2a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".warm_welcome_ts"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 968
    .local v16, warmWelcomeTimestamp:J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".stream_views"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 969
    .local v12, streamViewCircleIds:Ljava/lang/String;
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-nez v18, :cond_74

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_29

    .line 973
    :cond_74
    new-instance v13, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 975
    .local v13, tto:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v14

    .line 976
    .local v14, userPrefs:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_9b

    .line 977
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v11

    .line 978
    .local v11, promo:Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWwMainFlowAckTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 979
    invoke-virtual {v14, v11}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 982
    .end local v11           #promo:Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    :cond_9b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_fa

    .line 983
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 984
    .local v7, circleIds:[Ljava/lang/String;
    move-object v5, v7

    .local v5, arr$:[Ljava/lang/String;
    array-length v9, v5

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_ac
    if-ge v8, v9, :cond_fa

    aget-object v6, v5, v8

    .line 985
    .local v6, circleId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v15

    .line 986
    .local v15, view:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    const-string v18, "v.all.circles"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_cb

    .line 987
    sget-object v18, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ALL_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    .line 996
    :goto_c5
    invoke-virtual {v14, v15}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 984
    add-int/lit8 v8, v8, 0x1

    goto :goto_ac

    .line 988
    :cond_cb
    const-string v18, "v.nearby"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_dd

    .line 989
    sget-object v18, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->NEARBY:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    goto :goto_c5

    .line 990
    :cond_dd
    const-string v18, "v.whatshot"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ef

    .line 991
    sget-object v18, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    goto :goto_c5

    .line 993
    :cond_ef
    sget-object v18, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    .line 994
    invoke-virtual {v15, v6}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->setCircleId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    goto :goto_c5

    .line 1000
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #circleId:Ljava/lang/String;
    .end local v7           #circleIds:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v15           #view:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    :cond_fa
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)V

    .line 1002
    invoke-virtual {v13}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 1004
    invoke-virtual {v13}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v18

    if-eqz v18, :cond_29

    .line 1005
    const-string v18, "EsAccountsData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could not upload settings: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v13}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29
.end method
