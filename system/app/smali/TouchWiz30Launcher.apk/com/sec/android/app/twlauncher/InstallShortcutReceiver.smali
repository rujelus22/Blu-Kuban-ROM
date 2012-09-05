.class public Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field static DEFAULT_SCREEN_COUNT:I


# instance fields
.field private final mCoordinates:[I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->DEFAULT_SCREEN_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .registers 27
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 103
    sget v20, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 104
    .local v20, xCount:I
    sget v22, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 106
    .local v22, yCount:I
    move/from16 v0, v20

    move/from16 v1, v22

    filled-new-array {v0, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Z

    .line 108
    .local v8, occupied:[[Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 109
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const-string v5, "screen=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 116
    .local v9, c:Landroid/database/Cursor;
    const-string v3, "cellX"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 117
    .local v11, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 118
    .local v13, cellYIndex:I
    const-string v3, "spanX"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 119
    .local v16, spanXIndex:I
    const-string v3, "spanY"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 122
    .local v18, spanYIndex:I
    :cond_5a
    :try_start_5a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 123
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 124
    .local v10, cellX:I
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 125
    .local v12, cellY:I
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 126
    .local v15, spanX:I
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 128
    .local v17, spanY:I
    move/from16 v19, v10

    .local v19, x:I
    :goto_76
    add-int v3, v10, v15

    move/from16 v0, v19

    if-ge v0, v3, :cond_5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5a

    .line 129
    move/from16 v21, v12

    .local v21, y:I
    :goto_84
    add-int v3, v12, v17

    move/from16 v0, v21

    if-ge v0, v3, :cond_98

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_98

    .line 130
    aget-object v3, v8, v19

    const/4 v4, 0x1

    aput-boolean v4, v3, v21
    :try_end_95
    .catchall {:try_start_5a .. :try_end_95} :catchall_b1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_95} :catch_ab

    .line 129
    add-int/lit8 v21, v21, 0x1

    goto :goto_84

    .line 128
    :cond_98
    add-int/lit8 v19, v19, 0x1

    goto :goto_76

    .line 137
    .end local v10           #cellX:I
    .end local v12           #cellY:I
    .end local v15           #spanX:I
    .end local v17           #spanY:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_9b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v3, p1

    move/from16 v6, v20

    move/from16 v7, v22

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v3

    :goto_aa
    return v3

    .line 134
    :catch_ab
    move-exception v14

    .line 135
    .local v14, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_aa

    .end local v14           #e:Ljava/lang/Exception;
    :catchall_b1
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 9
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v4, 0x1

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, installed:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v2, p3}, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 91
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    .line 92
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mCoordinates:[I

    aget v2, v2, v4

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 94
    iput p3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 95
    invoke-static {p1, p2, v0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 96
    const/4 v1, 0x1

    .line 99
    .end local v0           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    :cond_22
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    const-string v7, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, name:Ljava/lang/String;
    const-string v7, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 45
    .local v0, extraIntent:Landroid/content/Intent;
    const-string v7, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    if-eqz v0, :cond_26

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_27

    .line 85
    :cond_26
    :goto_26
    return-void

    .line 49
    :cond_27
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_32

    .line 50
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_32
    const-string v7, "duplicate"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_53

    invoke-static {p1, v4, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 55
    const v7, 0x7f080025

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 59
    :cond_53
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v5

    .line 62
    .local v5, screen:I
    const-string v7, "launcher"

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v7, :cond_79

    .line 64
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 69
    .local v6, screenCount:I
    :goto_65
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    .line 70
    .local v2, installed:Z
    if-nez v2, :cond_84

    .line 72
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6c
    if-ge v1, v6, :cond_84

    if-nez v2, :cond_84

    .line 73
    if-eq v1, v5, :cond_76

    .line 74
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    .line 72
    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 66
    .end local v1           #i:I
    .end local v2           #installed:Z
    .end local v6           #screenCount:I
    :cond_79
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "screencount"

    sget v9, Lcom/sec/android/app/twlauncher/InstallShortcutReceiver;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .restart local v6       #screenCount:I
    goto :goto_65

    .line 79
    .restart local v2       #installed:Z
    :cond_84
    if-eqz v2, :cond_99

    .line 80
    const v7, 0x7f080023

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, msg:Ljava/lang/String;
    :goto_91
    invoke-static {p1, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 82
    .end local v3           #msg:Ljava/lang/String;
    :cond_99
    const v7, 0x7f080022

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #msg:Ljava/lang/String;
    goto :goto_91
.end method
