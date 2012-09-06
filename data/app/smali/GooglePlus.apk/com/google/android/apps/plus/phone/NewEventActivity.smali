.class public Lcom/google/android/apps/plus/phone/NewEventActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "NewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;


# instance fields
.field private mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

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
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mPositiveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->isValidEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    :cond_f
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->getIntent()Landroid/content/Intent;

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
    .line 195
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CREATE_EVENT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 68
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    if-eqz v0, :cond_12

    .line 69
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->createEvent()V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->setOnEventChangedListener(Lcom/google/android/apps/plus/fragments/EditEventFragment$OnEditEventListener;)V

    .line 73
    :cond_12
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->onDiscard()V

    .line 138
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 188
    :cond_7
    :goto_7
    return-void

    .line 177
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mEditEventFragment:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->save()V

    goto :goto_7

    .line 184
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->finish()V

    goto :goto_7

    .line 175
    :pswitch_data_16
    .packed-switch 0x7f09006e
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f030070

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/NewEventActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->shouldShowAndroidActionBar()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_17
    const v3, 0x7f09006e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/NewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mPositiveButton:Landroid/view/View;

    .line 51
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v3, 0x7f09006f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/NewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, negativeButton:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v2

    .line 58
    .local v2, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v2, :cond_3f

    .line 59
    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mShakeDetectorWasRunning:Z

    .line 61
    :cond_3f
    return-void

    .line 46
    .end local v1           #negativeButton:Landroid/view/View;
    .end local v2           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_40
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/NewEventActivity;->showTitlebar(Z)V

    .line 47
    const v3, 0x7f0803fe

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/NewEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/NewEventActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 97
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/NewEventActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 99
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 100
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 103
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    return-void
.end method

.method public onEventChanged()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->updatePositiveButtonEnabled()V

    .line 146
    return-void
.end method

.method public onEventClosed()V
    .registers 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->finish()V

    .line 154
    return-void
.end method

.method public onEventSaved()V
    .registers 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->finish()V

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 117
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 112
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->onTitlebarLabelClick()V

    .line 113
    const/4 v0, 0x1

    goto :goto_8

    .line 110
    :pswitch_data_e
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->updatePositiveButtonEnabled()V

    .line 87
    :goto_c
    return-void

    .line 85
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->finish()V

    goto :goto_c
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/NewEventActivity;->onBackPressed()V

    .line 128
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method
