.class Lcom/sprint/w/installer/WInstallerApp$1;
.super Ljava/lang/Object;
.source "WInstallerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/WInstallerApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/WInstallerApp;

.field final synthetic val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/WInstallerApp;Lcom/sprint/w/installer/service/SprintIDServiceConnection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    iput-object p2, p0, Lcom/sprint/w/installer/WInstallerApp$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 51
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v4}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v3

    .line 53
    .local v3, s:Lcom/sprint/id/ISprintIDService;
    :try_start_6
    invoke-interface {v3}, Lcom/sprint/id/ISprintIDService;->getLauncherComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 54
    .local v0, cn:Landroid/content/ComponentName;
    invoke-interface {v3}, Lcom/sprint/id/ISprintIDService;->getHomeScreenCount()I

    move-result v2

    .line 55
    .local v2, i:I
    invoke-static {v0, v2}, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->getLauncherStrategy(Landroid/content/ComponentName;I)Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v4

    invoke-static {v4}, Lcom/sprint/w/installer/WInstallerApp;->access$002(Lcom/sprint/w/installer/env/LauncherStrategy;)Lcom/sprint/w/installer/env/LauncherStrategy;

    .line 56
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    iget-object v4, v4, Lcom/sprint/w/installer/WInstallerApp;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found Launcher w/ Service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$000()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v6

    invoke-interface {v6}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3b} :catch_c3

    .line 60
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #i:I
    :goto_3b
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    invoke-static {v4}, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->getLauncherStrategy(Landroid/content/Context;)Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v4

    invoke-static {v4}, Lcom/sprint/w/installer/WInstallerApp;->access$102(Lcom/sprint/w/installer/env/LauncherStrategy;)Lcom/sprint/w/installer/env/LauncherStrategy;

    .line 61
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$100()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 62
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    iget-object v4, v4, Lcom/sprint/w/installer/WInstallerApp;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found OEM Launcher: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$100()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v6

    invoke-interface {v6}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 64
    :cond_70
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$000()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v4

    if-eqz v4, :cond_a7

    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$100()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v4

    if-eqz v4, :cond_a7

    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$100()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->access$000()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v5

    invoke-interface {v5}, Lcom/sprint/w/installer/env/LauncherStrategy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 66
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    iget-object v4, v4, Lcom/sprint/w/installer/WInstallerApp;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "NO OEM Launcher"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 67
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sprint/w/installer/WInstallerApp;->access$102(Lcom/sprint/w/installer/env/LauncherStrategy;)Lcom/sprint/w/installer/env/LauncherStrategy;

    .line 69
    :cond_a7
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    iget-object v5, p0, Lcom/sprint/w/installer/WInstallerApp$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/WInstallerApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "WInstallerApp.PREF_INIT_COMPLETE"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void

    .line 57
    :catch_c3
    move-exception v1

    .line 58
    .local v1, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/sprint/w/installer/WInstallerApp$1;->this$0:Lcom/sprint/w/installer/WInstallerApp;

    iget-object v4, v4, Lcom/sprint/w/installer/WInstallerApp;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Could not get the Launcher ComponentName or screen count"

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_3b
.end method
