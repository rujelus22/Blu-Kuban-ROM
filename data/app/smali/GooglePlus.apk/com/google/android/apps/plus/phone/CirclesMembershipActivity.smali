.class public Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "CirclesMembershipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;


# instance fields
.field private mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

.field private mPositiveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private getPersonId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "person_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersonName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isEmptySelectionAllowed()Z
    .registers 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "empty_selection_allowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 175
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONTACTS_CIRCLELIST:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 43
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    if-eqz v0, :cond_22

    .line 44
    check-cast p1, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->setCircleUsageType(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->setNewCircleEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->setPersonId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->setOnCircleSelectionListener(Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment$OnCircleSelectionListener;)V

    .line 50
    :cond_22
    return-void
.end method

.method public onCircleSelectionChange()V
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->isEmptySelectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    :cond_6
    :goto_6
    return-void

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 108
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mPositiveButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getSelectedCircleIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 96
    :goto_7
    return-void

    .line 87
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->save()V

    goto :goto_7

    .line 92
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->finish()V

    goto :goto_7

    .line 85
    :pswitch_data_10
    .packed-switch 0x7f09006e
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->setTitle(I)V

    .line 62
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mPositiveButton:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mPositiveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->isEmptySelectionAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->finish()V

    .line 78
    :cond_c
    return-void
.end method

.method public save()V
    .registers 6

    .prologue
    .line 118
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getOriginalCircleIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    .local v0, originalCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_9

    .line 139
    :goto_8
    return-void

    .line 123
    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->mFragment:Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/CirclesMultipleSelectFragment;->getSelectedCircleIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    .local v2, selectedCircleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 128
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->finish()V

    .line 132
    :cond_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, result:Landroid/content/Intent;
    const-string v3, "person_id"

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getPersonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v3, "display_name"

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->getPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v3, "original_circle_ids"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    const-string v3, "selected_circle_ids"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 137
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CirclesMembershipActivity;->finish()V

    goto :goto_8
.end method
