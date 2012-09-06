.class public abstract Lcom/darekxan/extweaks/f;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/darekxan/extweaks/model/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/darekxan/extweaks/i;

.field c:Lcom/darekxan/extweaks/widgets/SettingsRoot;


# direct methods
.method public constructor <init>(Lcom/darekxan/extweaks/widgets/SettingsRoot;Lcom/darekxan/extweaks/i;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/darekxan/extweaks/f;->a:Ljava/util/Map;

    .line 30
    iput-object p2, p0, Lcom/darekxan/extweaks/f;->b:Lcom/darekxan/extweaks/i;

    .line 31
    iput-object p1, p0, Lcom/darekxan/extweaks/f;->c:Lcom/darekxan/extweaks/widgets/SettingsRoot;

    .line 32
    return-void
.end method


# virtual methods
.method protected final a()Lcom/darekxan/extweaks/i;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/darekxan/extweaks/f;->b:Lcom/darekxan/extweaks/i;

    return-object v0
.end method

.method protected final declared-synchronized b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/darekxan/extweaks/model/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/darekxan/extweaks/f;->a:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/darekxan/extweaks/f;->e()Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/darekxan/extweaks/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 38
    iget-object v0, p0, Lcom/darekxan/extweaks/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 39
    return-void

    .line 36
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/model/a;

    invoke-interface {v0}, Lcom/darekxan/extweaks/model/a;->apply()V

    goto :goto_d
.end method

.method public d()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/darekxan/extweaks/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 44
    iget-object v0, p0, Lcom/darekxan/extweaks/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    return-void

    .line 42
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/model/a;

    invoke-interface {v0}, Lcom/darekxan/extweaks/model/a;->reset()V

    goto :goto_a
.end method

.method protected abstract e()Ljava/lang/String;
.end method
