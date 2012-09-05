.class public Lcom/google/android/gm/LabelsActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "LabelsActivity.java"

# interfaces
.implements Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;
.implements Lcom/google/android/gm/LabelSettingsObservable;
.implements Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;


# instance fields
.field private mController:Lcom/google/android/gm/LabelsActivityController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    const-string v0, "gm_lsa"

    return-object v0
.end method

.method public getIncludedLabels()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/LabelsActivityController;->getIncludedLabels()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfSyncDays()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/LabelsActivityController;->getNumberOfSyncDays()I

    move-result v0

    return v0
.end method

.method public getPartialLabels()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/LabelsActivityController;->getPartialLabels()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public notifyChanged()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/LabelsActivityController;->notifyChanged()V

    .line 90
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/LabelsActivityController;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 41
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onBackPressed()V

    .line 43
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/google/android/gm/ControllerFactory;->forActivity(Lcom/google/android/gm/LabelsActivityController$ControllableLabelsActivity;)Lcom/google/android/gm/LabelsActivityController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    .line 28
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->initialize(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->handleCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onLabelListResumed(Lcom/google/android/gm/LabelListFragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->handleLabelListResumed(Lcom/google/android/gm/LabelListFragment;)V

    .line 53
    return-void
.end method

.method public onLabelSelected(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->handleLabelSelected(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->handleOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0}, Lcom/google/android/gm/LabelsActivityController;->handlePause()V

    .line 36
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->handlePrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public registerObserver(Lcom/google/android/gm/LabelSettingsObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->registerObserver(Lcom/google/android/gm/LabelSettingsObserver;)V

    .line 80
    return-void
.end method

.method public setIncludedLabels(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->setIncludedLabels(Ljava/util/ArrayList;)V

    .line 110
    return-void
.end method

.method public setPartialLabels(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->setPartialLabels(Ljava/util/ArrayList;)V

    .line 115
    return-void
.end method

.method public unregisterObserver(Lcom/google/android/gm/LabelSettingsObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gm/LabelsActivity;->mController:Lcom/google/android/gm/LabelsActivityController;

    invoke-interface {v0, p1}, Lcom/google/android/gm/LabelsActivityController;->unregisterObserver(Lcom/google/android/gm/LabelSettingsObserver;)V

    .line 85
    return-void
.end method
