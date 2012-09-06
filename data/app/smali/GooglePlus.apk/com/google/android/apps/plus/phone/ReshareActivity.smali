.class public Lcom/google/android/apps/plus/phone/ReshareActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ReshareActivity.java"


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

.field private mShakeDetectorWasRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 175
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->RESHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 88
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 93
    .end local p1
    :goto_a
    return-void

    .line 90
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/google/android/apps/plus/fragments/ReshareFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    goto :goto_a

    .line 88
    :pswitch_data_10
    .packed-switch 0x7f090229
        :pswitch_b
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->onDiscard()V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0801f4

    const/4 v4, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f0300bd

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ReshareActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->shouldShowAndroidActionBar()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 51
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v2

    .line 52
    .local v2, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v2, :cond_3b

    .line 53
    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mShakeDetectorWasRunning:Z

    .line 55
    :cond_3b
    return-void

    .line 45
    .end local v2           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_3c
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/ReshareActivity;->showTitlebar(Z)V

    .line 46
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ReshareActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 47
    const v3, 0x7f10002a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ReshareActivity;->createTitlebarButtons(I)V

    goto :goto_2b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 77
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 79
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 80
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 83
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_20

    .line 152
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 137
    :sswitch_d
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ReshareActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_c

    .line 142
    :sswitch_13
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->reshare()Z

    goto :goto_c

    .line 147
    :sswitch_19
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mReshareFragment:Lcom/google/android/apps/plus/fragments/ReshareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ReshareFragment;->onDiscard()V

    goto :goto_c

    .line 135
    nop

    :sswitch_data_20
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0902ca -> :sswitch_13
        0x7f0902cb -> :sswitch_19
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 109
    const v1, 0x7f0902ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, postItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 128
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 129
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0902ca

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 131
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->finish()V

    .line 67
    :cond_c
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ReshareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ReshareActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 120
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method
