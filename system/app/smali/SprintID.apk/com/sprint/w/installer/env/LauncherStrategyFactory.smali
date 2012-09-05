.class public Lcom/sprint/w/installer/env/LauncherStrategyFactory;
.super Ljava/lang/Object;
.source "LauncherStrategyFactory.java"


# static fields
.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/sprint/w/installer/env/LauncherStrategyFactory;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLauncherStrategy(Landroid/content/ComponentName;I)Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 5
    .parameter "cn"
    .parameter "screenCount"

    .prologue
    .line 65
    const-string v1, "com.sec.android.app.twlauncher"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 66
    new-instance v0, Lcom/sprint/w/installer/env/TouchwizLauncher;

    invoke-direct {v0}, Lcom/sprint/w/installer/env/TouchwizLauncher;-><init>()V

    .line 74
    .local v0, obj:Lcom/sprint/w/installer/env/BaseLauncherStrategy;
    :goto_11
    iput-object p0, v0, Lcom/sprint/w/installer/env/BaseLauncherStrategy;->cn:Landroid/content/ComponentName;

    .line 75
    iput p1, v0, Lcom/sprint/w/installer/env/BaseLauncherStrategy;->screenCount:I

    .line 77
    return-object v0

    .line 67
    .end local v0           #obj:Lcom/sprint/w/installer/env/BaseLauncherStrategy;
    :cond_16
    const-string v1, "com.htc.launcher"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 68
    new-instance v0, Lcom/sprint/w/installer/env/HtcSenseLauncher;

    invoke-direct {v0}, Lcom/sprint/w/installer/env/HtcSenseLauncher;-><init>()V

    .restart local v0       #obj:Lcom/sprint/w/installer/env/BaseLauncherStrategy;
    goto :goto_11

    .line 70
    .end local v0           #obj:Lcom/sprint/w/installer/env/BaseLauncherStrategy;
    :cond_28
    new-instance v0, Lcom/sprint/w/installer/env/AndroidLauncher;

    invoke-direct {v0}, Lcom/sprint/w/installer/env/AndroidLauncher;-><init>()V

    .restart local v0       #obj:Lcom/sprint/w/installer/env/BaseLauncherStrategy;
    goto :goto_11
.end method

.method public static getLauncherStrategy(Landroid/content/Context;)Lcom/sprint/w/installer/env/LauncherStrategy;
    .registers 12
    .parameter "ctx"

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 21
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 26
    .local v3, isStock:Z
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 29
    .local v7, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 30
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 31
    .local v4, pkg:Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 32
    .local v0, activity:Ljava/lang/String;
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HOME: po: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cmp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 34
    const-string v8, "com.sec.android.app.twlauncher"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 35
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Found Touchwiz Launcher"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 36
    new-instance v8, Lcom/sprint/w/installer/env/TouchwizLauncher;

    invoke-direct {v8}, Lcom/sprint/w/installer/env/TouchwizLauncher;-><init>()V

    .line 54
    .end local v0           #activity:Ljava/lang/String;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :goto_74
    return-object v8

    .line 37
    .restart local v0       #activity:Ljava/lang/String;
    .restart local v4       #pkg:Ljava/lang/String;
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    :cond_75
    const-string v8, "com.htc.launcher"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 38
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Found HTC Sense Launcher"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 39
    new-instance v8, Lcom/sprint/w/installer/env/HtcSenseLauncher;

    invoke-direct {v8}, Lcom/sprint/w/installer/env/HtcSenseLauncher;-><init>()V

    goto :goto_74

    .line 40
    :cond_8e
    const-string v8, "com.sec.android.app.launcher"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 41
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Found SecLauncher"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 42
    new-instance v8, Lcom/sprint/w/installer/env/SecLauncher;

    invoke-direct {v8}, Lcom/sprint/w/installer/env/SecLauncher;-><init>()V

    goto :goto_74

    .line 43
    :cond_a7
    const-string v8, "com.motorola.homescreen"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 44
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Found MotorolaLauncher"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 45
    new-instance v8, Lcom/sprint/w/installer/env/MotorolaLauncher;

    invoke-direct {v8}, Lcom/sprint/w/installer/env/MotorolaLauncher;-><init>()V

    goto :goto_74

    .line 46
    :cond_c0
    const-string v8, "com.android.launcher"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 47
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Found Android Launcher"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    goto/16 :goto_1a

    .line 52
    .end local v0           #activity:Ljava/lang/String;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_d6
    if-eqz v3, :cond_da

    .line 54
    const/4 v8, 0x0

    goto :goto_74

    .line 57
    :cond_da
    sget-object v8, Lcom/sprint/w/installer/env/LauncherStrategyFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Could not find a Launcher Strategy"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 59
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unsupported Launcher"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
