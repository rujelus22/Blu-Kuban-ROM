.class public Lcom/anddoes/launcher/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 34
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    :cond_c
    :goto_c
    return-void

    .line 38
    :cond_d
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 39
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    const-string v0, "duplicate"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 42
    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/anddoes/launcher/hy;->a:Landroid/net/Uri;

    .line 45
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "intent"

    aput-object v4, v2, v3

    .line 46
    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 48
    const-string v1, "intent"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 49
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 51
    const/4 v1, 0x0

    .line 54
    :cond_54
    :goto_54
    :try_start_54
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_9b

    move-result v5

    if-nez v5, :cond_7b

    .line 70
    :goto_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 73
    if-eqz v1, :cond_c

    .line 74
    sget-object v1, Lcom/anddoes/launcher/hy;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 75
    const v0, 0x7f060266

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    .line 75
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 56
    :cond_7b
    :try_start_7b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 57
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 58
    invoke-static {v9, v10}, Lcom/anddoes/launcher/hy;->a(J)Landroid/net/Uri;

    move-result-object v5

    .line 59
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_9b
    .catch Ljava/net/URISyntaxException; {:try_start_7b .. :try_end_97} :catch_a0

    .line 60
    const/4 v1, 0x1

    .line 61
    if-nez v8, :cond_54

    goto :goto_5a

    .line 69
    :catchall_9b
    move-exception v0

    .line 70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 71
    throw v0

    :catch_a0
    move-exception v5

    goto :goto_54
.end method
