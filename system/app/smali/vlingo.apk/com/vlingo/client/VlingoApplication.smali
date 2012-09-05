.class public Lcom/vlingo/client/VlingoApplication;
.super Landroid/app/Application;
.source "VlingoApplication.java"


# static fields
.field private static APP_VERSION:Ljava/lang/String; = null

.field public static final LIB_DIR:Ljava/lang/String; = "lib"

.field private static instance:Lcom/vlingo/client/VlingoApplication;


# instance fields
.field private afManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

.field private businessItemCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;

.field private isBackgroundProcess:Z

.field private m_Handler:Landroid/os/Handler;

.field private nbestManager:Lcom/vlingo/client/NBestManager;

.field private recoClickHandler:Lcom/vlingo/client/android/core/asr/handler/AndroidRecoClickHandler;

.field private recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/VlingoApplication;->instance:Lcom/vlingo/client/VlingoApplication;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/vlingo/client/VlingoApplication;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 77
    iput-object v1, p0, Lcom/vlingo/client/VlingoApplication;->recoClickHandler:Lcom/vlingo/client/android/core/asr/handler/AndroidRecoClickHandler;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/VlingoApplication;->isBackgroundProcess:Z

    .line 281
    iput-object v1, p0, Lcom/vlingo/client/VlingoApplication;->m_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/VlingoApplication;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vlingo/client/VlingoApplication;->populateContactMapping()V

    return-void
.end method

.method private checkContactProviderAvailable()Z
    .registers 10

    .prologue
    .line 314
    const/4 v7, 0x0

    .line 315
    .local v7, providerAvailable:Z
    const/4 v6, 0x0

    .line 317
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/vlingo/client/VlingoApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 322
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 324
    const/4 v8, 0x0

    .line 326
    .local v8, status:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 327
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_39

    move-result v8

    .line 332
    :cond_2e
    packed-switch v8, :pswitch_data_48

    .line 348
    .end local v8           #status:I
    :cond_31
    :goto_31
    if-eqz v6, :cond_36

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_36
    :goto_36
    return v7

    .line 334
    .restart local v8       #status:I
    :pswitch_37
    const/4 v7, 0x1

    .line 335
    goto :goto_31

    .line 344
    .end local v8           #status:I
    :catch_39
    move-exception v0

    .line 348
    if-eqz v6, :cond_36

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 348
    :catchall_40
    move-exception v0

    if-eqz v6, :cond_46

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_46
    throw v0

    .line 332
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_37
    .end packed-switch
.end method

.method private extractJNILibs()Z
    .registers 16

    .prologue
    const/4 v12, 0x0

    .line 465
    :try_start_1
    const-string v13, "lib"

    const/4 v14, 0x0

    invoke-virtual {p0, v13, v14}, Lcom/vlingo/client/VlingoApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    .line 467
    .local v10, outDir:Ljava/io/File;
    invoke-virtual {p0}, Lcom/vlingo/client/VlingoApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 469
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v13, "lib"

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 470
    .local v9, libFilenameList:[Ljava/lang/String;
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_15
    if-ge v4, v7, :cond_3d

    aget-object v8, v1, v4

    .line 472
    .local v8, libFilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v13, "lib"

    invoke-direct {v5, v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v5, inFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 474
    .local v6, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 475
    .local v2, bis:Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 476
    .local v11, outFile:Ljava/io/File;
    invoke-static {v2, v11}, Lcom/vlingo/client/core/util/FileUtils;->inputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 477
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3b

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 480
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #i$:I
    .end local v5           #inFile:Ljava/io/File;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len$:I
    .end local v8           #libFilename:Ljava/lang/String;
    .end local v9           #libFilenameList:[Ljava/lang/String;
    .end local v10           #outDir:Ljava/io/File;
    .end local v11           #outFile:Ljava/io/File;
    :catch_3b
    move-exception v3

    .line 485
    :goto_3c
    return v12

    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #libFilenameList:[Ljava/lang/String;
    .restart local v10       #outDir:Ljava/io/File;
    :cond_3d
    const/4 v12, 0x1

    goto :goto_3c
.end method

.method public static getAppVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/vlingo/client/VlingoApplication;->APP_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method private getContactCursor()Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 296
    const/4 v6, 0x0

    .line 297
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/vlingo/client/VlingoApplication;->checkContactProviderAvailable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 300
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data3"

    aput-object v1, v2, v0

    .line 302
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "mimetype=\'vnd.android.cursor.item/name\' AND in_visible_group=1"

    .line 305
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/VlingoApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :cond_27
    return-object v6
.end method

.method public static getInstance()Lcom/vlingo/client/VlingoApplication;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/vlingo/client/VlingoApplication;->instance:Lcom/vlingo/client/VlingoApplication;

    return-object v0
.end method

.method public static isBackgroundProcess()Z
    .registers 1

    .prologue
    .line 101
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vlingo/client/VlingoApplication;->isBackgroundProcess:Z

    return v0
.end method

.method private populateContactMapping()V
    .registers 12

    .prologue
    .line 359
    sget-object v7, Lcom/vlingo/client/settings/Settings;->contactCasing:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 362
    const/4 v0, 0x0

    .line 365
    .local v0, cur:Landroid/database/Cursor;
    :try_start_6
    invoke-direct {p0}, Lcom/vlingo/client/VlingoApplication;->getContactCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 369
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 372
    .local v6, idColumn:I
    const-string v7, "data2"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 375
    .local v5, givenNameColumn:I
    const-string v7, "data3"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 378
    .local v3, familyNameColumn:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 383
    :cond_28
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, givenName:Ljava/lang/String;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, familyName:Ljava/lang/String;
    if-eqz v4, :cond_3b

    .line 389
    sget-object v7, Lcom/vlingo/client/settings/Settings;->contactCasing:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_3b
    if-eqz v2, :cond_46

    .line 395
    sget-object v7, Lcom/vlingo/client/settings/Settings;->contactCasing:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_46
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_6c

    move-result v7

    if-nez v7, :cond_28

    .line 402
    .end local v2           #familyName:Ljava/lang/String;
    .end local v3           #familyNameColumn:I
    .end local v4           #givenName:Ljava/lang/String;
    .end local v5           #givenNameColumn:I
    .end local v6           #idColumn:I
    :cond_4c
    if-eqz v0, :cond_51

    .line 406
    :try_start_4e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    .line 412
    :cond_51
    :goto_51
    return-void

    .line 407
    :catch_52
    move-exception v1

    .line 408
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "VLG_VlingoApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sac caught exception closing cursor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 402
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_6c
    move-exception v7

    if-eqz v0, :cond_72

    .line 406
    :try_start_6f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    .line 409
    :cond_72
    :goto_72
    throw v7

    .line 407
    :catch_73
    move-exception v1

    .line 408
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v8, "VLG_VlingoApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sac caught exception closing cursor"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method


# virtual methods
.method public getAFManager()Lcom/vlingo/client/core/audio/AudioFocusManager;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplication;->afManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    return-object v0
.end method

.method public getBusinessItemCache()Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplication;->businessItemCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;

    return-object v0
.end method

.method public getNBestManager()Lcom/vlingo/client/NBestManager;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplication;->nbestManager:Lcom/vlingo/client/NBestManager;

    return-object v0
.end method

.method public onCreate()V
    .registers 22

    .prologue
    .line 106
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 111
    sput-object p0, Lcom/vlingo/client/VlingoApplication;->instance:Lcom/vlingo/client/VlingoApplication;

    .line 114
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/VlingoApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/VlingoApplication;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 115
    .local v11, packageInfo:Landroid/content/pm/PackageInfo;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "5930"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/vlingo/client/VlingoApplication;->APP_VERSION:Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_32} :catch_62

    .line 120
    .end local v11           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_32
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    .line 121
    .local v12, processId:I
    const/4 v5, 0x0

    .line 122
    .local v5, currentProcessName:Ljava/lang/String;
    const-string v17, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 124
    .local v2, am:Landroid/app/ActivityManager;
    if-nez v2, :cond_6d

    .line 126
    const-wide/16 v17, 0x7d0

    :try_start_47
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_68

    .line 127
    :goto_4a
    const-string v17, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #am:Landroid/app/ActivityManager;
    check-cast v2, Landroid/app/ActivityManager;

    .line 129
    .restart local v2       #am:Landroid/app/ActivityManager;
    if-nez v2, :cond_6d

    .line 130
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v17, "During application creation Vlingo received a null ActivityManager.  Exiting!!"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .local v13, re:Ljava/lang/RuntimeException;
    throw v13

    .line 116
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v5           #currentProcessName:Ljava/lang/String;
    .end local v12           #processId:I
    .end local v13           #re:Ljava/lang/RuntimeException;
    :catch_62
    move-exception v7

    .line 117
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "2.0.2.5930"

    sput-object v17, Lcom/vlingo/client/VlingoApplication;->APP_VERSION:Ljava/lang/String;

    goto :goto_32

    .line 126
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #am:Landroid/app/ActivityManager;
    .restart local v5       #currentProcessName:Ljava/lang/String;
    .restart local v12       #processId:I
    :catch_68
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    .line 137
    .end local v7           #e:Ljava/lang/Exception;
    :cond_6d
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, appProcessList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 139
    .local v9, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_75
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8b

    .line 140
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 141
    .local v8, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v12, v0, :cond_75

    .line 142
    iget-object v5, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 147
    .end local v8           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8b
    const v17, 0x7f090028

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, backgroundProcessName:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/VlingoApplication;->isBackgroundProcess:Z

    .line 161
    const-class v17, Lcom/vlingo/client/AndroidApplicationAdaptor;

    invoke-static/range {v17 .. v17}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->setApplicationAdaptorClass(Ljava/lang/Class;)V

    .line 162
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v17

    check-cast v17, Lcom/vlingo/client/AndroidApplicationAdaptor;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/AndroidApplicationAdaptor;->init(Landroid/app/Application;)V

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/vlingo/client/settings/Settings;->init(Landroid/content/Context;)V

    .line 166
    const-class v17, Lcom/vlingo/client/asr/VlingoSoftwareMeta;

    invoke-static/range {v17 .. v17}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->setSoftwareMetaClass(Ljava/lang/Class;)V

    .line 167
    const-class v17, Lcom/vlingo/client/asr/VlingoClientMeta;

    invoke-static/range {v17 .. v17}, Lcom/vlingo/client/core/recognizer/ClientMeta;->setClientMetaClass(Ljava/lang/Class;)V

    .line 169
    const-class v17, Lcom/vlingo/client/settings/AndroidCoreSettingsProvider;

    invoke-static/range {v17 .. v17}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->setCoreSettingsProviderImpl(Ljava/lang/Class;)V

    .line 170
    invoke-static {}, Ljavax/microedition/media/control/RecordControl;->initAudioLogging()V

    .line 172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/VlingoApplication;->isBackgroundProcess:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d6

    .line 173
    invoke-static {}, Lcom/vlingo/client/android/core/AndroidCoreInitializer;->initializeLMTT()V

    .line 174
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    .line 251
    :cond_d5
    :goto_d5
    return-void

    .line 188
    :cond_d6
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/VlingoApplication;->extractJNILibs()Z

    move-result v15

    .line 189
    .local v15, success:Z
    if-nez v15, :cond_dc

    .line 194
    :cond_dc
    const-class v17, Lcom/vlingo/client/asr/AndroidSRContext;

    invoke-static/range {v17 .. v17}, Lcom/vlingo/client/core/recognizer/SRContext;->setSRContextClass(Ljava/lang/Class;)V

    .line 195
    invoke-static {}, Lcom/vlingo/client/android/core/AndroidCoreInitializer;->initialize()V

    .line 198
    invoke-static {}, Lcom/vlingo/client/android/core/audio/SpeexJNI;->init()V

    .line 201
    new-instance v17, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;

    invoke-direct/range {v17 .. v17}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/VlingoApplication;->businessItemCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;

    .line 203
    new-instance v17, Lcom/vlingo/client/NBestManager;

    invoke-direct/range {v17 .. v17}, Lcom/vlingo/client/NBestManager;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/VlingoApplication;->nbestManager:Lcom/vlingo/client/NBestManager;

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/VlingoApplication;->afManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    .line 206
    invoke-static {}, Lcom/vlingo/client/core/asr/RecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v17

    check-cast v17, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/VlingoApplication;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/VlingoApplication;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;

    invoke-direct/range {v18 .. v18}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;-><init>()V

    invoke-static {}, Lcom/vlingo/client/asr/VlingoClientMeta;->getInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;

    move-result-object v19

    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 209
    new-instance v17, Lcom/vlingo/client/android/core/asr/handler/AndroidRecoClickHandler;

    invoke-direct/range {v17 .. v17}, Lcom/vlingo/client/android/core/asr/handler/AndroidRecoClickHandler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/VlingoApplication;->recoClickHandler:Lcom/vlingo/client/android/core/asr/handler/AndroidRecoClickHandler;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/VlingoApplication;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/VlingoApplication;->recoClickHandler:Lcom/vlingo/client/android/core/asr/handler/AndroidRecoClickHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setRecognitionKeyHandler(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;)V

    .line 212
    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v17

    if-eqz v17, :cond_152

    .line 213
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->startServices(Z)V

    .line 216
    :cond_152
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 217
    .local v10, mgr:Landroid/telephony/TelephonyManager;
    new-instance v17, Lcom/vlingo/client/asr/VlingoPhoneListener;

    invoke-direct/range {v17 .. v17}, Lcom/vlingo/client/asr/VlingoPhoneListener;-><init>()V

    const/16 v18, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    new-instance v14, Lcom/vlingo/client/VlingoApplication$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vlingo/client/VlingoApplication$1;-><init>(Lcom/vlingo/client/VlingoApplication;)V

    .line 229
    .local v14, runnable:Ljava/lang/Runnable;
    new-instance v17, Ljava/lang/Thread;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/vlingo/client/update/UpdateManager;->performUpdateCheck(Landroid/content/Context;)V

    .line 234
    new-instance v17, Lcom/vlingo/client/VlingoApplication$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vlingo/client/VlingoApplication$2;-><init>(Lcom/vlingo/client/VlingoApplication;)V

    invoke-static/range {v17 .. v17}, Lcom/vlingo/client/vvs/VVServerManager;->hello(Lcom/vlingo/client/core/http/HttpCallback;)V

    .line 241
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v17

    if-nez v17, :cond_d5

    .line 242
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 243
    .local v16, tm:Landroid/telephony/TelephonyManager;
    if-eqz v16, :cond_d5

    .line 244
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, deviceID:Ljava/lang/String;
    if-eqz v6, :cond_d5

    .line 246
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v17

    const-string v18, "IMEI/MEID"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->errorDisplayed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d5
.end method

.method public onTerminate()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/VlingoApplication;->instance:Lcom/vlingo/client/VlingoApplication;

    .line 256
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 257
    return-void
.end method

.method public resumeAudioPlayback()V
    .registers 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplication;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 285
    iget-object v0, p0, Lcom/vlingo/client/VlingoApplication;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V

    .line 288
    :cond_1a
    return-void
.end method

.method public startServices(Z)V
    .registers 5
    .parameter "noDelay"

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vlingo/client/VlingoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/lmtt/LMTTService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_13

    .line 268
    const-string v1, "com.vlingo.client.skipInitialDelay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    :cond_13
    invoke-virtual {p0, v0}, Lcom/vlingo/client/VlingoApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    new-instance v1, Lcom/vlingo/client/VlingoApplication$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/VlingoApplication$3;-><init>(Lcom/vlingo/client/VlingoApplication;)V

    iput-object v1, p0, Lcom/vlingo/client/VlingoApplication;->m_Handler:Landroid/os/Handler;

    .line 278
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    .line 279
    return-void
.end method
