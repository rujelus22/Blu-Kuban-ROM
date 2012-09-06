.class Lcom/google/android/apps/plus/service/IntentPool;
.super Ljava/lang/Object;
.source "IntentPool.java"


# instance fields
.field private final mIntentPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "initialSize"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/IntentPool;->mIntentPool:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/plus/service/IntentPool;->mIntentPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_31

    .line 51
    iget-object v4, p0, Lcom/google/android/apps/plus/service/IntentPool;->mIntentPool:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 54
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, keys:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_1e

    .line 50
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #keys:Ljava/lang/String;
    :catchall_2e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 59
    :cond_31
    :try_start_31
    const-string v4, "IntentPool"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 60
    const-string v4, "IntentPool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pool enlarged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/service/IntentPool;->mIntentPool:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_58
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 66
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_5d
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    const-string v4, "from_pool"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_6b
    .catchall {:try_start_31 .. :try_end_6b} :catchall_2e

    .line 68
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized put(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/service/IntentPool;->mIntentPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
