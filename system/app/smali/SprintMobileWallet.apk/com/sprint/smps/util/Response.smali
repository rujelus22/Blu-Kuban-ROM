.class public Lcom/sprint/smps/util/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintUpdater"


# instance fields
.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/util/Entry;",
            ">;"
        }
    .end annotation
.end field

.field public maxRetryCount:I

.field public retryInterval:I

.field public ttl:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEligibleEntries(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/smps/util/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 25
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, eligibleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/smps/util/Entry;>;"
    iget-object v5, p0, Lcom/sprint/smps/util/Response;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_16

    .line 56
    return-object v1

    .line 26
    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/util/Entry;

    .line 27
    .local v2, entry:Lcom/sprint/smps/util/Entry;
    iget-boolean v6, v2, Lcom/sprint/smps/util/Entry;->force:Z

    if-eqz v6, :cond_24

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 33
    :cond_24
    iget-object v6, v2, Lcom/sprint/smps/util/Entry;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3e

    .line 35
    :try_start_28
    iget-object v6, v2, Lcom/sprint/smps/util/Entry;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 36
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v7, v2, Lcom/sprint/smps/util/Entry;->versionCode:I

    if-ge v6, v7, :cond_f

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_38} :catch_39

    goto :goto_f

    .line 45
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_39
    move-exception v0

    .line 47
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 52
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method
