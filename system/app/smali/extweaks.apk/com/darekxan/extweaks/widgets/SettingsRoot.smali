.class public Lcom/darekxan/extweaks/widgets/SettingsRoot;
.super Ljava/lang/Object;
.source "SettingsRoot.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field resetAction:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field script:Ljava/lang/String;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SettingsTab;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        type = Lcom/darekxan/extweaks/widgets/SettingsTab;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsRoot;->tabs:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public addFragment(Lcom/darekxan/extweaks/widgets/SettingsTab;)V
    .registers 4
    .parameter

    .prologue
    .line 31
    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/SettingsRoot;->tabs:Ljava/util/List;

    monitor-enter v1

    .line 32
    :try_start_3
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragment(I)Lcom/darekxan/extweaks/widgets/SettingsTab;
    .registers 3
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsTab;

    return-object v0
.end method

.method public getFragmentName(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsTab;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getResetAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsRoot;->resetAction:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsRoot;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SettingsTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsRoot;->tabs:Ljava/util/List;

    return-object v0
.end method

.method public setScript(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/darekxan/extweaks/widgets/SettingsRoot;->script:Ljava/lang/String;

    .line 45
    return-void
.end method
