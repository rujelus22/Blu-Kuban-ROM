.class final Lcom/darekxan/extweaks/app/j;
.super Ljava/lang/Object;
.source "ExTweaksSettingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/i;

.field private final synthetic b:Z

.field private final synthetic c:Z

.field private final synthetic d:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/i;ZZLandroid/app/ProgressDialog;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/j;->a:Lcom/darekxan/extweaks/app/i;

    iput-boolean p2, p0, Lcom/darekxan/extweaks/app/j;->b:Z

    iput-boolean p3, p0, Lcom/darekxan/extweaks/app/j;->c:Z

    iput-object p4, p0, Lcom/darekxan/extweaks/app/j;->d:Landroid/app/ProgressDialog;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 50
    iget-object v0, p0, Lcom/darekxan/extweaks/app/j;->a:Lcom/darekxan/extweaks/app/i;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_33

    .line 57
    iget-object v0, p0, Lcom/darekxan/extweaks/app/j;->a:Lcom/darekxan/extweaks/app/i;

    invoke-static {v0}, Lcom/darekxan/extweaks/app/i;->a(Lcom/darekxan/extweaks/app/i;)Lcom/darekxan/extweaks/app/ExTweaksActivity;

    move-result-object v0

    new-instance v1, Lcom/darekxan/extweaks/app/k;

    invoke-direct {v1, p0}, Lcom/darekxan/extweaks/app/k;-><init>(Lcom/darekxan/extweaks/app/j;)V

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    iget-boolean v0, p0, Lcom/darekxan/extweaks/app/j;->c:Z

    if-eqz v0, :cond_32

    .line 73
    iget-object v0, p0, Lcom/darekxan/extweaks/app/j;->a:Lcom/darekxan/extweaks/app/i;

    invoke-static {v0}, Lcom/darekxan/extweaks/app/i;->a(Lcom/darekxan/extweaks/app/i;)Lcom/darekxan/extweaks/app/ExTweaksActivity;

    move-result-object v0

    new-instance v1, Lcom/darekxan/extweaks/app/l;

    iget-object v2, p0, Lcom/darekxan/extweaks/app/j;->d:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/darekxan/extweaks/app/l;-><init>(Lcom/darekxan/extweaks/app/j;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/darekxan/extweaks/app/ExTweaksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    :cond_32
    return-void

    .line 50
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsRoot;

    .line 51
    invoke-static {v0}, Lcom/darekxan/extweaks/a;->a(Lcom/darekxan/extweaks/widgets/SettingsRoot;)Lcom/darekxan/extweaks/f;

    move-result-object v1

    check-cast v1, Lcom/darekxan/extweaks/app/m;

    .line 52
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsTab;

    .line 53
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsTab;->getPanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SettingsPane;

    .line 54
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SettingsPane;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/model/ASetting;

    .line 55
    iget-object v6, p0, Lcom/darekxan/extweaks/app/j;->a:Lcom/darekxan/extweaks/app/i;

    invoke-static {v6}, Lcom/darekxan/extweaks/app/i;->a(Lcom/darekxan/extweaks/app/i;)Lcom/darekxan/extweaks/app/ExTweaksActivity;

    move-result-object v6

    iget-boolean v7, p0, Lcom/darekxan/extweaks/app/j;->b:Z

    invoke-virtual {v0, v1, v6, v7}, Lcom/darekxan/extweaks/model/ASetting;->init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V

    goto :goto_6f
.end method
