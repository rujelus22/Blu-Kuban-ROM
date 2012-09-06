.class public Lcom/anddoes/launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/InstallShortcutReceiver;->a:[I

    .line 26
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const-string v1, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anddoes/launcher/InstallShortcutReceiver;->a:[I

    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->c()I

    move-result v9

    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->d()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    invoke-static/range {p1 .. p1}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v3, v2, :cond_9b

    invoke-static {v8, v9, v10, v1}, Lcom/anddoes/launcher/CellLayout;->a([III[[Z)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 55
    const-string v1, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 56
    if-eqz v1, :cond_105

    .line 57
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_49

    .line 58
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    :cond_49
    const-string v2, "duplicate"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 64
    if-nez v2, :cond_5c

    move-object/from16 v0, p1

    invoke-static {v0, v7, v1}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 65
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/LauncherApplication;

    .line 66
    invoke-virtual {v1}, Lcom/anddoes/launcher/LauncherApplication;->b()Lcom/anddoes/launcher/LauncherModel;

    move-result-object v1

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/InstallShortcutReceiver;->a:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/InstallShortcutReceiver;->a:[I

    const/4 v3, 0x1

    aget v6, v2, v3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 66
    invoke-virtual/range {v1 .. v6}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Landroid/content/Intent;III)Lcom/anddoes/launcher/kj;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_d6

    .line 70
    const v1, 0x7f060265

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const/4 v2, 0x0

    .line 70
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    :goto_99
    const/4 v1, 0x1

    .line 87
    :goto_9a
    return v1

    .line 54
    :cond_9b
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/ec;

    iget-wide v4, v2, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v12, -0x64

    cmp-long v4, v4, v12

    if-nez v4, :cond_be

    iget v4, v2, Lcom/anddoes/launcher/ec;->k:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_be

    iget v6, v2, Lcom/anddoes/launcher/ec;->l:I

    iget v4, v2, Lcom/anddoes/launcher/ec;->m:I

    iget v12, v2, Lcom/anddoes/launcher/ec;->n:I

    iget v13, v2, Lcom/anddoes/launcher/ec;->o:I

    move v5, v6

    :goto_b8
    add-int v2, v6, v12

    if-ge v5, v2, :cond_be

    if-lt v5, v9, :cond_c3

    :cond_be
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_26

    :cond_c3
    move v2, v4

    :goto_c4
    add-int v14, v4, v13

    if-ge v2, v14, :cond_ca

    if-lt v2, v10, :cond_ce

    :cond_ca
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_b8

    :cond_ce
    aget-object v14, v1, v5

    const/4 v15, 0x1

    aput-boolean v15, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 73
    :cond_d6
    const/4 v1, 0x0

    goto :goto_9a

    .line 76
    :cond_d8
    const v1, 0x7f060267

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const/4 v2, 0x0

    .line 76
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_99

    .line 83
    :cond_f2
    const v1, 0x7f060263

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    const/4 v2, 0x0

    .line 83
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 87
    :cond_105
    const/4 v1, 0x0

    goto :goto_9a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 37
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 49
    :cond_c
    return-void

    .line 41
    :cond_d
    invoke-static {}, Lcom/anddoes/launcher/Launcher;->s()I

    move-result v1

    .line 43
    invoke-direct {p0, p1, p2, v1}, Lcom/anddoes/launcher/InstallShortcutReceiver;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    const/4 v0, 0x0

    :goto_18
    const/16 v2, 0x9

    if-ge v0, v2, :cond_c

    .line 46
    if-eq v0, v1, :cond_24

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/InstallShortcutReceiver;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 45
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method
