.class public Lcom/sprint/id/updater/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/id/updater/Entry;",
            ">;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field forcedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/id/updater/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/sprint/id/logger/Logger;

.field maxRetryCount:I

.field retryInterval:I

.field ttl:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/sprint/id/updater/Response;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    .line 12
    return-void
.end method


# virtual methods
.method public getEligibleEntries(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 11
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/id/updater/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, eligibleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/id/updater/Entry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sprint/id/updater/Response;->forcedEntries:Ljava/util/List;

    .line 27
    iget-object v4, p0, Lcom/sprint/id/updater/Response;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_19

    .line 75
    return-object v1

    .line 27
    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/id/updater/Entry;

    .line 28
    .local v2, entry:Lcom/sprint/id/updater/Entry;
    iget-boolean v5, v2, Lcom/sprint/id/updater/Entry;->force:Z

    if-eqz v5, :cond_67

    .line 30
    :try_start_23
    iget-object v5, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 31
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v2, Lcom/sprint/id/updater/Entry;->versionCode:I
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2e} :catch_4f

    if-eq v5, v6, :cond_12

    .line 41
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :goto_30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->forcedEntries:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eligible (force=true): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_12

    .line 35
    :catch_4f
    move-exception v0

    .line 37
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Odd. Could not find the package we are trying to update: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 47
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_67
    iget-object v5, v2, Lcom/sprint/id/updater/Entry;->validUntil:Ljava/util/Date;

    if-eqz v5, :cond_90

    .line 48
    iget-object v5, v2, Lcom/sprint/id/updater/Entry;->validUntil:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_90

    .line 49
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "skipping (expired): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto :goto_12

    .line 52
    :cond_90
    iget-object v5, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_108

    .line 54
    :try_start_94
    iget-object v5, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 55
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v2, Lcom/sprint/id/updater/Entry;->versionCode:I

    if-ge v5, v6, :cond_d8

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eligible (older version installed): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_ba
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_94 .. :try_end_ba} :catch_bc

    goto/16 :goto_12

    .line 64
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_bc
    move-exception v0

    .line 66
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eligible (not yet installed): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 60
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :cond_d8
    :try_start_d8
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "skipping (same or newer version installed): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";versionCode(installed)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 62
    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";versionCode(new)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/sprint/id/updater/Entry;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_106
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_106} :catch_bc

    goto/16 :goto_12

    .line 71
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v5, p0, Lcom/sprint/id/updater/Response;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eligible (no info: need to download): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_12
.end method

.method public isForced(Lcom/sprint/id/updater/Entry;)Z
    .registers 3
    .parameter "entry"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sprint/id/updater/Response;->forcedEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
