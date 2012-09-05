.class Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 5952
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5952
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 5955
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    if-ne p1, v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 5956
    :cond_c
    const-string v7, "Launcher"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "ApplicationsIntentReceiver ignored. Context: %x, Current Launcher: %x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    :cond_34
    :goto_34
    return-void

    .line 5960
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5961
    .local v1, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 5962
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "android.intent.extra.REPLACING"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 5965
    .local v6, replacing:Z
    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "application intent received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", replacing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c2

    .line 5977
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_105

    .line 5978
    if-nez v6, :cond_df

    .line 5979
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->removePackageFromWorkspace(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 5981
    const-string v7, "Launcher.LauncherModel"

    const-string v8, "  --> remove package"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5983
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    if-eqz v7, :cond_b7

    .line 5984
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->removePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 5992
    :cond_b7
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-nez v7, :cond_ea

    .line 5997
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6016
    :cond_c8
    :goto_c8
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_df

    .line 6017
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 6025
    :cond_df
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->resetMaxPageIndexAndMaxCellIndex()V

    goto/16 :goto_34

    .line 6004
    :cond_ea
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v4

    .line 6006
    .local v4, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    if-eqz v4, :cond_c8

    .line 6007
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;

    invoke-direct {v8, p0, v4}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_c8

    .line 6028
    .end local v4           #packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    :cond_105
    if-nez v6, :cond_171

    .line 6030
    const-string v7, "Launcher.LauncherModel"

    const-string v8, "  --> add package"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-nez v7, :cond_162

    .line 6037
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    if-eqz v7, :cond_129

    .line 6038
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 6040
    :cond_129
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6042
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_149

    .line 6043
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 6100
    :cond_149
    :goto_149
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_34

    .line 6101
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto/16 :goto_34

    .line 6061
    :cond_162
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_149

    .line 6076
    :cond_171
    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  --> update package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-nez v7, :cond_1b3

    .line 6083
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    if-eqz v7, :cond_1a4

    .line 6084
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 6087
    :cond_1a4
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6088
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto :goto_149

    .line 6092
    :cond_1b3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$3;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_149

    .line 6110
    :cond_1c2
    const-string v0, "com.android.stk"

    .line 6111
    .local v0, STKPackageName:Ljava/lang/String;
    const-string v7, "com.android.stk"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d5

    .line 6112
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6118
    :cond_1d5
    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  --> sync package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6124
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6125
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 6127
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_20e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_21e

    .line 6128
    :cond_20e
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6129
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->removePackageFromWorkspace(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto/16 :goto_34

    .line 6131
    :cond_21e
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 6132
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto/16 :goto_34
.end method
