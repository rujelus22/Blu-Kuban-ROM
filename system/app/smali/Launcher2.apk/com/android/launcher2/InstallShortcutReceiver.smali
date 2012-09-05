.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"


# instance fields
.field private final mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .registers 21
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 109
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    .line 110
    .local v4, xCount:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    .line 111
    .local v5, yCount:I
    filled-new-array {v4, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 113
    .local v6, occupied:[[Z
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    .line 114
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    const/4 v10, 0x0

    .line 116
    .local v10, item:Lcom/android/launcher2/ItemInfo;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_58

    .line 117
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #item:Lcom/android/launcher2/ItemInfo;
    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 118
    .restart local v10       #item:Lcom/android/launcher2/ItemInfo;
    iget-wide v1, v10, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v1, v1, v16

    if-nez v1, :cond_55

    .line 119
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_55

    .line 120
    iget v7, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 121
    .local v7, cellX:I
    iget v8, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 122
    .local v8, cellY:I
    iget v12, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 123
    .local v12, spanX:I
    iget v13, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 124
    .local v13, spanY:I
    move v14, v7

    .local v14, x:I
    :goto_3d
    add-int v1, v7, v12

    if-ge v14, v1, :cond_55

    if-ge v14, v4, :cond_55

    .line 125
    move v15, v8

    .local v15, y:I
    :goto_44
    add-int v1, v8, v13

    if-ge v15, v1, :cond_52

    if-ge v15, v5, :cond_52

    .line 126
    aget-object v1, v6, v14

    const/4 v2, 0x1

    aput-boolean v2, v1, v15

    .line 125
    add-int/lit8 v15, v15, 0x1

    goto :goto_44

    .line 124
    :cond_52
    add-int/lit8 v14, v14, 0x1

    goto :goto_3d

    .line 116
    .end local v7           #cellX:I
    .end local v8           #cellY:I
    .end local v12           #spanX:I
    .end local v13           #spanY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_55
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 133
    :cond_58
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v1

    return v1
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 20
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    .line 70
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 72
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 73
    const-string v2, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 74
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_b1

    .line 75
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 76
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :cond_2d
    const-string v2, "duplicate"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 82
    .local v12, duplicate:Z
    if-nez v12, :cond_40

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 83
    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherApplication;

    .line 84
    .local v11, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const-wide/16 v5, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v13

    .line 87
    .local v13, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v13, :cond_82

    .line 88
    const v2, 0x7f0c0019

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    .end local v11           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v13           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_80
    const/4 v2, 0x1

    .line 105
    .end local v12           #duplicate:Z
    .end local v14           #intent:Landroid/content/Intent;
    :goto_81
    return v2

    .line 91
    .restart local v11       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v12       #duplicate:Z
    .restart local v13       #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_82
    const/4 v2, 0x0

    goto :goto_81

    .line 94
    .end local v11           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v13           #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_84
    const v2, 0x7f0c001b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_80

    .line 101
    .end local v12           #duplicate:Z
    .end local v14           #intent:Landroid/content/Intent;
    :cond_9e
    const v2, 0x7f0c0017

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_b1
    const/4 v2, 0x0

    goto :goto_81
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "data"

    .prologue
    .line 42
    const-string v5, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 67
    :cond_c
    :goto_c
    return-void

    .line 48
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v5, 0x1

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 54
    .local v3, preferred:Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 55
    const-string v5, "Launcher.ISR"

    const-string v6, "RETURNING"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 59
    :cond_3c
    invoke-static {}, Lcom/android/launcher2/Launcher;->getScreen()I

    move-result v4

    .line 61
    .local v4, screen:I
    invoke-direct {p0, p1, p2, v4}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_47
    const/4 v5, 0x5

    if-ge v0, v5, :cond_c

    .line 64
    if-eq v0, v4, :cond_52

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 63
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method
