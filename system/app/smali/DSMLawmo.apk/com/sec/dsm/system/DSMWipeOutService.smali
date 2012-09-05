.class public Lcom/sec/dsm/system/DSMWipeOutService;
.super Landroid/app/Service;
.source "DSMWipeOutService.java"


# static fields
.field private static final CONTACT_ICC_URI:Landroid/net/Uri;

.field private static final CONTACT_ICC_URI2:Landroid/net/Uri;

.field private static final SMS_ICC_URI:Landroid/net/Uri;

.field private static mcontext:Landroid/content/Context;


# instance fields
.field private final ADN_PROJECTION:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private rawContactsWipeOutUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/DSMWipeOutService;->SMS_ICC_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/DSMWipeOutService;->CONTACT_ICC_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://icc/adn/from_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/DSMWipeOutService;->CONTACT_ICC_URI2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->ADN_PROJECTION:[Ljava/lang/String;

    .line 30
    const-string v0, "content://com.android.contacts/raw_contacts/wipe_out"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->rawContactsWipeOutUri:Landroid/net/Uri;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private FactoryReset()V
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 267
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteIntSdCardFiles(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 268
    const-string v2, "Success internal sd reset "

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_2f

    .line 274
    :goto_14
    const-string v2, "Send Intent for SecFactoryReset : end"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    sget-object v2, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    :goto_28
    return-void

    .line 270
    .end local v1           #intent:Landroid/content/Intent;
    :cond_29
    :try_start_29
    const-string v2, "Fail internal sd reset "

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_14

    .line 271
    :catch_2f
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_48

    .line 274
    const-string v2, "Send Intent for SecFactoryReset : end"

    invoke-static {v2}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    sget-object v2, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_28

    .line 274
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_48
    move-exception v2

    const-string v3, "Send Intent for SecFactoryReset : end"

    invoke-static {v3}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    sget-object v3, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    throw v2
.end method

.method private deleteAllContactsFromSIMCard()Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 372
    const-string v0, "Delete all contacts from SIM card begin"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 373
    const/4 v7, 0x0

    .line 374
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 375
    .local v10, state:Z
    const-string v0, "gsm.sim.state"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, simstate:Ljava/lang/String;
    const-string v0, "READY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move v11, v10

    .line 395
    .end local v10           #state:Z
    .local v11, state:I
    :goto_17
    return v11

    .line 379
    .end local v11           #state:I
    .restart local v10       #state:Z
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/dsm/system/DSMWipeOutService;->CONTACT_ICC_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMWipeOutService;->ADN_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 380
    const/4 v12, 0x0

    .line 381
    .local v12, where:Ljava/lang/String;
    if-eqz v7, :cond_5f

    .line 382
    :goto_28
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 383
    const-string v0, "adn_index"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, AdnIdx:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adn_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 385
    iget-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/dsm/system/DSMWipeOutService;->CONTACT_ICC_URI2:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_18 .. :try_end_53} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_53} :catch_54

    goto :goto_28

    .line 389
    .end local v6           #AdnIdx:Ljava/lang/String;
    .end local v12           #where:Ljava/lang/String;
    :catch_54
    move-exception v8

    .line 390
    .local v8, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_66

    .line 392
    if-eqz v7, :cond_5d

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    move v11, v10

    .line 395
    .restart local v11       #state:I
    goto :goto_17

    .line 388
    .end local v11           #state:I
    .restart local v12       #where:Ljava/lang/String;
    :cond_5f
    const/4 v10, 0x1

    .line 392
    if-eqz v7, :cond_5d

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 392
    .end local v12           #where:Ljava/lang/String;
    :catchall_66
    move-exception v0

    if-eqz v7, :cond_6c

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6c
    throw v0
.end method

.method private deleteAllMessagesFromSIMCard()Z
    .registers 16

    .prologue
    const/4 v1, 0x0

    .line 333
    const-string v0, "Delete all contacts from SIM card begin"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 334
    const/4 v7, 0x0

    .line 335
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 336
    .local v13, state:Z
    const-string v0, "gsm.sim.state"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 338
    .local v12, simstate:Ljava/lang/String;
    const-string v0, "READY"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    move v14, v13

    .line 367
    .end local v13           #state:Z
    .local v14, state:I
    :goto_17
    return v14

    .line 342
    .end local v14           #state:I
    .restart local v13       #state:Z
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/dsm/system/DSMWipeOutService;->SMS_ICC_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 343
    if-eqz v7, :cond_46

    .line 344
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 345
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 346
    .local v6, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_31
    if-ge v10, v6, :cond_46

    .line 347
    const-string v0, "index_on_icc"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 349
    .local v11, messageIndexString:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteSMSFromSim(Ljava/lang/String;)V

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 346
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    .line 354
    .end local v6           #count:I
    .end local v10           #i:I
    .end local v11           #messageIndexString:Ljava/lang/String;
    :cond_46
    const-string v0, "READY"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 355
    iget-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->rawContactsWipeOutUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    const-string v2, "primary.sim.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 358
    .local v8, deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_18 .. :try_end_6f} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_6f} :catch_77

    .line 360
    .end local v8           #deleteUri:Landroid/net/Uri;
    :cond_6f
    const/4 v13, 0x1

    .line 364
    if-eqz v7, :cond_75

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_75
    :goto_75
    move v14, v13

    .line 367
    .restart local v14       #state:I
    goto :goto_17

    .line 361
    .end local v14           #state:I
    :catch_77
    move-exception v9

    .line 362
    .local v9, e:Ljava/lang/Exception;
    :try_start_78
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_81

    .line 364
    if-eqz v7, :cond_75

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_75

    .line 364
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_81
    move-exception v0

    if-eqz v7, :cond_87

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0
.end method

.method private deleteSMSFromSim(Ljava/lang/String;)V
    .registers 8
    .parameter "messageIndexString"

    .prologue
    .line 400
    :try_start_0
    sget-object v2, Lcom/sec/dsm/system/DSMWipeOutService;->SMS_ICC_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 401
    .local v1, simUri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 405
    .end local v1           #simUri:Landroid/net/Uri;
    :goto_17
    return-void

    .line 402
    :catch_18
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method private externalSdExist()Z
    .registers 10

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, ex_sd:Z
    iget-object v7, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_f

    .line 216
    const-string v7, "storage"

    invoke-virtual {p0, v7}, Lcom/sec/dsm/system/DSMWipeOutService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 218
    :cond_f
    iget-object v7, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 219
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v5

    .line 220
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v2, :cond_3f

    .line 221
    aget-object v4, v5, v1

    .line 222
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, subsystem:Ljava/lang/String;
    if-eqz v6, :cond_3c

    .line 224
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 225
    iget-object v7, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 227
    const/4 v0, 0x1

    .line 220
    .end local v3           #state:Ljava/lang/String;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 232
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v6           #subsystem:Ljava/lang/String;
    :cond_3f
    return v0
.end method

.method private externalSdFormat()Z
    .registers 11

    .prologue
    .line 236
    const-string v8, "External SDcard format : start"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, state:Z
    iget-object v8, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v8, :cond_14

    .line 239
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Lcom/sec/dsm/system/DSMWipeOutService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    iput-object v8, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 241
    :cond_14
    iget-object v8, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 242
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v6

    .line 243
    .local v2, length:I
    const-string v0, ""

    .line 244
    .local v0, EXTERNAL_SDCARD_PATH:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-ge v1, v2, :cond_49

    .line 245
    aget-object v5, v6, v1

    .line 246
    .local v5, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, subsystem:Ljava/lang/String;
    if-eqz v7, :cond_46

    .line 248
    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 249
    iget-object v8, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, states:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 251
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 244
    .end local v4           #states:Ljava/lang/String;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 256
    .end local v5           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v7           #subsystem:Ljava/lang/String;
    :cond_49
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteExtSdCardFiles(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 257
    const/4 v3, 0x1

    .line 262
    :goto_55
    return v3

    .line 260
    :cond_56
    const-string v8, "External sdcard unmounted"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_55
.end method

.method private wipeOut(I)V
    .registers 13
    .parameter "status"

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x1

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.dsm.DM_WIPE_RESULT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, i:Landroid/content/Intent;
    const/4 v7, -0x1

    .line 79
    .local v7, state:I
    const/4 v3, 0x0

    .line 80
    .local v3, sdExt:Z
    const/4 v4, 0x0

    .line 81
    .local v4, simCont:Z
    const/4 v5, 0x0

    .line 82
    .local v5, simMesg:Z
    const/4 v6, 0x0

    .line 83
    .local v6, simResult:Z
    sparse-switch p1, :sswitch_data_1a0

    .line 207
    const-string v8, "Unsupported case"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->stopSelf()V

    .line 211
    :goto_1a
    return-void

    .line 85
    :sswitch_1b
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->externalSdExist()Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 86
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->externalSdFormat()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 87
    const-string v8, "External SD Format is true"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x1

    .line 98
    :goto_2d
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteAllMessagesFromSIMCard()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 99
    const-string v8, "Delete all messages from SIMcard is true"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 100
    const/4 v5, 0x1

    .line 105
    :goto_39
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteAllContactsFromSIMCard()Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 106
    const-string v8, "Delete all contacts from SIM card is true"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 107
    const/4 v4, 0x1

    .line 112
    :goto_45
    if-ne v5, v9, :cond_4a

    if-ne v4, v9, :cond_4a

    .line 113
    const/4 v6, 0x1

    .line 114
    :cond_4a
    if-ne v3, v9, :cond_a4

    if-ne v6, v9, :cond_a4

    .line 115
    const-string v8, "wipe all success"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 116
    const/16 v7, 0x4b0

    .line 127
    :goto_55
    :try_start_55
    new-instance v2, Lcom/sec/dsm/system/DSMManager;

    sget-object v8, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, im:Lcom/sec/dsm/system/DSMManager;
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/dsm/system/DSMManager;->putDSMWipeOut(Ljava/lang/String;)V
    :try_end_63
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_55 .. :try_end_63} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_63} :catch_c0

    .line 134
    .end local v2           #im:Lcom/sec/dsm/system/DSMManager;
    :goto_63
    const-string v8, "result"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Lcom/sec/dsm/system/DSMWipeOutService;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->stopSelf()V

    goto :goto_1a

    .line 90
    :cond_88
    const-string v8, "External SD Format is false"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x0

    goto :goto_2d

    .line 94
    :cond_8f
    const/4 v3, 0x0

    .line 95
    const-string v8, "External sdcard not mounted"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_2d

    .line 102
    :cond_96
    const-string v8, "Delete all messages from SIMcard is false"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 103
    const/4 v5, 0x0

    goto :goto_39

    .line 109
    :cond_9d
    const-string v8, "Delete all contacts from SIM card is false"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 110
    const/4 v4, 0x0

    goto :goto_45

    .line 117
    :cond_a4
    if-nez v3, :cond_ab

    if-ne v6, v9, :cond_ab

    .line 118
    const/16 v7, 0x5b5

    goto :goto_55

    .line 119
    :cond_ab
    if-ne v3, v9, :cond_b2

    if-nez v6, :cond_b2

    .line 120
    const/16 v7, 0x5b6

    goto :goto_55

    .line 121
    :cond_b2
    if-nez v3, :cond_b9

    if-nez v6, :cond_b9

    .line 122
    const/16 v7, 0x5b4

    goto :goto_55

    .line 124
    :cond_b9
    const/4 v7, -0x1

    goto :goto_55

    .line 129
    :catch_bb
    move-exception v0

    .line 130
    .local v0, e:Lcom/sec/dsm/system/DSMException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_63

    .line 131
    .end local v0           #e:Lcom/sec/dsm/system/DSMException;
    :catch_c0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_c5
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->externalSdExist()Z

    move-result v8

    if-eqz v8, :cond_114

    .line 142
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->externalSdFormat()Z

    move-result v8

    if-eqz v8, :cond_111

    .line 143
    const-string v8, "External sdcard Format success"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 144
    const/16 v7, 0x4b0

    .line 148
    :goto_d8
    const-string v8, "External sd is exist "

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 154
    :goto_dd
    :try_start_dd
    new-instance v2, Lcom/sec/dsm/system/DSMManager;

    sget-object v8, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v2       #im:Lcom/sec/dsm/system/DSMManager;
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/dsm/system/DSMManager;->putDSMWipeOut(Ljava/lang/String;)V
    :try_end_eb
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_dd .. :try_end_eb} :catch_11c
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_eb} :catch_121

    .line 161
    .end local v2           #im:Lcom/sec/dsm/system/DSMManager;
    :goto_eb
    const-string v8, "result"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v1}, Lcom/sec/dsm/system/DSMWipeOutService;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->stopSelf()V

    goto/16 :goto_1a

    .line 146
    :cond_111
    const/16 v7, 0x5b5

    goto :goto_d8

    .line 150
    :cond_114
    const/16 v7, 0x5b5

    .line 151
    const-string v8, "External sd is not exist "

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    goto :goto_dd

    .line 156
    :catch_11c
    move-exception v0

    .line 157
    .local v0, e:Lcom/sec/dsm/system/DSMException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_eb

    .line 158
    .end local v0           #e:Lcom/sec/dsm/system/DSMException;
    :catch_121
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_eb

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_126
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteAllMessagesFromSIMCard()Z

    move-result v8

    if-eqz v8, :cond_17d

    .line 169
    const-string v8, "Delete all messages from SIMcard is true"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 170
    const/4 v5, 0x1

    .line 175
    :goto_132
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteAllContactsFromSIMCard()Z

    move-result v8

    if-eqz v8, :cond_184

    .line 176
    const-string v8, "Delete all contacts from SIM card is true"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 177
    const/4 v4, 0x1

    .line 182
    :goto_13e
    if-ne v5, v9, :cond_18b

    if-ne v4, v9, :cond_18b

    .line 183
    const-string v8, "SIM clear success"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 184
    const/16 v7, 0x4b0

    .line 189
    :goto_149
    :try_start_149
    new-instance v2, Lcom/sec/dsm/system/DSMManager;

    sget-object v8, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/sec/dsm/system/DSMManager;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v2       #im:Lcom/sec/dsm/system/DSMManager;
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/dsm/system/DSMManager;->putDSMWipeOut(Ljava/lang/String;)V
    :try_end_157
    .catch Lcom/sec/dsm/system/DSMException; {:try_start_149 .. :try_end_157} :catch_18e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_157} :catch_193

    .line 196
    .end local v2           #im:Lcom/sec/dsm/system/DSMManager;
    :goto_157
    const-string v8, "result"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v1}, Lcom/sec/dsm/system/DSMWipeOutService;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->stopSelf()V

    goto/16 :goto_1a

    .line 172
    :cond_17d
    const-string v8, "Delete all messages from SIMcard is false"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 173
    const/4 v5, 0x0

    goto :goto_132

    .line 179
    :cond_184
    const-string v8, "Delete all contacts from SIM card is false"

    invoke-static {v8}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 180
    const/4 v4, 0x0

    goto :goto_13e

    .line 186
    :cond_18b
    const/16 v7, 0x5b6

    goto :goto_149

    .line 191
    :catch_18e
    move-exception v0

    .line 192
    .local v0, e:Lcom/sec/dsm/system/DSMException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMException;->printStackTrace()V

    goto :goto_157

    .line 193
    .end local v0           #e:Lcom/sec/dsm/system/DSMException;
    :catch_193
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_157

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_198
    invoke-direct {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->FactoryReset()V

    .line 204
    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMWipeOutService;->stopSelf()V

    goto/16 :goto_1a

    .line 83
    :sswitch_data_1a0
    .sparse-switch
        0xa -> :sswitch_1b
        0x14 -> :sswitch_c5
        0x1e -> :sswitch_126
        0x28 -> :sswitch_198
    .end sparse-switch
.end method


# virtual methods
.method deleteExtSdCardFiles(Ljava/io/File;)Z
    .registers 8
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 310
    const-string v3, "deleteExtSdCardFiles 1"

    invoke-static {v3}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 328
    :goto_d
    return v4

    .line 313
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1b

    .line 315
    const-string v4, "deleteExtSdCardFiles 2"

    invoke-static {v4}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    move v4, v3

    .line 316
    goto :goto_d

    .line 319
    :cond_1b
    const/4 v2, 0x1

    .line 320
    .local v2, success:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    array-length v5, v0

    if-ge v1, v5, :cond_46

    .line 321
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 322
    if-eqz v2, :cond_36

    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteExtSdCardFiles(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_36

    move v2, v3

    .line 320
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_36
    move v2, v4

    .line 322
    goto :goto_33

    .line 324
    :cond_38
    if-eqz v2, :cond_44

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_44

    move v2, v3

    :goto_43
    goto :goto_33

    :cond_44
    move v2, v4

    goto :goto_43

    .line 327
    :cond_46
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move v4, v2

    .line 328
    goto :goto_d
.end method

.method deleteIntSdCardFiles(Ljava/io/File;)Z
    .registers 12
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_9

    .line 305
    :cond_8
    :goto_8
    return v7

    .line 285
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 286
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_8

    .line 289
    const-string v2, "sdcard"

    .line 290
    .local v2, mSdCard:Ljava/lang/String;
    const/4 v5, 0x1

    .line 291
    .local v5, success:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v8, v0

    if-ge v1, v8, :cond_5c

    .line 292
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, path:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, pathlist:[Ljava/lang/String;
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v8, 0x2

    aget-object v8, v4, v8

    const-string v9, "external_sd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 291
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 297
    :cond_38
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 298
    if-eqz v5, :cond_4c

    aget-object v8, v0, v1

    invoke-virtual {p0, v8}, Lcom/sec/dsm/system/DSMWipeOutService;->deleteIntSdCardFiles(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4c

    move v5, v6

    :goto_4b
    goto :goto_35

    :cond_4c
    move v5, v7

    goto :goto_4b

    .line 300
    :cond_4e
    if-eqz v5, :cond_5a

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_5a

    move v5, v6

    :goto_59
    goto :goto_35

    :cond_5a
    move v5, v7

    goto :goto_59

    .line 304
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathlist:[Ljava/lang/String;
    :cond_5c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move v7, v5

    .line 305
    goto :goto_8
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 64
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 47
    const-string v0, " onCreate begin"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    sput-object p0, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/sec/dsm/system/DSMWipeOutService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/dsm/system/DSMWipeOutService;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    const-string v0, " onCreate end"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 70
    const-string v0, "onDestory begin"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    const-string v0, "onDestory end"

    invoke-static {v0}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 56
    const-string v1, " onStartCommand begin"

    invoke-static {v1}, Lcom/sec/dsm/system/Util;->Logd(Ljava/lang/String;)V

    .line 57
    const-string v1, "status"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, status:I
    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMWipeOutService;->wipeOut(I)V

    .line 59
    const/4 v1, 0x2

    return v1
.end method
