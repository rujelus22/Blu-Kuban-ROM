.class Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopItemsLoader"
.end annotation


# instance fields
.field private final mIsLaunching:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadApplications:Z

.field private final mLocaleChanged:Z

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;ZZZ)V
    .registers 9
    .parameter
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"
    .parameter "isLaunching"

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    .line 1320
    iput-boolean p5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    .line 1321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 1323
    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    .line 1325
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopItemsLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    return v0
.end method


# virtual methods
.method public canContinue()Z
    .registers 2

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isRunning()Z
    .registers 2

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 80

    .prologue
    .line 1344
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DesktopItemsLoader.run: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/Launcher;

    .line 1349
    .local v11, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-nez v11, :cond_34

    .line 1350
    const-string v4, "Launcher.LauncherModel"

    const-string v6, "Launcher destroyed before DesktopItemsLoader.run"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :goto_33
    return-void

    .line 1353
    :cond_34
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1354
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v61

    .line 1355
    .local v61, manager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v61 .. v61}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v54

    .line 1356
    .local v54, isSafeMode:Z
    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v30

    .line 1358
    .local v30, awmanager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    if-eqz v4, :cond_4f

    .line 1359
    move-object/from16 v0, v61

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    invoke-static {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 1362
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;
    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1702(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;
    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1802(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1902(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;
    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2002(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v39

    .line 1368
    .local v39, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v38

    .line 1369
    .local v38, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v40

    .line 1371
    .local v40, desktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1374
    .local v5, c:Landroid/database/Cursor;
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v69

    .line 1375
    .local v69, screenCount:I
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    .local v65, removedLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_ae
    const-string v4, "_id"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 1379
    .local v49, idIndex:I
    const-string v4, "intent"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    .line 1380
    .local v53, intentIndex:I
    const-string v4, "title"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v74

    .line 1381
    .local v74, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1383
    .local v7, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1384
    .local v10, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1386
    .local v8, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1388
    .local v9, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1390
    .local v34, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 1392
    .local v56, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 1394
    .local v28, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v70

    .line 1395
    .local v70, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 1396
    .local v31, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1397
    .local v32, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v72

    .line 1398
    .local v72, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v73

    .line 1399
    .local v73, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v77

    .line 1400
    .local v77, uriIndex:I
    const-string v4, "displayMode"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 1404
    .local v41, displayModeIndex:I
    const-string v4, "isShortcut"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v71

    .line 1408
    .local v71, shortCut:I
    const-string v4, "multipleSize"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v60

    .line 1419
    .local v60, longMsIndex:I
    const-string v59, ""

    .line 1420
    .local v59, lastPackage:Ljava/lang/String;
    const-wide/16 v57, 0x0

    .line 1422
    .local v57, lastFirstInstallTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v45

    .line 1424
    .local v45, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    :goto_12c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_6b0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_135
    .catchall {:try_start_ae .. :try_end_135} :catchall_190

    move-result v4

    if-eqz v4, :cond_6b0

    .line 1426
    :try_start_138
    move/from16 v0, v56

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 1428
    .local v55, itemType:I
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v0, v69

    if-lt v4, v0, :cond_195

    .line 1429
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed invalid screen; itemType: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_181
    .catchall {:try_start_138 .. :try_end_181} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_181} :catch_182

    goto :goto_12c

    .line 1749
    .end local v55           #itemType:I
    :catch_182
    move-exception v42

    .line 1750
    .local v42, e:Ljava/lang/Exception;
    :try_start_183
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->printStackTrace()V

    .line 1751
    const-string v4, "Launcher"

    const-string v6, "Desktop items loading interrupted:"

    move-object/from16 v0, v42

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18f
    .catchall {:try_start_183 .. :try_end_18f} :catchall_190

    goto :goto_12c

    .line 1755
    .end local v7           #iconTypeIndex:I
    .end local v8           #iconPackageIndex:I
    .end local v9           #iconResourceIndex:I
    .end local v10           #iconIndex:I
    .end local v28           #appWidgetIdIndex:I
    .end local v31           #cellXIndex:I
    .end local v32           #cellYIndex:I
    .end local v34           #containerIndex:I
    .end local v41           #displayModeIndex:I
    .end local v42           #e:Ljava/lang/Exception;
    .end local v45           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    .end local v49           #idIndex:I
    .end local v53           #intentIndex:I
    .end local v56           #itemTypeIndex:I
    .end local v57           #lastFirstInstallTime:J
    .end local v59           #lastPackage:Ljava/lang/String;
    .end local v60           #longMsIndex:I
    .end local v70           #screenIndex:I
    .end local v71           #shortCut:I
    .end local v72           #spanXIndex:I
    .end local v73           #spanYIndex:I
    .end local v74           #titleIndex:I
    .end local v77           #uriIndex:I
    :catchall_190
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1434
    .restart local v7       #iconTypeIndex:I
    .restart local v8       #iconPackageIndex:I
    .restart local v9       #iconResourceIndex:I
    .restart local v10       #iconIndex:I
    .restart local v28       #appWidgetIdIndex:I
    .restart local v31       #cellXIndex:I
    .restart local v32       #cellYIndex:I
    .restart local v34       #containerIndex:I
    .restart local v41       #displayModeIndex:I
    .restart local v45       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    .restart local v49       #idIndex:I
    .restart local v53       #intentIndex:I
    .restart local v55       #itemType:I
    .restart local v56       #itemTypeIndex:I
    .restart local v57       #lastFirstInstallTime:J
    .restart local v59       #lastPackage:Ljava/lang/String;
    .restart local v60       #longMsIndex:I
    .restart local v70       #screenIndex:I
    .restart local v71       #shortCut:I
    .restart local v72       #spanXIndex:I
    .restart local v73       #spanYIndex:I
    .restart local v74       #titleIndex:I
    .restart local v77       #uriIndex:I
    :cond_195
    sparse-switch v55, :sswitch_data_7aa

    goto :goto_12c

    .line 1437
    :sswitch_199
    :try_start_199
    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_19e
    .catchall {:try_start_199 .. :try_end_19e} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_19e} :catch_182

    move-result-object v52

    .line 1439
    .local v52, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_1a0
    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1a5
    .catchall {:try_start_1a0 .. :try_end_1a5} :catchall_190
    .catch Ljava/net/URISyntaxException; {:try_start_1a0 .. :try_end_1a5} :catch_1ed
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a5} :catch_182

    move-result-object v51

    .line 1447
    .local v51, intent:Landroid/content/Intent;
    if-nez v55, :cond_229

    .line 1448
    :try_start_1a8
    move-object/from16 v0, v61

    move-object/from16 v1, v51

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v0, v1, v11}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2100(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v50

    .line 1454
    .local v50, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_1b0
    if-nez v50, :cond_234

    .line 1456
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignore favorites id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", intent: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1440
    .end local v50           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v51           #intent:Landroid/content/Intent;
    :catch_1ed
    move-exception v42

    .line 1441
    .local v42, e:Ljava/net/URISyntaxException;
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URI syntax error: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1450
    .end local v42           #e:Ljava/net/URISyntaxException;
    .restart local v51       #intent:Landroid/content/Intent;
    :cond_229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v6, v11

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2200(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v50

    .restart local v50       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto/16 :goto_1b0

    .line 1460
    :cond_234
    const/4 v4, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v66

    .line 1462
    .local v66, resolveInfo:Landroid/content/pm/ResolveInfo;
    move/from16 v0, v74

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1463
    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIntent(Landroid/content/Intent;)V

    .line 1465
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v50

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1466
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1467
    .local v33, container:I
    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v50

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1468
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v50

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1469
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v50

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1470
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v50

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1474
    move-object/from16 v0, v50

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    if-nez v4, :cond_2cc

    if-eqz v66, :cond_2cc

    .line 1476
    move-object/from16 v0, v66

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v43, v0

    .line 1477
    .local v43, flag:I
    and-int/lit8 v4, v43, 0x1

    if-nez v4, :cond_29c

    move/from16 v0, v43

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2ea

    .line 1479
    :cond_29c
    const/4 v4, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 1487
    :goto_2a2
    const-string v25, "com.android.stk"

    .line 1488
    .local v25, STKPackageName:Ljava/lang/String;
    const/16 v24, 0x0

    .line 1489
    .local v24, STKExistInfo:Z
    const/16 v23, 0x1

    .line 1490
    .local v23, NoSim:I
    const/16 v26, 0x5

    .line 1491
    .local v26, SimExist:I
    const-string v4, "phone"

    invoke-virtual {v11, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/telephony/TelephonyManager;

    .line 1493
    .local v75, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v66

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.stk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cc

    .line 1495
    const-string v4, "gsm.STK_SETUP_MENU"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2f1

    .line 1517
    .end local v23           #NoSim:I
    .end local v24           #STKExistInfo:Z
    .end local v25           #STKPackageName:Ljava/lang/String;
    .end local v26           #SimExist:I
    .end local v43           #flag:I
    .end local v75           #tm:Landroid/telephony/TelephonyManager;
    :cond_2cc
    packed-switch v33, :pswitch_data_7c8

    .line 1549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v45

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-static {v4, v0, v12, v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v44

    .line 1551
    .local v44, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v44

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 1555
    .end local v44           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :goto_2e3
    move-object/from16 v0, v50

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    invoke-static {v0, v11}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2400(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    goto/16 :goto_12c

    .line 1481
    .restart local v43       #flag:I
    :cond_2ea
    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    goto :goto_2a2

    .line 1498
    .restart local v23       #NoSim:I
    .restart local v24       #STKExistInfo:Z
    .restart local v25       #STKPackageName:Ljava/lang/String;
    .restart local v26       #SimExist:I
    .restart local v75       #tm:Landroid/telephony/TelephonyManager;
    :cond_2f1
    invoke-virtual/range {v75 .. v75}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_30e

    .line 1499
    const/16 v24, 0x1

    .line 1505
    :cond_2fa
    :goto_2fa
    if-eqz v24, :cond_30a

    .line 1506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1507
    move-object/from16 v0, v50

    invoke-static {v11, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1509
    :cond_30a
    const/16 v24, 0x1

    .line 1510
    goto/16 :goto_12c

    .line 1500
    :cond_30e
    invoke-virtual/range {v75 .. v75}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_2fa

    .line 1503
    const/16 v24, 0x1

    goto :goto_2fa

    .line 1519
    .end local v23           #NoSim:I
    .end local v24           #STKExistInfo:Z
    .end local v25           #STKPackageName:Ljava/lang/String;
    .end local v26           #SimExist:I
    .end local v43           #flag:I
    .end local v75           #tm:Landroid/telephony/TelephonyManager;
    :pswitch_318
    invoke-static/range {v51 .. v51}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1524
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_33f

    .line 1525
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_347

    .line 1526
    move-object/from16 v0, v50

    move-wide/from16 v1, v57

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    .line 1542
    :goto_339
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 1545
    :cond_33f
    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e3

    .line 1528
    :cond_347
    const-wide/16 v36, 0x0

    .line 1529
    .local v36, createTime:J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_34b
    .catchall {:try_start_1a8 .. :try_end_34b} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_34b} :catch_182

    const/16 v6, 0x9

    if-lt v4, v6, :cond_35f

    .line 1531
    :try_start_34f
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2000

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v0, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v36, v0
    :try_end_35f
    .catchall {:try_start_34f .. :try_end_35f} :catchall_190
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34f .. :try_end_35f} :catch_7a7
    .catch Ljava/lang/Exception; {:try_start_34f .. :try_end_35f} :catch_182

    .line 1540
    :cond_35f
    :goto_35f
    :try_start_35f
    move-object/from16 v0, v50

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    goto :goto_339

    .line 1561
    .end local v33           #container:I
    .end local v36           #createTime:J
    .end local v50           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v51           #intent:Landroid/content/Intent;
    .end local v52           #intentDescription:Ljava/lang/String;
    .end local v66           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :sswitch_367
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 1562
    .local v47, id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v45

    move-wide/from16 v1, v47

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v44

    .line 1564
    .restart local v44       #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move/from16 v0, v74

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1566
    move-wide/from16 v0, v47

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1567
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1568
    .restart local v33       #container:I
    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v44

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1569
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1570
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1571
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1575
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3c6

    .line 1576
    move/from16 v0, v71

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    .line 1578
    :cond_3c6
    packed-switch v33, :pswitch_data_7ce

    goto/16 :goto_12c

    .line 1580
    :pswitch_3cb
    move-object/from16 v0, v39

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1587
    .end local v33           #container:I
    .end local v44           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v47           #id:J
    :sswitch_3d4
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 1589
    .restart local v47       #id:J
    move/from16 v0, v77

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v76

    .line 1592
    .local v76, uri:Landroid/net/Uri;
    invoke-virtual/range {v76 .. v76}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v63

    .line 1595
    .local v63, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v63, :cond_3fe

    if-nez v54, :cond_3fe

    .line 1596
    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1599
    :cond_3fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v45

    move-wide/from16 v1, v47

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2500(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v16

    .line 1602
    .local v16, liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_40f
    .catchall {:try_start_35f .. :try_end_40f} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_40f} :catch_182

    move-result-object v52

    .line 1603
    .restart local v52       #intentDescription:Ljava/lang/String;
    const/16 v51, 0x0

    .line 1604
    .restart local v51       #intent:Landroid/content/Intent;
    if-eqz v52, :cond_41b

    .line 1606
    const/4 v4, 0x0

    :try_start_415
    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_41a
    .catchall {:try_start_415 .. :try_end_41a} :catchall_190
    .catch Ljava/net/URISyntaxException; {:try_start_415 .. :try_end_41a} :catch_7a4
    .catch Ljava/lang/Exception; {:try_start_415 .. :try_end_41a} :catch_182

    move-result-object v51

    .line 1614
    :cond_41b
    :goto_41b
    :try_start_41b
    move/from16 v0, v74

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1615
    move-wide/from16 v0, v47

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1616
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1617
    .restart local v33       #container:I
    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1618
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1619
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1620
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1621
    move/from16 v0, v77

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1622
    move-object/from16 v0, v51

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1623
    move/from16 v0, v41

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    move-object v12, v5

    move v13, v7

    move v14, v8

    move v15, v9

    .line 1625
    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    invoke-static/range {v11 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2600(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    .line 1628
    packed-switch v33, :pswitch_data_7d4

    goto/16 :goto_12c

    .line 1630
    :pswitch_481
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1636
    .end local v16           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v33           #container:I
    .end local v47           #id:J
    .end local v51           #intent:Landroid/content/Intent;
    .end local v52           #intentDescription:Ljava/lang/String;
    .end local v63           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v76           #uri:Landroid/net/Uri;
    :sswitch_48a
    invoke-static {}, Lcom/sec/android/app/twlauncher/Widget;->makeSearch()Lcom/sec/android/app/twlauncher/Widget;

    move-result-object v78

    .line 1638
    .local v78, widgetInfo:Lcom/sec/android/app/twlauncher/Widget;
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1639
    .restart local v33       #container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_4a3

    .line 1640
    const-string v4, "Launcher"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP  ignoring!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 1645
    :cond_4a3
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v78

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1646
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1647
    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v78

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1648
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1649
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1651
    move-object/from16 v0, v39

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1654
    .end local v33           #container:I
    .end local v78           #widgetInfo:Lcom/sec/android/app/twlauncher/Widget;
    :sswitch_4db
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 1657
    .restart local v47       #id:J
    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1659
    .local v27, appWidgetId:I
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v62

    .line 1662
    .local v62, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v54, :cond_534

    if-eqz v62, :cond_503

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_503

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_534

    .line 1665
    :cond_503
    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v47

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " appWidgetId="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1671
    :cond_534
    new-instance v29, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(ILjava/lang/String;)V

    .line 1672
    .local v29, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v29

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1673
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1674
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1675
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1676
    move/from16 v0, v72

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1677
    move/from16 v0, v73

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1678
    move/from16 v0, v60

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v29

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    .line 1680
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1681
    .restart local v33       #container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_5a0

    .line 1682
    const-string v4, "Launcher"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 1686
    :cond_5a0
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v12, v4

    move-object/from16 v0, v29

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1688
    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1690
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1694
    .end local v27           #appWidgetId:I
    .end local v29           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .end local v33           #container:I
    .end local v47           #id:J
    .end local v62           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_5c0
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 1696
    .restart local v47       #id:J
    new-instance v68, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct/range {v68 .. v68}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 1697
    .local v68, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-wide/from16 v0, v47

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1698
    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1699
    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1700
    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1701
    move/from16 v0, v72

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1702
    move/from16 v0, v73

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1707
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1708
    .restart local v33       #container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_618

    .line 1709
    const-string v4, "Launcher"

    const-string v6, "SamsungWidget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 1713
    :cond_618
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v12, v4

    move-object/from16 v0, v68

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1715
    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_628
    .catchall {:try_start_41b .. :try_end_628} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_41b .. :try_end_628} :catch_182

    move-result-object v52

    .line 1716
    .restart local v52       #intentDescription:Ljava/lang/String;
    const/16 v51, 0x0

    .line 1718
    .restart local v51       #intent:Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_62c
    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_631
    .catchall {:try_start_62c .. :try_end_631} :catchall_190
    .catch Ljava/net/URISyntaxException; {:try_start_62c .. :try_end_631} :catch_668
    .catch Ljava/lang/Exception; {:try_start_62c .. :try_end_631} :catch_182

    move-result-object v51

    .line 1722
    :try_start_632
    move-object/from16 v0, v51

    move-object/from16 v1, v68

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 1725
    const/4 v4, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v67

    .line 1726
    .local v67, ri:Landroid/content/pm/ResolveInfo;
    if-nez v67, :cond_66b

    .line 1727
    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t resolve SamsungWidget\'s activity. Deleting it. id:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v47

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_666
    .catchall {:try_start_632 .. :try_end_666} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_632 .. :try_end_666} :catch_182

    goto/16 :goto_12c

    .line 1719
    .end local v67           #ri:Landroid/content/pm/ResolveInfo;
    :catch_668
    move-exception v42

    .restart local v42       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_12c

    .line 1734
    .end local v42           #e:Ljava/net/URISyntaxException;
    .restart local v67       #ri:Landroid/content/pm/ResolveInfo;
    :cond_66b
    :try_start_66b
    move-object/from16 v0, v67

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_677
    .catchall {:try_start_66b .. :try_end_677} :catchall_190
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66b .. :try_end_677} :catch_68a
    .catch Ljava/lang/Exception; {:try_start_66b .. :try_end_677} :catch_182

    .line 1744
    :try_start_677
    move-object/from16 v0, v67

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v68

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1746
    move-object/from16 v0, v40

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    .line 1736
    :catch_68a
    move-exception v42

    .line 1737
    .local v42, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it. id:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v47

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6ae
    .catchall {:try_start_677 .. :try_end_6ae} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_677 .. :try_end_6ae} :catch_182

    goto/16 :goto_12c

    .line 1755
    .end local v33           #container:I
    .end local v42           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v47           #id:J
    .end local v51           #intent:Landroid/content/Intent;
    .end local v52           #intentDescription:Ljava/lang/String;
    .end local v55           #itemType:I
    .end local v67           #ri:Landroid/content/pm/ResolveInfo;
    .end local v68           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_6b0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1757
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_787

    .line 1758
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v64

    .line 1759
    .local v64, removedCount:I
    if-lez v64, :cond_6eb

    .line 1760
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    .line 1761
    .local v35, cr:Landroid/content/ContentResolver;
    const/16 v46, 0x0

    .local v46, i:I
    :goto_6c5
    move/from16 v0, v46

    move/from16 v1, v64

    if-ge v0, v1, :cond_6e8

    .line 1762
    move-object/from16 v0, v65

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    .line 1763
    .local v47, id:Ljava/lang/Long;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x0

    invoke-static {v12, v13, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1761
    add-int/lit8 v46, v46, 0x1

    goto :goto_6c5

    .line 1765
    .end local v47           #id:Ljava/lang/Long;
    :cond_6e8
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->clear()V

    .line 1771
    .end local v35           #cr:Landroid/content/ContentResolver;
    .end local v46           #i:I
    :cond_6eb
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1772
    .local v19, uiDesktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1774
    .local v20, uiDesktopWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1777
    .local v21, uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_768

    .line 1778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v6, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z
    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2702(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1780
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DesktopItemsLoader: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", items: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", widgets: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", Samsung widgets: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    new-instance v17, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;

    move-object/from16 v18, p0

    move-object/from16 v22, v11

    invoke-direct/range {v17 .. v22}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1796
    :cond_768
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    if-eqz v4, :cond_780

    .line 1798
    const-string v4, "Launcher.LauncherModel"

    const-string v6, "DesktopItemsLoader. Start applications loader"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    invoke-static {v4, v11, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2800(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V

    .line 1805
    .end local v19           #uiDesktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    .end local v20           #uiDesktopWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    .end local v21           #uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    .end local v64           #removedCount:I
    :cond_780
    :goto_780
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    goto/16 :goto_33

    .line 1803
    :cond_787
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DesktopItemsLoader stopped before loading complete: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_780

    .line 1607
    .restart local v16       #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .local v47, id:J
    .restart local v51       #intent:Landroid/content/Intent;
    .restart local v52       #intentDescription:Ljava/lang/String;
    .restart local v55       #itemType:I
    .restart local v63       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v76       #uri:Landroid/net/Uri;
    :catch_7a4
    move-exception v4

    goto/16 :goto_41b

    .line 1535
    .end local v16           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v47           #id:J
    .end local v63           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v76           #uri:Landroid/net/Uri;
    .restart local v33       #container:I
    .restart local v36       #createTime:J
    .restart local v50       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v66       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_7a7
    move-exception v4

    goto/16 :goto_35f

    .line 1434
    :sswitch_data_7aa
    .sparse-switch
        0x0 -> :sswitch_199
        0x1 -> :sswitch_199
        0x2 -> :sswitch_367
        0x3 -> :sswitch_3d4
        0x4 -> :sswitch_4db
        0x5 -> :sswitch_5c0
        0x3e9 -> :sswitch_48a
    .end sparse-switch

    .line 1517
    :pswitch_data_7c8
    .packed-switch -0x64
        :pswitch_318
    .end packed-switch

    .line 1578
    :pswitch_data_7ce
    .packed-switch -0x64
        :pswitch_3cb
    .end packed-switch

    .line 1628
    :pswitch_data_7d4
    .packed-switch -0x64
        :pswitch_481
    .end packed-switch
.end method

.method stop()V
    .registers 4

    .prologue
    .line 1329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    .line 1331
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopItemsLoader.stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return-void
.end method
