.class public abstract Lcom/darekxan/extweaks/e;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SettingsAdapter.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SettingsRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/darekxan/extweaks/e;->a:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SettingsRoot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/darekxan/extweaks/e;->a:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/darekxan/extweaks/widgets/SettingsRoot;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/darekxan/extweaks/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/darekxan/extweaks/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 52
    return v1

    .line 49
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    .line 50
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/darekxan/extweaks/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 43
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 37
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    .line 38
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_1f

    .line 39
    invoke-virtual {v0, p1}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getFragment(I)Lcom/darekxan/extweaks/widgets/SettingsTab;

    move-result-object v0

    goto :goto_d

    .line 41
    :cond_1f
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_6
.end method

.method public synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .registers 5
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lcom/darekxan/extweaks/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_1f

    invoke-virtual {v0, p1}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getFragmentName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1f
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_6
.end method
