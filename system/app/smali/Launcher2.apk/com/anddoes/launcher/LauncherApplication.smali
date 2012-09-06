.class public Lcom/anddoes/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation runtime Lorg/acra/a/a;
    a = ""
    b = "http://apex.anddoes.com/ErrorReport.aspx"
    c = .enum Lorg/acra/r;->SILENT:Lorg/acra/r;
    w = {
        .enum Lorg/acra/q;->REPORT_ID:Lorg/acra/q;,
        .enum Lorg/acra/q;->INSTALLATION_ID:Lorg/acra/q;,
        .enum Lorg/acra/q;->APP_VERSION_CODE:Lorg/acra/q;,
        .enum Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;,
        .enum Lorg/acra/q;->PACKAGE_NAME:Lorg/acra/q;,
        .enum Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;,
        .enum Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;,
        .enum Lorg/acra/q;->BUILD:Lorg/acra/q;,
        .enum Lorg/acra/q;->STACK_TRACE:Lorg/acra/q;,
        .enum Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;
    }
.end annotation


# static fields
.field private static j:Z

.field private static k:Z

.field private static l:F

.field private static m:I


# instance fields
.field public a:Lcom/anddoes/launcher/LauncherModel;

.field public b:Lcom/anddoes/launcher/ds;

.field c:Ljava/lang/ref/WeakReference;

.field public d:Lcom/anddoes/launcher/Launcher;

.field public e:Z

.field public f:Z

.field public g:Lcom/anddoes/launcher/ec;

.field public h:Landroid/view/View;

.field public i:Ljava/util/ArrayList;

.field private final n:Lcom/anddoes/launcher/jp;

.field private final o:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/anddoes/launcher/LauncherApplication;->e:Z

    .line 75
    iput-boolean v0, p0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    .line 82
    new-instance v0, Lcom/anddoes/launcher/jp;

    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/jp;-><init>(Lcom/anddoes/launcher/i;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->n:Lcom/anddoes/launcher/jp;

    .line 204
    new-instance v0, Lcom/anddoes/launcher/go;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/go;-><init>(Lcom/anddoes/launcher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->o:Landroid/database/ContentObserver;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 239
    const/4 v1, 0x2

    .line 238
    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/anddoes/launcher/LauncherApplication;->k:Z

    return v0
.end method

.method public static e()F
    .registers 1

    .prologue
    .line 243
    sget v0, Lcom/anddoes/launcher/LauncherApplication;->l:F

    return v0
.end method

.method public static f()Z
    .registers 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/anddoes/launcher/LauncherApplication;->j:Z

    return v0
.end method

.method private g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 179
    :try_start_4
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 180
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    .line 183
    :goto_f
    return-object v0

    .line 182
    :catch_10
    move-exception v0

    const-string v0, "LauncherApplication"

    const-string v1, "Unable to obtain package info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "Unknown"

    goto :goto_f
.end method


# virtual methods
.method final a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/LauncherModel;
    .registers 3
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/anddoes/launcher/LauncherApplication;->d:Lcom/anddoes/launcher/Launcher;

    .line 213
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/LauncherModel;->a(Lcom/anddoes/launcher/ha;)V

    .line 214
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    return-object v0
.end method

.method final a()Lcom/anddoes/launcher/ds;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->b:Lcom/anddoes/launcher/ds;

    return-object v0
.end method

.method final a(Lcom/anddoes/launcher/LauncherProvider;)V
    .registers 3
    .parameter

    .prologue
    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->c:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method

.method final b()Lcom/anddoes/launcher/LauncherModel;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    return-object v0
.end method

.method public final c()Lcom/anddoes/launcher/LauncherProvider;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherProvider;

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 88
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    move v0, v1

    .line 89
    :cond_10
    sput-boolean v0, Lcom/anddoes/launcher/LauncherApplication;->j:Z

    if-nez v0, :cond_dc

    .line 92
    :try_start_14
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;)V

    .line 93
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 94
    invoke-direct {p0}, Lcom/anddoes/launcher/LauncherApplication;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/anddoes/launcher/m;->a:Lcom/anddoes/launcher/m;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/anddoes/launcher/i;->a(Lcom/anddoes/launcher/m;Ljava/lang/String;)V

    sget-object v0, Lcom/anddoes/launcher/m;->b:Lcom/anddoes/launcher/m;

    invoke-virtual {v4, v0, v2}, Lcom/anddoes/launcher/i;->a(Lcom/anddoes/launcher/m;Ljava/lang/String;)V

    sget-object v0, Lcom/anddoes/launcher/m;->c:Lcom/anddoes/launcher/m;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/anddoes/launcher/i;->a(Lcom/anddoes/launcher/m;Ljava/lang/String;)V

    const-string v0, "enable_analytics"

    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/i;->a(Z)V

    const-string v0, "/ApplicationCreate"

    invoke-virtual {v4, v0}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    const-string v0, "previous_app_version"

    const-string v5, "Clean install"

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Clean install"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string v5, "last_check_update"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string v0, "Unknown previous version"

    :cond_77
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "previous_app_version"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ae

    const-string v5, "Installation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Installed Version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Prevous Version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_ae
    const-string v0, "General"

    const-string v2, "Start up hour"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x68

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v2, v5, v6}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->n:Lcom/anddoes/launcher/jp;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_dc} :catch_16c

    .line 104
    :cond_dc
    :goto_dc
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/anddoes/launcher/LauncherApplication;->k:Z

    .line 105
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 106
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/anddoes/launcher/LauncherApplication;->l:F

    .line 107
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/anddoes/launcher/LauncherApplication;->m:I

    .line 109
    new-instance v0, Lcom/anddoes/launcher/ds;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/ds;-><init>(Lcom/anddoes/launcher/LauncherApplication;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->b:Lcom/anddoes/launcher/ds;

    .line 110
    new-instance v0, Lcom/anddoes/launcher/LauncherModel;

    iget-object v2, p0, Lcom/anddoes/launcher/LauncherApplication;->b:Lcom/anddoes/launcher/ds;

    invoke-direct {v0, p0, v2}, Lcom/anddoes/launcher/LauncherModel;-><init>(Lcom/anddoes/launcher/LauncherApplication;Lcom/anddoes/launcher/ds;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    sget-object v2, Lcom/anddoes/launcher/hy;->a:Landroid/net/Uri;

    .line 134
    iget-object v3, p0, Lcom/anddoes/launcher/LauncherApplication;->o:Landroid/database/ContentObserver;

    .line 133
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    return-void

    :catch_16c
    move-exception v0

    goto/16 :goto_dc
.end method

.method public onTerminate()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 194
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->a(Z)V

    .line 195
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/anddoes/launcher/LauncherApplication;->o:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    return-void
.end method
