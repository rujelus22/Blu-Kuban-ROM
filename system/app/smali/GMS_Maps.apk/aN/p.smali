.class public Lan/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lan/p;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lan/p;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static b(Landroid/content/Context;)I
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    :try_start_6
    sget-object v1, Lan/p;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "use_location_for_services"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_1e} :catch_34

    move-result-object v0

    .line 69
    if-eqz v0, :cond_2c

    :try_start_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 70
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_4c
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_2b} :catch_50

    move-result-object v7

    .line 75
    :cond_2c
    if-eqz v0, :cond_31

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_31
    :goto_31
    if-nez v7, :cond_43

    .line 88
    :goto_33
    return v6

    .line 72
    :catch_34
    move-exception v0

    move-object v0, v7

    .line 75
    :goto_36
    if-eqz v0, :cond_31

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 75
    :catchall_3c
    move-exception v0

    :goto_3d
    if-eqz v7, :cond_42

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0

    .line 84
    :cond_43
    :try_start_43
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_46} :catch_49

    move-result v0

    :goto_47
    move v6, v0

    .line 88
    goto :goto_33

    .line 85
    :catch_49
    move-exception v0

    move v0, v6

    .line 86
    goto :goto_47

    .line 75
    :catchall_4c
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3d

    .line 72
    :catch_50
    move-exception v1

    goto :goto_36
.end method

.method public static c(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    :try_start_c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_f} :catch_10

    .line 109
    :goto_f
    return-void

    .line 106
    :catch_10
    move-exception v0

    goto :goto_f
.end method
