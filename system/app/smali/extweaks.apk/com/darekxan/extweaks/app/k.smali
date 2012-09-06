.class final Lcom/darekxan/extweaks/app/k;
.super Ljava/lang/Object;
.source "ExTweaksSettingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/j;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/j;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/k;->a:Lcom/darekxan/extweaks/app/j;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/darekxan/extweaks/app/k;->a:Lcom/darekxan/extweaks/app/j;

    iget-object v0, v0, Lcom/darekxan/extweaks/app/j;->a:Lcom/darekxan/extweaks/app/i;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 70
    return-void

    .line 61
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    .line 62
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v2

    .line 63
    monitor-enter v2

    .line 64
    :try_start_1e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 63
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2a

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit v2

    throw v0

    .line 64
    :cond_2d
    :try_start_2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsTab;

    .line 65
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->populateViews()V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2a

    goto :goto_22
.end method
