.class public Lcom/sprint/w/installer/SwitchIDThread;
.super Ljava/lang/Thread;
.source "SwitchIDThread.java"


# static fields
.field static sBusy:Z


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mActivity:Landroid/app/Activity;

.field private mAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/sprint/id/ISprintIDService;

.field private mWallpaperItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field private packId:Ljava/lang/String;

.field private restart:Z


# direct methods
.method public constructor <init>(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;J)V
    .registers 7
    .parameter "service"
    .parameter "activity"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "PackSwitcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/sprint/w/installer/SwitchIDThread;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    .line 47
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mAppItems:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mRingtoneItems:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->packId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    .line 55
    iput-object p1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .parameter "service"
    .parameter "activity"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "PackSwitcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/sprint/w/installer/SwitchIDThread;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    .line 47
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mAppItems:Ljava/util/ArrayList;

    .line 48
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mRingtoneItems:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    .line 60
    iput-object p3, p0, Lcom/sprint/w/installer/SwitchIDThread;->packId:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    .line 62
    iput-object p1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    .line 63
    return-void
.end method

.method private loadBitmap(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z
    .registers 8
    .parameter "wpm"
    .parameter "packInfo"

    .prologue
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wp-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, packPngFile:Ljava/lang/String;
    :try_start_1b
    iget-object v3, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 195
    .local v1, in:Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_26

    .line 196
    const/4 v3, 0x1

    .line 198
    .end local v1           #in:Ljava/io/FileInputStream;
    :goto_25
    return v3

    .line 197
    :catch_26
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_25
.end method

.method private loadContent(Lcom/sprint/w/installer/PackInfo;)V
    .registers 13
    .parameter "packInfo"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 373
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "package"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "packId"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "packName"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "packVersion"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "itemType"

    aput-object v1, v2, v0

    .line 376
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "packId=?"

    .line 377
    .local v3, selection:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    iget-object v0, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 381
    .local v4, args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 384
    .local v6, cur:Landroid/database/Cursor;
    :try_start_42
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mAppItems:Ljava/util/ArrayList;

    if-nez v0, :cond_d6

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mAppItems:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mRingtoneItems:Ljava/util/ArrayList;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    .line 393
    :goto_5b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 395
    :cond_61
    new-instance v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/sprint/w/installer/PackUninstaller$Item;-><init>(Z)V

    .line 396
    .local v8, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->id:I

    .line 397
    const-string v0, "itemType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    .line 398
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    .line 399
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packId:Ljava/lang/String;

    .line 400
    const-string v0, "packName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packName:Ljava/lang/String;

    .line 401
    const-string v0, "packVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packVersion:Ljava/lang/String;

    .line 402
    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    .line 403
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    .line 404
    iget v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    packed-switch v0, :pswitch_data_138

    .line 422
    :goto_cc
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cf
    .catchall {:try_start_42 .. :try_end_cf} :catchall_e7

    move-result v0

    if-nez v0, :cond_61

    .line 425
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_d2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 427
    return-void

    .line 389
    :cond_d6
    :try_start_d6
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 391
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_e5
    .catchall {:try_start_d6 .. :try_end_e5} :catchall_e7

    goto/16 :goto_5b

    .line 425
    :catchall_e7
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 407
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :pswitch_ec
    :try_start_ec
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 408
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catchall {:try_start_ec .. :try_end_10e} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_10e} :catch_10f

    goto :goto_cc

    .line 410
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :catch_10f
    move-exception v7

    .line 411
    .local v7, e:Ljava/lang/Exception;
    :try_start_110
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App seems to no longer be installed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_cc

    .line 415
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_12b
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 418
    :pswitch_131
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_136
    .catchall {:try_start_110 .. :try_end_136} :catchall_e7

    goto :goto_cc

    .line 404
    nop

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_12b
        :pswitch_131
    .end packed-switch
.end method

.method private loadDefault(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)V
    .registers 9
    .parameter "wpm"
    .parameter "packInfo"

    .prologue
    .line 175
    iget-object v3, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 188
    :goto_8
    return-void

    .line 179
    :cond_9
    iget-object v3, p0, Lcom/sprint/w/installer/SwitchIDThread;->mWallpaperItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 181
    .local v2, item:Lcom/sprint/w/installer/PackUninstaller$Item;
    :try_start_12
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, v2, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, in:Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 184
    iget-object v3, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper loaded from default, pack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 185
    .end local v1           #in:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper failed to load from default, pack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private loadHomeScreenConfig(Ljava/lang/String;)V
    .registers 31
    .parameter "packId"

    .prologue
    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/SwitchIDThread;->wipeHomeScreen()V

    .line 247
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 250
    .local v5, args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 251
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "packId=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 257
    .local v7, cur:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 258
    const-string v2, "l_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 259
    .local v22, idxLaunchId:I
    const-string v2, "container"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 260
    .local v12, idxContainer:I
    const-string v2, "screen"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 261
    .local v23, idxScreen:I
    const-string v2, "title"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 262
    .local v26, idxTitle:I
    const-string v2, "itemType"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 263
    .local v21, idxItemType:I
    const-string v2, "cellX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 264
    .local v10, idxCellX:I
    const-string v2, "cellY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 265
    .local v11, idxCellY:I
    const-string v2, "spanX"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 266
    .local v24, idxSpanX:I
    const-string v2, "spanY"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 267
    .local v25, idxSpanY:I
    const-string v2, "iconType"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 268
    .local v18, idxIconType:I
    const-string v2, "iconResource"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 269
    .local v17, idxIconResource:I
    const-string v2, "iconPackage"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 270
    .local v16, idxIconPackage:I
    const-string v2, "icon"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 271
    .local v15, idxIcon:I
    const-string v2, "appWidgetId"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 272
    .local v9, idxAppWidgetId:I
    const-string v2, "intent"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 273
    .local v19, idxIntent:I
    const-string v2, "uri"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 274
    .local v27, idxUri:I
    const-string v2, "displayMode"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 275
    .local v13, idxDisplayMode:I
    const-string v2, "isShortcut"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 276
    .local v20, idxIsShortcut:I
    const-string v2, "extras"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 278
    .local v14, idxExtras:I
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v28, values:Landroid/content/ContentValues;
    :cond_98
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 281
    const-string v2, "container"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v2, "screen"

    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v2, "title"

    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "itemType"

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v2, "cellX"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v2, "cellY"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string v2, "spanX"

    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v2, "spanY"

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v2, "iconType"

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v2, "iconResource"

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "iconPackage"

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "icon"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 293
    const-string v2, "appWidgetId"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v2, "intent"

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "uri"

    move/from16 v0, v27

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "displayMode"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "isShortcut"

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "l_id"

    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    invoke-interface {v7, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1b2

    .line 300
    const-string v2, "extras"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 302
    :cond_1b2
    invoke-static/range {v28 .. v28}, Lcom/sprint/w/installer/ContentValuesFactory;->forLauncher(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v28

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 305
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c2
    .catchall {:try_start_1b .. :try_end_1c2} :catchall_1e5
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1c2} :catch_1d7

    move-result v2

    if-nez v2, :cond_98

    .line 311
    .end local v9           #idxAppWidgetId:I
    .end local v10           #idxCellX:I
    .end local v11           #idxCellY:I
    .end local v12           #idxContainer:I
    .end local v13           #idxDisplayMode:I
    .end local v14           #idxExtras:I
    .end local v15           #idxIcon:I
    .end local v16           #idxIconPackage:I
    .end local v17           #idxIconResource:I
    .end local v18           #idxIconType:I
    .end local v19           #idxIntent:I
    .end local v20           #idxIsShortcut:I
    .end local v21           #idxItemType:I
    .end local v22           #idxLaunchId:I
    .end local v23           #idxScreen:I
    .end local v24           #idxSpanX:I
    .end local v25           #idxSpanY:I
    .end local v26           #idxTitle:I
    .end local v27           #idxUri:I
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_1c5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 315
    :goto_1c8
    :try_start_1c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v2}, Lcom/sprint/id/ISprintIDService;->notifyFavoritesChanges()V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v2}, Lcom/sprint/id/ISprintIDService;->notifyAppWidgetReset()V
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1d6} :catch_1ea

    .line 322
    :goto_1d6
    return-void

    .line 307
    :catch_1d7
    move-exception v8

    .line 309
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Remote Error while switching IDs"

    invoke-virtual {v2, v3, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e1
    .catchall {:try_start_1d8 .. :try_end_1e1} :catchall_1e5

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1c8

    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_1e5
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 317
    :catch_1ea
    move-exception v8

    .line 319
    .restart local v8       #e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Remote Error while notifying an ID switch"

    invoke-virtual {v2, v3, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d6
.end method

.method private loadLive(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z
    .registers 13
    .parameter "wpm"
    .parameter "packInfo"

    .prologue
    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, packTxtFile:Ljava/lang/String;
    :try_start_1b
    iget-object v7, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 208
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v4, inr:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, data:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 211
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v5

    .line 212
    .local v5, iwman:Landroid/app/IWallpaperManager;
    invoke-interface {v5, v0}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 213
    iget-object v7, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wallpaper loaded from a live wp, pack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_54} :catch_56

    .line 214
    const/4 v7, 0x1

    .line 216
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #inr:Ljava/io/BufferedReader;
    .end local v5           #iwman:Landroid/app/IWallpaperManager;
    :goto_55
    return v7

    .line 215
    :catch_56
    move-exception v2

    .line 216
    .local v2, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_55
.end method

.method private loadNewWallpaper(Lcom/sprint/w/installer/PackInfo;)V
    .registers 5
    .parameter "packInfo"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 163
    .local v0, wpm:Landroid/app/WallpaperManager;
    invoke-direct {p0, v0, p1}, Lcom/sprint/w/installer/SwitchIDThread;->loadLive(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 172
    :cond_10
    :goto_10
    return-void

    .line 167
    :cond_11
    invoke-direct {p0, v0, p1}, Lcom/sprint/w/installer/SwitchIDThread;->loadBitmap(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 171
    invoke-direct {p0, v0, p1}, Lcom/sprint/w/installer/SwitchIDThread;->loadDefault(Landroid/app/WallpaperManager;Lcom/sprint/w/installer/PackInfo;)V

    goto :goto_10
.end method

.method private setDefaultRingtone(Ljava/lang/String;)V
    .registers 14
    .parameter "packId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-ringtone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, packRingtoneFile:Ljava/lang/String;
    const/4 v5, 0x0

    .line 327
    .local v5, rtUri:Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_18
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 330
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_76

    move-result-object v5

    .line 334
    if-eqz v1, :cond_32

    .line 336
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_d2

    .line 339
    :goto_31
    const/4 v1, 0x0

    .line 342
    :cond_32
    :goto_32
    if-eqz v5, :cond_9e

    .line 343
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v9, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 348
    :goto_3d
    const/4 v2, 0x0

    .line 349
    .local v2, notificationUri:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, packNotificationFile:Ljava/lang/String;
    :try_start_51
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 352
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_64} :catch_a4

    move-result-object v2

    .line 356
    if-eqz v1, :cond_6a

    .line 358
    :try_start_67
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_d9

    .line 363
    :cond_6a
    :goto_6a
    if-eqz v2, :cond_cc

    .line 364
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v10, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 369
    :goto_75
    return-void

    .line 331
    .end local v2           #notificationUri:Ljava/lang/String;
    .end local v3           #packNotificationFile:Ljava/lang/String;
    :catch_76
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/Exception;
    :try_start_77
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading ringtone for pack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_96

    .line 334
    if-eqz v1, :cond_32

    .line 336
    :try_start_91
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_d5

    .line 339
    :goto_94
    const/4 v1, 0x0

    goto :goto_32

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_96
    move-exception v6

    if-eqz v1, :cond_9d

    .line 336
    :try_start_99
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_d7

    .line 339
    :goto_9c
    const/4 v1, 0x0

    :cond_9d
    throw v6

    .line 346
    :cond_9e
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v9, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_3d

    .line 353
    .restart local v2       #notificationUri:Ljava/lang/String;
    .restart local v3       #packNotificationFile:Ljava/lang/String;
    :catch_a4
    move-exception v0

    .line 354
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_a5
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading notification for pack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_c5

    .line 356
    if-eqz v1, :cond_6a

    .line 358
    :try_start_bf
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_6a

    .line 359
    :catch_c3
    move-exception v6

    goto :goto_6a

    .line 356
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_c5
    move-exception v6

    if-eqz v1, :cond_cb

    .line 358
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_db

    .line 360
    :cond_cb
    :goto_cb
    throw v6

    .line 367
    :cond_cc
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v10, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_75

    .line 337
    .end local v2           #notificationUri:Ljava/lang/String;
    .end local v3           #packNotificationFile:Ljava/lang/String;
    :catch_d2
    move-exception v6

    goto/16 :goto_31

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_d5
    move-exception v6

    goto :goto_94

    .end local v0           #e:Ljava/lang/Exception;
    :catch_d7
    move-exception v7

    goto :goto_9c

    .line 359
    .restart local v2       #notificationUri:Ljava/lang/String;
    .restart local v3       #packNotificationFile:Ljava/lang/String;
    :catch_d9
    move-exception v6

    goto :goto_6a

    :catch_db
    move-exception v7

    goto :goto_cb
.end method

.method private startHome()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sprint/w/installer/SwitchIDThread$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/SwitchIDThread$1;-><init>(Lcom/sprint/w/installer/SwitchIDThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method private wipeHomeScreen()V
    .registers 4

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v1}, Lcom/sprint/id/ISprintIDService;->wipeDesktopContainer()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 241
    :goto_5
    return-void

    .line 237
    :catch_6
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error wiping the home sceen"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    .line 66
    sget-boolean v0, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    if-eqz v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Ignoring switch request -- already working on a pack switch!"

    invoke-virtual {v0, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 159
    :goto_d
    return-void

    .line 72
    :cond_e
    const/4 v0, 0x1

    :try_start_f
    sput-boolean v0, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    .line 73
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v7

    .line 76
    .local v7, currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "mPackList is null if the thread is spun outside of ServicePackSwitcher"

    invoke-virtual {v0, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 79
    const-string v0, "HOME"

    iget-object v4, p0, Lcom/sprint/w/installer/SwitchIDThread;->packId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    const-string v0, "OEM"

    iget-object v4, p0, Lcom/sprint/w/installer/SwitchIDThread;->packId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 80
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sprint/w/installer/SwitchIDThread;->packId:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sprint/w/installer/PackInfo;->loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v12

    .line 92
    .local v12, tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :goto_3a
    if-nez v12, :cond_11c

    move-object v10, v7

    .line 95
    .local v10, newPackInfo:Lcom/sprint/w/installer/PackInfo;
    :goto_3d
    if-nez v7, :cond_11f

    .line 96
    .local v9, isFirstTimeSwitchingPacks:Z
    :goto_3f
    if-eqz v9, :cond_122

    .line 98
    const-string v6, "HOME"

    .line 99
    .local v6, currentPackId:Ljava/lang/String;
    const-string v0, "HOME"

    iget-object v4, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 100
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 101
    const-string v6, "OEM"

    .line 108
    :cond_55
    :goto_55
    const-string v0, "OEM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 109
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v6}, Lcom/sprint/w/installer/SwitchIDThread;->saveHomeScreenConfig(Landroid/app/Activity;Ljava/lang/String;)V

    .line 114
    :cond_62
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v6}, Lcom/sprint/w/installer/SwitchIDThread;->saveCurrentLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v6}, Lcom/sprint/w/installer/SwitchIDThread;->saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v0, v10, v4}, Lcom/sprint/w/installer/PackInfo;->saveActivePackInfo(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;Z)V

    .line 118
    const-string v0, "OEM"

    iget-object v4, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_f .. :try_end_79} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_79} :catch_fd

    move-result v0

    if-eqz v0, :cond_126

    .line 121
    :try_start_7c
    invoke-direct {p0, v10}, Lcom/sprint/w/installer/SwitchIDThread;->loadNewWallpaper(Lcom/sprint/w/installer/PackInfo;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_118
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_7f} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_fd

    .line 124
    :goto_7f
    :try_start_7f
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 127
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 128
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, sampleIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    .line 131
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Lcom/sprint/w/installer/PackInfo;->getOemLauncher()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/PackInstaller;->setAsPreferred(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;Z)V

    .line 147
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #sampleIntent:Landroid/content/Intent;
    :cond_af
    :goto_af
    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/SwitchIDThread;->setDefaultRingtone(Ljava/lang/String;)V

    .line 148
    iget-object v11, v10, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 149
    .local v11, psiId:Ljava/lang/String;
    if-nez v11, :cond_ce

    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v0, :cond_ce

    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v4, "psi://content/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 150
    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    :cond_ce
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    iget-object v4, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v10, v4}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackActivated(Lcom/sprint/w/installer/PackInfo;Z)V
    :try_end_d9
    .catchall {:try_start_7f .. :try_end_d9} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_d9} :catch_fd

    .line 156
    sput-boolean v13, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    goto/16 :goto_d

    .line 81
    .end local v6           #currentPackId:Ljava/lang/String;
    .end local v9           #isFirstTimeSwitchingPacks:Z
    .end local v10           #newPackInfo:Lcom/sprint/w/installer/PackInfo;
    .end local v11           #psiId:Ljava/lang/String;
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_dd
    :try_start_dd
    const-string v0, "HOME"

    iget-object v4, p0, Lcom/sprint/w/installer/SwitchIDThread;->packId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 82
    new-instance v12, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v12}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 83
    .restart local v12       #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    const v4, 0x7f06007d

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 84
    const-string v0, "HOME"

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;
    :try_end_fb
    .catchall {:try_start_dd .. :try_end_fb} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_fb} :catch_fd

    goto/16 :goto_3a

    .line 153
    .end local v7           #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :catch_fd
    move-exception v8

    .line 154
    .local v8, e:Ljava/lang/Exception;
    :try_start_fe
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Caught an exception trying to switch IDs"

    invoke-virtual {v0, v4, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_105
    .catchall {:try_start_fe .. :try_end_105} :catchall_118

    .line 156
    sput-boolean v13, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    goto/16 :goto_d

    .line 86
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_109
    :try_start_109
    new-instance v12, Lcom/sprint/w/installer/PackInfo;

    invoke-direct {v12}, Lcom/sprint/w/installer/PackInfo;-><init>()V

    .line 87
    .restart local v12       #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    .line 88
    const-string v0, "OEM"

    iput-object v0, v12, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;
    :try_end_116
    .catchall {:try_start_109 .. :try_end_116} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_116} :catch_fd

    goto/16 :goto_3a

    .line 156
    .end local v7           #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    .end local v12           #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :catchall_118
    move-exception v0

    sput-boolean v13, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    throw v0

    .restart local v7       #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    .restart local v12       #tmpPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_11c
    move-object v10, v12

    .line 92
    goto/16 :goto_3d

    .restart local v10       #newPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_11f
    move v9, v13

    .line 95
    goto/16 :goto_3f

    .line 105
    .restart local v9       #isFirstTimeSwitchingPacks:Z
    :cond_122
    :try_start_122
    iget-object v6, v7, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    .restart local v6       #currentPackId:Ljava/lang/String;
    goto/16 :goto_55

    .line 133
    :cond_126
    if-nez v9, :cond_133

    .line 134
    invoke-direct {p0, v10}, Lcom/sprint/w/installer/SwitchIDThread;->loadContent(Lcom/sprint/w/installer/PackInfo;)V

    .line 135
    iget-object v0, v10, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/SwitchIDThread;->loadHomeScreenConfig(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_122 .. :try_end_130} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_130} :catch_fd

    .line 137
    :try_start_130
    invoke-direct {p0, v10}, Lcom/sprint/w/installer/SwitchIDThread;->loadNewWallpaper(Lcom/sprint/w/installer/PackInfo;)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_118
    .catch Ljava/lang/RuntimeException; {:try_start_130 .. :try_end_133} :catch_142
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_fd

    .line 141
    :cond_133
    :goto_133
    const/4 v0, 0x0

    :try_start_134
    sput-boolean v0, Lcom/sprint/w/installer/SwitchIDThread;->sBusy:Z

    .line 142
    iget-boolean v0, p0, Lcom/sprint/w/installer/SwitchIDThread;->restart:Z

    if-eqz v0, :cond_af

    .line 143
    invoke-direct {p0}, Lcom/sprint/w/installer/SwitchIDThread;->startHome()V
    :try_end_13d
    .catchall {:try_start_134 .. :try_end_13d} :catchall_118
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_13d} :catch_fd

    goto/16 :goto_af

    .line 122
    :catch_13f
    move-exception v0

    goto/16 :goto_7f

    .line 138
    :catch_142
    move-exception v0

    goto :goto_133
.end method

.method public saveCurrentLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 455
    const-string v9, "wallpaper"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/WallpaperManager;

    .line 456
    .local v8, wpm:Landroid/app/WallpaperManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wp-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, packTxtFile:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wp-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, packPngFile:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "th-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, packThumbFile:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    .line 461
    .local v7, paperInfo:Landroid/app/WallpaperInfo;
    if-eqz v7, :cond_77

    .line 462
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 463
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 464
    invoke-virtual {p1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 465
    const/4 v2, 0x0

    .line 467
    .local v2, out:Ljava/io/PrintStream;
    :try_start_5e
    new-instance v3, Ljava/io/PrintStream;

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_88
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_68} :catch_78

    .line 468
    .end local v2           #out:Ljava/io/PrintStream;
    .local v3, out:Ljava/io/PrintStream;
    :try_start_68
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_93
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_72} :catch_96

    .line 473
    if-eqz v3, :cond_77

    .line 475
    :try_start_74
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_8f

    .line 481
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v3           #out:Ljava/io/PrintStream;
    :cond_77
    :goto_77
    return-void

    .line 470
    .restart local v0       #comp:Landroid/content/ComponentName;
    .restart local v2       #out:Ljava/io/PrintStream;
    :catch_78
    move-exception v1

    .line 471
    .local v1, e:Ljava/io/IOException;
    :goto_79
    :try_start_79
    iget-object v9, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Error saving Live Wallpaper info"

    invoke-virtual {v9, v10, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_88

    .line 473
    if-eqz v2, :cond_77

    .line 475
    :try_start_82
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_77

    .line 476
    :catch_86
    move-exception v9

    goto :goto_77

    .line 473
    .end local v1           #e:Ljava/io/IOException;
    :catchall_88
    move-exception v9

    :goto_89
    if-eqz v2, :cond_8e

    .line 475
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_91

    .line 477
    :cond_8e
    :goto_8e
    throw v9

    .line 476
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catch_8f
    move-exception v9

    goto :goto_77

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    :catch_91
    move-exception v10

    goto :goto_8e

    .line 473
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catchall_93
    move-exception v9

    move-object v2, v3

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    goto :goto_89

    .line 470
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catch_96
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    goto :goto_79
.end method

.method public saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 484
    const/4 v6, 0x1

    invoke-static {p1, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 485
    .local v1, defaultRingtone:Landroid/net/Uri;
    const/4 v6, 0x2

    invoke-static {p1, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 486
    .local v0, defaultNotification:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 488
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-ringtone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, packRingtoneFile:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 490
    if-eqz v1, :cond_30

    .line 491
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 493
    :cond_30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_67

    .line 497
    if-eqz v3, :cond_39

    .line 499
    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_95

    .line 502
    :goto_38
    const/4 v3, 0x0

    .line 506
    .end local v5           #packRingtoneFile:Ljava/lang/String;
    :cond_39
    :goto_39
    :try_start_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, packNotificationFile:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 508
    if-eqz v0, :cond_5e

    .line 509
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 511
    :cond_5e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_61
    .catchall {:try_start_39 .. :try_end_61} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_61} :catch_7e

    .line 515
    if-eqz v3, :cond_66

    .line 517
    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_9b

    .line 522
    .end local v4           #packNotificationFile:Ljava/lang/String;
    :cond_66
    :goto_66
    return-void

    .line 494
    :catch_67
    move-exception v2

    .line 495
    .local v2, e:Ljava/lang/Exception;
    :try_start_68
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error saving current ringtone Uri"

    invoke-virtual {v6, v7, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_76

    .line 497
    if-eqz v3, :cond_39

    .line 499
    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_97

    .line 502
    :goto_74
    const/4 v3, 0x0

    goto :goto_39

    .line 497
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_76
    move-exception v6

    if-eqz v3, :cond_7d

    .line 499
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_99

    .line 502
    :goto_7c
    const/4 v3, 0x0

    :cond_7d
    throw v6

    .line 512
    :catch_7e
    move-exception v2

    .line 513
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_7f
    iget-object v6, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error saving current notification Uri"

    invoke-virtual {v6, v7, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8e

    .line 515
    if-eqz v3, :cond_66

    .line 517
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_66

    .line 518
    :catch_8c
    move-exception v6

    goto :goto_66

    .line 515
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_8e
    move-exception v6

    if-eqz v3, :cond_94

    .line 517
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_9d

    .line 519
    :cond_94
    :goto_94
    throw v6

    .line 500
    .restart local v5       #packRingtoneFile:Ljava/lang/String;
    :catch_95
    move-exception v6

    goto :goto_38

    .end local v5           #packRingtoneFile:Ljava/lang/String;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_97
    move-exception v6

    goto :goto_74

    .end local v2           #e:Ljava/lang/Exception;
    :catch_99
    move-exception v7

    goto :goto_7c

    .line 518
    .restart local v4       #packNotificationFile:Ljava/lang/String;
    :catch_9b
    move-exception v6

    goto :goto_66

    .end local v4           #packNotificationFile:Ljava/lang/String;
    :catch_9d
    move-exception v7

    goto :goto_94
.end method

.method public saveHomeScreenConfig(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13
    .parameter "activity"
    .parameter "packId"

    .prologue
    .line 431
    iget-object v7, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving home for pack ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 432
    const-string v6, "packId=?"

    .line 433
    .local v6, selection:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v0, v7

    .line 437
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 440
    .local v5, rowsDeleted:I
    :try_start_2a
    iget-object v7, p0, Lcom/sprint/w/installer/SwitchIDThread;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v7}, Lcom/sprint/id/ISprintIDService;->getCurrentDesktopContainerItems()Ljava/util/List;

    move-result-object v3

    .line 441
    .local v3, favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_5d

    .line 442
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 443
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "packId"

    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {v1}, Lcom/sprint/w/installer/ContentValuesFactory;->forDB(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_54} :catch_55

    goto :goto_36

    .line 448
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_55
    move-exception v2

    .line 450
    .local v2, e:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/sprint/w/installer/SwitchIDThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Remote Error trying to get the current favorites"

    invoke-virtual {v7, v8, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_5d
    return-void
.end method
