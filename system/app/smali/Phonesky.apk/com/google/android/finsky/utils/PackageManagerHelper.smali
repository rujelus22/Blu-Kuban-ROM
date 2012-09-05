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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->isAlreadyInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifySuccessfulInstall(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v12, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 283
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v7, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 287
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 288
    .local v8, res:Landroid/content/res/Resources;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, iconResourceName:Ljava/lang/String;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, appName:Ljava/lang/String;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 293
    .local v6, launchIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v5, installShortcut:Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 297
    .local v3, icon:Landroid/content/Intent$ShortcutIconResource;
    iput-object p1, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 298
    iput-object v4, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 299
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v5, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    const-string v9, "duplicate"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_46} :catch_57

    .line 310
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appName:Ljava/lang/String;
    .end local v3           #icon:Landroid/content/Intent$ShortcutIconResource;
    .end local v4           #iconResourceName:Ljava/lang/String;
    .end local v5           #installShortcut:Landroid/content/Intent;
    .end local v6           #launchIntent:Landroid/content/Intent;
    .end local v8           #res:Landroid/content/res/Resources;
    :goto_46
    return-void

    .line 303
    :catch_47
    move-exception v2

    .line 305
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "Unable to load resources: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    .line 306
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_57
    move-exception v2

    .line 308
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "addAppShortcut failed"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2, v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46
.end method

.method private static getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 263
    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 264
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 265
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_11

    .line 274
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    :cond_10
    :goto_10
    return-object v4

    .line 268
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #packageManager:Landroid/content/pm/PackageManager;
    :cond_11
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 269
    .local v1, appLabel:Ljava/lang/CharSequence;
    if-eqz v1, :cond_10

    .line 272
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result-object v4

    goto :goto_10

    .line 273
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appLabel:Ljava/lang/CharSequence;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    :catch_1c
    move-exception v2

    .line 274
    .local v2, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_10
.end method

.method protected static getInstallFailMessageId(I)I
    .registers 5
    .parameter "returnCode"

    .prologue
    const v3, 0x7f0700af

    const v0, 0x7f0700a2

    const v2, 0x7f0700ae

    const v1, 0x7f0700a3

    .line 351
    sparse-switch p0, :sswitch_data_68

    .line 410
    const/4 v0, -0x1

    :goto_10
    :sswitch_10
    return v0

    :sswitch_11
    move v0, v1

    .line 355
    goto :goto_10

    .line 357
    :sswitch_13
    const v0, 0x7f0700a4

    goto :goto_10

    .line 359
    :sswitch_17
    const v0, 0x7f0700a5

    goto :goto_10

    .line 363
    :sswitch_1b
    const v0, 0x7f0700a6

    goto :goto_10

    .line 365
    :sswitch_1f
    const v0, 0x7f0700a7

    goto :goto_10

    .line 367
    :sswitch_23
    const v0, 0x7f0700a8

    goto :goto_10

    .line 369
    :sswitch_27
    const v0, 0x7f0700a9

    goto :goto_10

    :sswitch_2b
    move v0, v1

    .line 371
    goto :goto_10

    .line 373
    :sswitch_2d
    const v0, 0x7f0700aa

    goto :goto_10

    .line 375
    :sswitch_31
    const v0, 0x7f0700ab

    goto :goto_10

    .line 377
    :sswitch_35
    const v0, 0x7f0700ac

    goto :goto_10

    .line 379
    :sswitch_39
    const v0, 0x7f0700ad

    goto :goto_10

    :sswitch_3d
    move v0, v1

    .line 381
    goto :goto_10

    :sswitch_3f
    move v0, v2

    .line 383
    goto :goto_10

    :sswitch_41
    move v0, v3

    .line 385
    goto :goto_10

    .line 387
    :sswitch_43
    const v0, 0x7f0700b0

    goto :goto_10

    :sswitch_47
    move v0, v3

    .line 389
    goto :goto_10

    .line 391
    :sswitch_49
    const v0, 0x7f0700b1

    goto :goto_10

    :sswitch_4d
    move v0, v1

    .line 393
    goto :goto_10

    :sswitch_4f
    move v0, v2

    .line 395
    goto :goto_10

    :sswitch_51
    move v0, v2

    .line 397
    goto :goto_10

    .line 399
    :sswitch_53
    const v0, 0x7f0700b2

    goto :goto_10

    .line 401
    :sswitch_57
    const v0, 0x7f0700b3

    goto :goto_10

    .line 404
    :sswitch_5b
    const v0, 0x7f0700b4

    goto :goto_10

    .line 406
    :sswitch_5f
    const v0, 0x7f0700b7

    goto :goto_10

    .line 408
    :sswitch_63
    const v0, 0x7f0700b6

    goto :goto_10

    .line 351
    nop

    :sswitch_data_68
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

.method public static installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;Z)V
    .registers 18
    .parameter "contentUri"
    .parameter "title"
    .parameter "expectedSize"
    .parameter "expectedSignature"
    .parameter "doNotifications"
    .parameter "postInstallCallback"
    .parameter "isUpdate"

    .prologue
    .line 67
    if-nez p6, :cond_7

    .line 68
    new-instance p6, Lcom/google/android/finsky/utils/PackageManagerHelper$1;

    .end local p6
    invoke-direct/range {p6 .. p6}, Lcom/google/android/finsky/utils/PackageManagerHelper$1;-><init>()V

    .line 72
    .restart local p6
    :cond_7
    new-instance v0, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLcom/google/android/finsky/utils/PackageManagerHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$OnCompleteListenerNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method private static isAlreadyInstalled(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, isAlreadyInstalled:Z
    if-eqz p0, :cond_14

    .line 253
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

    .line 258
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 253
    goto :goto_14

    .line 256
    :catch_17
    move-exception v1

    goto :goto_14
.end method

.method protected static notifyFailedInstall(Ljava/lang/String;I)V
    .registers 9
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 319
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getInstallFailMessageId(I)I

    move-result v2

    .line 320
    .local v2, messageId:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 321
    .local v0, ctx:Landroid/content/Context;
    if-ltz v2, :cond_20

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, message:Ljava/lang/String;
    :goto_e
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/google/android/finsky/utils/PackageManagerHelper$2;

    invoke-direct {v4, p1, p0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void

    .line 321
    .end local v1           #message:Ljava/lang/String;
    :cond_20
    const v3, 0x7f0700b5

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

.method private static notifySuccessfulInstall(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "isUpdate"

    .prologue
    .line 313
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    .line 314
    .local v0, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/google/android/finsky/utils/Notifier;->showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    return-void
.end method

.method public static uninstallPackage(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 420
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/finsky/utils/PackageManagerUtils;->uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    return-void
.end method
