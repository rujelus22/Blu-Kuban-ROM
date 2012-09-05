.class public Lcom/sprint/dsa/UpgradeAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeAvailableReceiver.java"


# static fields
.field public static final ACTION_UPGRADE_CHECK:Ljava/lang/String; = "com.sprint.action.UPGRADE_CHECK"

.field public static final ACTION_VERSION_CHECK:Ljava/lang/String; = "com.sprint.action.VERSION_CHECK"

.field public static final ACTION_VERSION_UPDATE:Ljava/lang/String; = "com.sprint.action.VERSION_UPDATE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

.field public static final EXTRA_USE_SLOT0:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_USE_SLOT0"

.field public static final EXTRA_VERSION_AVAILABLE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_VERSION_AVAILABLE"

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_VERSION_CODE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.sprint.action.VERSION_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 28
    const-string v5, "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, pkgName:Ljava/lang/String;
    const-string v5, "com.sprint.dsa"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 33
    const-string v5, "com.sprint.ce.updater.EXTRA_VERSION_AVAILABLE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 35
    .local v3, upgradeAvailable:Z
    const-string v5, "com.sprint.ce.updater.EXTRA_VERSION_CODE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 38
    .local v4, upgradeVersion:I
    new-instance v2, Lcom/sprint/dsa/Prefs;

    invoke-direct {v2, p1}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, prefs:Lcom/sprint/dsa/Prefs;
    invoke-virtual {v2, v3, v4}, Lcom/sprint/dsa/Prefs;->setUpgradeAvailable(ZI)V

    .line 44
    .end local v1           #pkgName:Ljava/lang/String;
    .end local v2           #prefs:Lcom/sprint/dsa/Prefs;
    .end local v3           #upgradeAvailable:Z
    .end local v4           #upgradeVersion:I
    :cond_2f
    return-void
.end method
