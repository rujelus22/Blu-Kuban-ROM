.class public Lcom/darekxan/extweaks/widgets/SettingsTab;
.super Landroid/support/v4/app/Fragment;
.source "SettingsTab.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private panes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SettingsPane;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "settingsPane"
        inline = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsTab;->panes:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsTab;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPanes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SettingsPane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsTab;->panes:Ljava/util/List;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    sget v0, Lcom/darekxan/extweaks/d;->h:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    sget v1, Lcom/darekxan/extweaks/c;->e:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    sget v2, Lcom/darekxan/extweaks/c;->d:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/darekxan/extweaks/widgets/SettingsTab;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/darekxan/extweaks/j;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getPanes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 54
    return-object v0

    .line 51
    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/darekxan/extweaks/widgets/SettingsPane;

    .line 52
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/darekxan/extweaks/widgets/SettingsPane;->getView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_26
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getPanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 67
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 68
    return-void

    .line 65
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsPane;

    .line 66
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->onDestroyView()V

    goto :goto_8
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 72
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->populateViews()V

    .line 73
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getPanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 61
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    return-void

    .line 59
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsPane;

    .line 60
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->onViewCreated()V

    goto :goto_8
.end method

.method public populateViews()V
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getPanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 78
    return-void

    .line 76
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsPane;

    .line 77
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->populateView()V

    goto :goto_8
.end method
