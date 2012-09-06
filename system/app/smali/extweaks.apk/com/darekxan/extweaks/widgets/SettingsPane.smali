.class public Lcom/darekxan/extweaks/widgets/SettingsPane;
.super Ljava/util/Observable;
.source "SettingsPane.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Element;
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field private settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/model/ASetting;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementListUnion;
        value = {
            .subannotation Lorg/simpleframework/xml/ElementList;
                entry = "button"
                inline = true
                type = Lcom/darekxan/extweaks/widgets/EButton;
            .end subannotation,
            .subannotation Lorg/simpleframework/xml/ElementList;
                entry = "checkbox"
                inline = true
                type = Lcom/darekxan/extweaks/widgets/ECheckbox;
            .end subannotation,
            .subannotation Lorg/simpleframework/xml/ElementList;
                entry = "spinner"
                inline = true
                type = Lcom/darekxan/extweaks/widgets/ESpinner;
            .end subannotation,
            .subannotation Lorg/simpleframework/xml/ElementList;
                entry = "seekBar"
                inline = true
                type = Lcom/darekxan/extweaks/widgets/ESeekBar;
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsPane;->settings:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized getSettings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/model/ASetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/SettingsPane;->settings:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 5
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    sget v1, Lcom/darekxan/extweaks/d;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    sget v1, Lcom/darekxan/extweaks/c;->f:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/SettingsPane;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/darekxan/extweaks/j;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 56
    sget v1, Lcom/darekxan/extweaks/c;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/SettingsPane;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/darekxan/extweaks/j;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/SettingsPane;->settings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-object v0

    .line 57
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darekxan/extweaks/model/ASetting;

    .line 58
    invoke-virtual {v1, p1}, Lcom/darekxan/extweaks/model/ASetting;->getView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2d
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 76
    return-void

    .line 73
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/model/ASetting;

    .line 74
    invoke-virtual {v0}, Lcom/darekxan/extweaks/model/ASetting;->onDestroyView()V

    goto :goto_8
.end method

.method public onViewCreated()V
    .registers 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    return-void

    .line 80
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/model/ASetting;

    .line 81
    invoke-virtual {v0}, Lcom/darekxan/extweaks/model/ASetting;->onViewCreated()V

    goto :goto_8
.end method

.method public populateView()V
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 69
    return-void

    .line 67
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/model/ASetting;

    .line 68
    invoke-virtual {v0}, Lcom/darekxan/extweaks/model/ASetting;->populateView()V

    goto :goto_8
.end method
