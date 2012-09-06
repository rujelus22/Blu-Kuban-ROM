.class public Lcom/google/android/apps/plus/phone/EditEventActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EditEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;


# instance fields
.field private mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

.field private mEventId:Ljava/lang/String;

.field private mOwnerId:Ljava/lang/String;

.field private mPositiveButton:Landroid/view/View;

.field private mShakeDetectorWasRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private updatePositiveButtonEnabled()V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mPositiveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->isValidEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    :cond_f
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getIntent()Landroid/content/Intent;

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
    .line 200
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CREATE_EVENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 73
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    if-eqz v0, :cond_16

    .line 74
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mOwnerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->editEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setOnEventChangedListener(Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;)V

    .line 78
    :cond_16
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onDiscard()V

    .line 143
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 193
    :cond_7
    :goto_7
    return-void

    .line 182
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->save()V

    goto :goto_7

    .line 189
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->finish()V

    goto :goto_7

    .line 180
    :pswitch_data_16
    .packed-switch 0x7f09006e
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "event_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mEventId:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mOwnerId:Ljava/lang/String;

    .line 44
    const v3, 0x7f030070

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditEventActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->shouldShowAndroidActionBar()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_2f
    const v3, 0x7f09006e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mPositiveButton:Landroid/view/View;

    .line 56
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v3, 0x7f09006f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, negativeButton:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v2

    .line 63
    .local v2, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v2, :cond_57

    .line 64
    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mShakeDetectorWasRunning:Z

    .line 66
    :cond_57
    return-void

    .line 51
    .end local v1           #negativeButton:Landroid/view/View;
    .end local v2           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_58
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/EditEventActivity;->showTitlebar(Z)V

    .line 52
    const v3, 0x7f080417

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditEventActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 102
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EditEventActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 104
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 105
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 108
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    return-void
.end method

.method public onEventChanged()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->updatePositiveButtonEnabled()V

    .line 151
    return-void
.end method

.method public onEventClosed()V
    .registers 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->finish()V

    .line 167
    return-void
.end method

.method public onEventSaved()V
    .registers 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->finish()V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 122
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 117
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->onTitlebarLabelClick()V

    .line 118
    const/4 v0, 0x1

    goto :goto_8

    .line 115
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 88
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->updatePositiveButtonEnabled()V

    .line 92
    :goto_c
    return-void

    .line 90
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->finish()V

    goto :goto_c
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditEventActivity;->onBackPressed()V

    .line 133
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method
