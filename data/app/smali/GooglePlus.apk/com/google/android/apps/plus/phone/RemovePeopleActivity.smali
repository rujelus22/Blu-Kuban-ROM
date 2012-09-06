.class public Lcom/google/android/apps/plus/phone/RemovePeopleActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "RemovePeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;


# instance fields
.field private mPositiveButton:Landroid/view/View;

.field private mRemovePeopleFragment:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private updatePositiveButtonEnabled()V
    .registers 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mPositiveButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mRemovePeopleFragment:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getSelectedPersonIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    return-void

    .line 94
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->getIntent()Landroid/content/Intent;

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
    .line 132
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 63
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    if-eqz v1, :cond_1c

    .line 64
    check-cast p1, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mRemovePeopleFragment:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "circle_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, circleId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mRemovePeopleFragment:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->setCircleId(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mRemovePeopleFragment:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->setOnSelectionChangedListener(Lcom/google/android/apps/plus/fragments/RemovePeopleFragment$OnSelectionChangedListener;)V

    .line 69
    .end local v0           #circleId:Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 117
    :goto_7
    return-void

    .line 104
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, result:Landroid/content/Intent;
    const-string v1, "person_ids"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mRemovePeopleFragment:Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/RemovePeopleFragment;->getSelectedPersonIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->finish()V

    goto :goto_7

    .line 113
    .end local v0           #result:Landroid/content/Intent;
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->finish()V

    goto :goto_7

    .line 102
    :pswitch_data_24
    .packed-switch 0x7f09006e
        :pswitch_8
        :pswitch_20
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v4, 0x7f0300bc

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "circle_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, circleName:Ljava/lang/String;
    const v4, 0x7f080319

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->shouldShowAndroidActionBar()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_30
    const v4, 0x7f09006e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mPositiveButton:Landroid/view/View;

    .line 52
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v4, 0x7f09006f

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, negativeButton:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 47
    .end local v2           #negativeButton:Landroid/view/View;
    :cond_49
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->showTitlebar(Z)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_30
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->updatePositiveButtonEnabled()V

    .line 83
    :goto_c
    return-void

    .line 81
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->finish()V

    goto :goto_c
.end method

.method public onSelectionChange()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/RemovePeopleActivity;->updatePositiveButtonEnabled()V

    .line 91
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method
