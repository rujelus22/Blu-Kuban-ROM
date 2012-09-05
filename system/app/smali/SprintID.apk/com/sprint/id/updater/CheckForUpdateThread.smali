.class public Lcom/sprint/id/updater/CheckForUpdateThread;
.super Ljava/lang/Thread;
.source "CheckForUpdateThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;
    }
.end annotation


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field props:Ljava/util/Properties;

.field tCtx:Landroid/content/Context;

.field tHandler:Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;


# direct methods
.method public constructor <init>(Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;Landroid/content/Context;)V
    .registers 4
    .parameter "handler"
    .parameter "ctx"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const-class v0, Lcom/sprint/id/updater/CheckForUpdateThread;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    .line 23
    iput-object p1, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tHandler:Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;

    .line 24
    iput-object p2, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/sprint/id/updater/CheckForUpdateThread;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    .line 76
    iget-object v4, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->props:Ljava/util/Properties;

    if-nez v4, :cond_3a

    .line 78
    :try_start_4
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->props:Ljava/util/Properties;

    .line 79
    iget-object v4, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 81
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const-string v4, "updater.properties"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 82
    .local v2, inputStream:Ljava/io/InputStream;
    iget-object v4, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->props:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 83
    iget-object v4, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Loaded the updater properties for package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3a} :catch_3b

    .line 88
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_3a
    :goto_3a
    return-void

    .line 84
    :catch_3b
    move-exception v1

    .line 85
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Failed to load the updater properties"

    invoke-virtual {v4, v5, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 29
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checking for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    iget-object v10, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " update..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 31
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    const-wide/32 v8, 0xea60

    invoke-static {v7, v8, v9}, Lcom/sprint/id/updater/Util;->waitForNetwork(Landroid/content/Context;J)Z

    move-result v4

    .line 33
    .local v4, networkAvailable:Z
    if-eqz v4, :cond_154

    .line 34
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->props:Ljava/util/Properties;

    const-string v8, "update.base.url"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->props:Ljava/util/Properties;

    const-string v8, "json.name"

    const-string v9, "latest.json"

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, jsonName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 38
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Update URL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 40
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sprint/id/updater/DownloadUtil;->checkForUpdate(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/id/updater/Response;

    move-result-object v5

    .line 42
    .local v5, r:Lcom/sprint/id/updater/Response;
    if-eqz v5, :cond_12a

    iget-object v7, v5, Lcom/sprint/id/updater/Response;->error:Ljava/lang/Throwable;

    if-nez v7, :cond_12a

    .line 43
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sprint/id/updater/Response;->getEligibleEntries(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    .line 44
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/id/updater/Entry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_122

    .line 46
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Updates available: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e0

    .line 71
    .end local v1           #jsonName:Ljava/lang/String;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/id/updater/Entry;>;"
    .end local v5           #r:Lcom/sprint/id/updater/Response;
    .end local v6           #url:Ljava/lang/String;
    :goto_da
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tHandler:Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;

    invoke-interface {v7}, Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;->onFinished()V

    .line 72
    return-void

    .line 47
    .restart local v1       #jsonName:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/id/updater/Entry;>;"
    .restart local v5       #r:Lcom/sprint/id/updater/Response;
    .restart local v6       #url:Ljava/lang/String;
    :cond_e0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/id/updater/Entry;

    .line 48
    .local v0, e:Lcom/sprint/id/updater/Entry;
    iget-object v8, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tHandler:Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;

    iget-object v9, v0, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/sprint/id/updater/Entry;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/sprint/id/updater/Response;->isForced(Lcom/sprint/id/updater/Entry;)Z

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;->execute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    iget-object v8, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "package="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sprint/id/updater/Entry;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";versionCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/sprint/id/updater/Entry;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    goto :goto_d4

    .line 53
    .end local v0           #e:Lcom/sprint/id/updater/Entry;
    :cond_122
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "No updates available"

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_da

    .line 58
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/id/updater/Entry;>;"
    :cond_12a
    const-string v3, "unable to connect"

    .line 59
    .local v3, message:Ljava/lang/String;
    if-eqz v5, :cond_138

    iget-object v7, v5, Lcom/sprint/id/updater/Response;->error:Ljava/lang/Throwable;

    if-eqz v7, :cond_138

    .line 60
    iget-object v7, v5, Lcom/sprint/id/updater/Response;->error:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 62
    :cond_138
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update check failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 63
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "update check failed"

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_da

    .line 67
    .end local v1           #jsonName:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #r:Lcom/sprint/id/updater/Response;
    .end local v6           #url:Ljava/lang/String;
    :cond_154
    iget-object v7, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not complete the update check for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    iget-object v10, p0, Lcom/sprint/id/updater/CheckForUpdateThread;->tCtx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Network Unavailable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_da
.end method
