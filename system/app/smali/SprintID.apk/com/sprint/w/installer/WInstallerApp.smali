.class public Lcom/sprint/w/installer/WInstallerApp;
.super Landroid/app/Application;
.source "WInstallerApp.java"


# static fields
.field public static final PREF_INIT_COMPLETE:Ljava/lang/String; = "WInstallerApp.PREF_INIT_COMPLETE"

.field private static launcher:Lcom/sprint/w/installer/env/LauncherStrategy;

.field private static oemLauncher:Lcom/sprint/w/installer/env/LauncherStrategy;


# instance fields
.field log:Lcom/sprint/id/logger/Logger;

.field mASR:Lcom/sprint/w/installer/AppStateReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sprint/w/installer/WInstallerApp;->launcher:Lcom/sprint/w/installer/env/LauncherStrategy;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sprint/w/installer/env/LauncherStrategy;)Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    sput-object p0, Lcom/sprint/w/installer/WInstallerApp;->launcher:Lcom/sprint/w/installer/env/LauncherStrategy;

    return-object p0
.end method

.method static synthetic access$100()Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sprint/w/installer/WInstallerApp;->oemLauncher:Lcom/sprint/w/installer/env/LauncherStrategy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprint/w/installer/env/LauncherStrategy;)Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    sput-object p0, Lcom/sprint/w/installer/WInstallerApp;->oemLauncher:Lcom/sprint/w/installer/env/LauncherStrategy;

    return-object p0
.end method

.method public static getLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/sprint/w/installer/WInstallerApp;->launcher:Lcom/sprint/w/installer/env/LauncherStrategy;

    return-object v0
.end method

.method public static getOEMLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/sprint/w/installer/WInstallerApp;->oemLauncher:Lcom/sprint/w/installer/env/LauncherStrategy;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 32
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 33
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "WInstallerApp.PREF_INIT_COMPLETE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/sprint/id/logger/Logger;->initialize(Landroid/content/Context;I)V

    .line 36
    const-class v2, Lcom/sprint/w/installer/WInstallerApp;

    invoke-static {v2}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/WInstallerApp;->log:Lcom/sprint/id/logger/Logger;

    .line 37
    iget-object v2, p0, Lcom/sprint/w/installer/WInstallerApp;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Logger initialized"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->setApplication(Landroid/app/Application;)V

    .line 39
    invoke-static {p0, v5}, Lcom/sprint/id/updater/UpdaterService;->schedule(Landroid/content/Context;Z)V

    .line 41
    new-instance v2, Lcom/sprint/w/installer/AppStateReceiver;

    invoke-direct {v2}, Lcom/sprint/w/installer/AppStateReceiver;-><init>()V

    iput-object v2, p0, Lcom/sprint/w/installer/WInstallerApp;->mASR:Lcom/sprint/w/installer/AppStateReceiver;

    .line 42
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/sprint/w/installer/WInstallerApp;->mASR:Lcom/sprint/w/installer/AppStateReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sprint/w/installer/WInstallerApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    new-instance v0, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v0}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    .line 47
    .local v0, conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    new-instance v2, Lcom/sprint/w/installer/WInstallerApp$1;

    invoke-direct {v2, p0, v0}, Lcom/sprint/w/installer/WInstallerApp$1;-><init>(Lcom/sprint/w/installer/WInstallerApp;Lcom/sprint/w/installer/service/SprintIDServiceConnection;)V

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v5}, Lcom/sprint/w/installer/WInstallerApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 74
    return-void
.end method

.method public onTerminate()V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 79
    invoke-static {p0}, Lcom/sprint/id/updater/UpdaterService;->unschedule(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/sprint/w/installer/WInstallerApp;->mASR:Lcom/sprint/w/installer/AppStateReceiver;

    if-eqz v0, :cond_f

    .line 81
    iget-object v0, p0, Lcom/sprint/w/installer/WInstallerApp;->mASR:Lcom/sprint/w/installer/AppStateReceiver;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/WInstallerApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    :cond_f
    return-void
.end method
