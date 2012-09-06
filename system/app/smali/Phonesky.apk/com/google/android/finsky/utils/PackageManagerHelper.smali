.class public Lcom/google/android/finsky/utils/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;,
        Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/net/Uri;J)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifySize(Landroid/content/Context;Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->isAlreadyInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 362
    new-instance v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v12

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v12, v13}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 365
    .local v1, actionAnalyzer:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    iget-boolean v12, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-nez v12, :cond_1c

    .line 402
    :goto_1b
    return-void

    .line 369
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 373
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    :try_start_21
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 377
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 378
    .local v10, res:Landroid/content/res/Resources;
    iget v12, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, iconResourceName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 380
    .local v8, launchIntent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget v7, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 381
    .local v7, labelResourceId:I
    if-eqz v7, :cond_86

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 385
    .local v11, shortcutName:Ljava/lang/CharSequence;
    :goto_48
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v6, installShortcut:Landroid/content/Intent;
    const-string v12, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 387
    const-string v12, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v6, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    new-instance v4, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v4}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 389
    .local v4, icon:Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 390
    iput-object v5, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 391
    const-string v12, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v6, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    const-string v12, "duplicate"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_74
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_74} :catch_75
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_74} :catch_8b

    goto :goto_1b

    .line 395
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v4           #icon:Landroid/content/Intent$ShortcutIconResource;
    .end local v5           #iconResourceName:Ljava/lang/String;
    .end local v6           #installShortcut:Landroid/content/Intent;
    .end local v7           #labelResourceId:I
    .end local v8           #launchIntent:Landroid/content/Intent;
    .end local v10           #res:Landroid/content/res/Resources;
    .end local v11           #shortcutName:Ljava/lang/CharSequence;
    :catch_75
    move-exception v3

    .line 397
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v12, "Unable to load resources: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    .line 381
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #iconResourceName:Ljava/lang/String;
    .restart local v7       #labelResourceId:I
    .restart local v8       #launchIntent:Landroid/content/Intent;
    .restart local v10       #res:Landroid/content/res/Resources;
    :cond_86
    :try_start_86
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_89
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_86 .. :try_end_89} :catch_75
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8b

    move-result-object v11

    goto :goto_48

    .line 398
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v5           #iconResourceName:Ljava/lang/String;
    .end local v7           #labelResourceId:I
    .end local v8           #launchIntent:Landroid/content/Intent;
    .end local v10           #res:Landroid/content/res/Resources;
    :catch_8b
    move-exception v3

    .line 400
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "addAppShortcut failed"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method private static getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 345
    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 346
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 347
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_11

    .line 356
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    :cond_10
    :goto_10
    return-object v4

    .line 350
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #packageManager:Landroid/content/pm/PackageManager;
    :cond_11
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 351
    .local v1, appLabel:Ljava/lang/CharSequence;
    if-eqz v1, :cond_10

    .line 354
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result-object v4

    goto :goto_10

    .line 355
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appLabel:Ljava/lang/CharSequence;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    :catch_1c
    move-exception v2

    .line 356
    .local v2, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_10
.end method

.method private static getInstallFailMessageId(I)I
    .registers 5
    .parameter "returnCode"

    .prologue
    const v3, 0x7f0700bc

    const v0, 0x7f0700af

    const v2, 0x7f0700bb

    const v1, 0x7f0700b0

    .line 437
    sparse-switch p0, :sswitch_data_6c

    .line 498
    const/4 v0, -0x1

    :goto_10
    :sswitch_10
    return v0

    :sswitch_11
    move v0, v1

    .line 441
    goto :goto_10

    .line 443
    :sswitch_13
    const v0, 0x7f0700b1

    goto :goto_10

    .line 445
    :sswitch_17
    const v0, 0x7f0700b2

    goto :goto_10

    .line 449
    :sswitch_1b
    const v0, 0x7f0700b3

    goto :goto_10

    .line 451
    :sswitch_1f
    const v0, 0x7f0700b4

    goto :goto_10

    .line 453
    :sswitch_23
    const v0, 0x7f0700b5

    goto :goto_10

    .line 455
    :sswitch_27
    const v0, 0x7f0700b6

    goto :goto_10

    :sswitch_2b
    move v0, v1

    .line 457
    goto :goto_10

    .line 459
    :sswitch_2d
    const v0, 0x7f0700b7

    goto :goto_10

    .line 461
    :sswitch_31
    const v0, 0x7f0700b8

    goto :goto_10

    .line 463
    :sswitch_35
    const v0, 0x7f0700b9

    goto :goto_10

    .line 465
    :sswitch_39
    const v0, 0x7f0700ba

    goto :goto_10

    :sswitch_3d
    move v0, v1

    .line 467
    goto :goto_10

    :sswitch_3f
    move v0, v2

    .line 469
    goto :goto_10

    :sswitch_41
    move v0, v3

    .line 471
    goto :goto_10

    .line 473
    :sswitch_43
    const v0, 0x7f0700bd

    goto :goto_10

    :sswitch_47
    move v0, v3

    .line 475
    goto :goto_10

    .line 477
    :sswitch_49
    const v0, 0x7f0700be

    goto :goto_10

    :sswitch_4d
    move v0, v1

    .line 479
    goto :goto_10

    :sswitch_4f
    move v0, v2

    .line 481
    goto :goto_10

    :sswitch_51
    move v0, v2

    .line 483
    goto :goto_10

    .line 485
    :sswitch_53
    const v0, 0x7f0700bf

    goto :goto_10

    .line 487
    :sswitch_57
    const v0, 0x7f0700c0

    goto :goto_10

    .line 490
    :sswitch_5b
    const v0, 0x7f0700c1

    goto :goto_10

    .line 492
    :sswitch_5f
    const v0, 0x7f0700c4

    goto :goto_10

    .line 494
    :sswitch_63
    const v0, 0x7f0700c3

    goto :goto_10

    .line 496
    :sswitch_67
    const v0, 0x7f0700c5

    goto :goto_10

    .line 437
    nop

    :sswitch_data_6c
    .sparse-switch
        -0x6d -> :sswitch_51
        -0x6c -> :sswitch_4f
        -0x6b -> :sswitch_4d
        -0x6a -> :sswitch_49
        -0x69 -> :sswitch_47
        -0x68 -> :sswitch_43
        -0x67 -> :sswitch_41
        -0x65 -> :sswitch_3f
        -0x64 -> :sswitch_3d
        -0x17 -> :sswitch_67
        -0x16 -> :sswitch_63
        -0x15 -> :sswitch_5f
        -0x14 -> :sswitch_5b
        -0x13 -> :sswitch_5b
        -0x12 -> :sswitch_57
        -0x11 -> :sswitch_53
        -0x10 -> :sswitch_39
        -0xe -> :sswitch_35
        -0xd -> :sswitch_31
        -0xc -> :sswitch_2d
        -0xb -> :sswitch_2b
        -0xa -> :sswitch_27
        -0x9 -> :sswitch_23
        -0x8 -> :sswitch_1f
        -0x7 -> :sswitch_1b
        -0x5 -> :sswitch_10
        -0x4 -> :sswitch_17
        -0x3 -> :sswitch_13
        -0x2 -> :sswitch_11
        -0x1 -> :sswitch_10
    .end sparse-switch
.end method

.method public static installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)V
    .registers 24
    .parameter "contentUri"
    .parameter "title"
    .parameter "expectedSize"
    .parameter "expectedSignature"
    .parameter "doNotifications"
    .parameter "postInstallCallback"
    .parameter "isUpdate"
    .parameter "isForwardLocked"
    .parameter "packageName"
    .parameter "encryptionParams"

    .prologue
    .line 84
    if-nez p6, :cond_7

    .line 85
    new-instance p6, Lcom/google/android/finsky/utils/PackageManagerHelper$1;

    .end local p6
    invoke-direct/range {p6 .. p6}, Lcom/google/android/finsky/utils/PackageManagerHelper$1;-><init>()V

    .line 89
    .restart local p6
    :cond_7
    new-instance v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;Lcom/google/android/finsky/utils/PackageManagerHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method private static isAlreadyInstalled(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, isAlreadyInstalled:Z
    if-eqz p0, :cond_14

    .line 335
    :try_start_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_17

    move-result-object v2

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    .line 340
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 335
    goto :goto_14

    .line 338
    :catch_17
    move-exception v1

    goto :goto_14
.end method

.method private static notifyFailedInstall(Ljava/lang/String;I)V
    .registers 9
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 405
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getInstallFailMessageId(I)I

    move-result v2

    .line 406
    .local v2, messageId:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 407
    .local v0, ctx:Landroid/content/Context;
    if-ltz v2, :cond_20

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, message:Ljava/lang/String;
    :goto_e
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$2;

    invoke-direct {v4, p1, p0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void

    .line 407
    .end local v1           #message:Ljava/lang/String;
    :cond_20
    const v3, 0x7f0700c2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static uninstallPackage(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 508
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/utils/PackageManagerUtils;->uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public static verifyApk(Ljava/io/InputStream;JLjava/lang/String;)Z
    .registers 9
    .parameter "input"
    .parameter "expectSize"
    .parameter "expectSignature"

    .prologue
    const/4 v3, 0x0

    .line 104
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v0, bufferedInput:Ljava/io/BufferedInputStream;
    invoke-static {v0, p3, p1, p2}, Lcom/google/android/finsky/utils/Sha1Util;->verify(Ljava/io/InputStream;Ljava/lang/String;J)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_19

    move-result v2

    .line 109
    if-eqz p0, :cond_f

    .line 111
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 114
    .end local v0           #bufferedInput:Ljava/io/BufferedInputStream;
    :cond_f
    :goto_f
    return v2

    .line 112
    .restart local v0       #bufferedInput:Ljava/io/BufferedInputStream;
    :catch_10
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/IOException;
    const-string v4, "IOException in finally block."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 106
    .end local v0           #bufferedInput:Ljava/io/BufferedInputStream;
    .end local v1           #e:Ljava/io/IOException;
    :catch_19
    move-exception v1

    .line 109
    .restart local v1       #e:Ljava/io/IOException;
    if-eqz p0, :cond_1f

    .line 111
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    :cond_1f
    :goto_1f
    move v2, v3

    .line 114
    goto :goto_f

    .line 112
    :catch_21
    move-exception v1

    .line 113
    const-string v2, "IOException in finally block."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 109
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2a
    move-exception v2

    if-eqz p0, :cond_30

    .line 111
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 114
    :cond_30
    :goto_30
    throw v2

    .line 112
    :catch_31
    move-exception v1

    .line 113
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "IOException in finally block."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30
.end method

.method private static verifySize(Landroid/content/Context;Landroid/net/Uri;J)Z
    .registers 11
    .parameter "context"
    .parameter "contentUri"
    .parameter "expectedSize"

    .prologue
    const/4 v4, 0x0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 126
    .local v3, in:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    .line 127
    .local v1, fileSize:J
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_1a

    .line 128
    cmp-long v5, p2, v1

    if-nez v5, :cond_17

    const/4 v4, 0x1

    .line 132
    .end local v1           #fileSize:J
    .end local v3           #in:Landroid/os/ParcelFileDescriptor;
    :cond_17
    :goto_17
    return v4

    .line 129
    :catch_18
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_17

    .line 131
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1a
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/IOException;
    goto :goto_17
.end method
