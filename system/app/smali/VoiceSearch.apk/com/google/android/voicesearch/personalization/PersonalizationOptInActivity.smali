.class public Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;
.super Landroid/app/Activity;
.source "PersonalizationOptInActivity.java"


# instance fields
.field private mDialogHelper:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->mDialogHelper:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    .line 44
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    const/4 v1, 0x2

    .line 50
    .local v1, dialogId:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "PERSONALIZATION_OPT_IN_ENABLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 51
    invoke-virtual {p0}, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "PERSONALIZATION_OPT_IN_ENABLE"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    .local v2, enable:Z
    if-eqz v2, :cond_2d

    move v1, v3

    .line 56
    .end local v2           #enable:Z
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;->mDialogHelper:Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;

    new-instance v4, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity$1;-><init>(Lcom/google/android/voicesearch/personalization/PersonalizationOptInActivity;)V

    invoke-virtual {v3, v1, v4}, Lcom/google/android/voicesearch/personalization/PersonalizationDialogHelper;->createDialog(ILcom/google/android/voicesearch/personalization/PersonalizationDialogHelper$Callbacks;)Landroid/app/Dialog;

    move-result-object v0

    .line 73
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 74
    return-void

    .line 53
    .end local v0           #dialog:Landroid/app/Dialog;
    .restart local v2       #enable:Z
    :cond_2d
    const/4 v1, 0x1

    goto :goto_1e
.end method
