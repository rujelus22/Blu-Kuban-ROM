.class public Lcom/google/android/finsky/receivers/PersistentPackageMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersistentPackageMonitorReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private broadcastInstallReferrer(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, action:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/finsky/receivers/PersistentPackageMonitorReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 56
    .local v12, packageName:Ljava/lang/String;
    if-nez v12, :cond_f

    .line 111
    :cond_e
    :goto_e
    return-void

    .line 61
    :cond_f
    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 62
    .local v11, packageAdded:Z
    const-string v16, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 63
    .local v8, firstLaunch:Z
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_9c

    const/4 v15, 0x1

    .line 65
    .local v15, usesFrozenApps:Z
    :goto_2a
    if-nez v15, :cond_2e

    if-nez v11, :cond_32

    :cond_2e
    if-eqz v15, :cond_9e

    if-eqz v8, :cond_9e

    :cond_32
    const/4 v14, 0x1

    .line 66
    .local v14, sendIntent:Z
    :goto_33
    if-eqz v14, :cond_e

    .line 71
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v4

    .line 72
    .local v4, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v4, :cond_e

    .line 76
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, externalReferral:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 78
    const/4 v5, 0x1

    .line 80
    .local v5, clearReferrer:Z
    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, decodedUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/finsky/utils/IntentUtils;->isLaunchUrl(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6d

    .line 85
    const/4 v5, 0x0

    .line 87
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 88
    .local v9, launchUri:Landroid/net/Uri;
    const-string v16, "referrer"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 96
    .end local v9           #launchUri:Landroid/net/Uri;
    :cond_6d
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.android.vending.INSTALL_REFERRER"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v10, newIntent:Landroid/content/Intent;
    const-string v16, "referrer"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 100
    .local v13, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13}, Lcom/google/android/finsky/receivers/PersistentPackageMonitorReceiver;->getActivityNameForBroadcast(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, activityName:Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 103
    invoke-virtual {v10, v12, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    if-eqz v5, :cond_e

    .line 107
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lcom/google/android/finsky/local/LocalAsset;->setExternalReferrer(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 63
    .end local v3           #activityName:Ljava/lang/String;
    .end local v4           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v5           #clearReferrer:Z
    .end local v6           #decodedUrl:Ljava/lang/String;
    .end local v7           #externalReferral:Ljava/lang/String;
    .end local v10           #newIntent:Landroid/content/Intent;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #sendIntent:Z
    .end local v15           #usesFrozenApps:Z
    :cond_9c
    const/4 v15, 0x0

    goto :goto_2a

    .line 65
    .restart local v15       #usesFrozenApps:Z
    :cond_9e
    const/4 v14, 0x0

    goto :goto_33
.end method

.method private getActivityNameForBroadcast(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 9
    .parameter "packageName"
    .parameter "intent"
    .parameter "pm"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, activityName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p3, p2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_a

    .line 120
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 121
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 127
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_28
    return-object v0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter "intent"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/PersistentPackageMonitorReceiver;->broadcastInstallReferrer(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    return-void
.end method
