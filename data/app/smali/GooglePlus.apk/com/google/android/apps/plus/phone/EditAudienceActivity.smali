.class public Lcom/google/android/apps/plus/phone/EditAudienceActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EditAudienceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;


# instance fields
.field private mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

.field private mPositiveButton:Landroid/view/View;

.field private mShakeDetectorWasRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

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
    .line 281
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 208
    if-nez p1, :cond_2f

    const/4 v5, -0x1

    if-ne p2, v5, :cond_2f

    .line 209
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v5, :cond_2f

    .line 210
    const-string v5, "person_id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, personId:Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 213
    :try_start_11
    const-string v5, "person_proto"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 214
    .local v4, personProto:[B
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addSelectedPerson(Ljava/lang/String;[B)V
    :try_end_1c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_1c} :catch_30

    .line 219
    .end local v4           #personProto:[B
    :cond_1c
    :goto_1c
    const-string v5, "circle_id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, circleId:Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 222
    :try_start_24
    const-string v5, "circle_proto"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 224
    .local v1, circleProto:[B
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v5, v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addSelectedCircle(Ljava/lang/String;[B)V
    :try_end_2f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_24 .. :try_end_2f} :catch_39

    .line 231
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #circleProto:[B
    .end local v3           #personId:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 215
    .restart local v3       #personId:Ljava/lang/String;
    :catch_30
    move-exception v2

    .line 216
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v5, "EditAudienceActivity"

    const-string v6, "Error parsing Person protobuffer"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 225
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0       #circleId:Ljava/lang/String;
    :catch_39
    move-exception v2

    .line 226
    .restart local v2       #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v5, "EditAudienceActivity"

    const-string v6, "Error parsing Person protobuffer"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 7
    .parameter "fragment"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v0, :cond_50

    .line 84
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setCircleSelectionEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "circle_usage_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setCircleUsageType(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "search_plus_pages_enabled"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setIncludePlusPages(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filter_null_gaia_ids"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setFilterNullGaiaIds(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "audience_is_read_only"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setIncomingAudienceIsReadOnly(Z)V

    .line 96
    :cond_50
    return-void
.end method

.method public onAudienceChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "countText"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isSelectionValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 260
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 266
    :cond_32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 249
    :goto_7
    return-void

    .line 240
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audience"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 242
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->setResult(ILandroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->finish()V

    goto :goto_7

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->finish()V

    goto :goto_7

    .line 238
    :pswitch_data_24
    .packed-switch 0x7f09006e
        :pswitch_8
        :pswitch_20
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v3, 0x7f030026

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->shouldShowAndroidActionBar()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_20
    const v3, 0x7f09006e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v3, :cond_38

    .line 66
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isSelectionValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    :cond_38
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v3, 0x7f09006f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v1

    .line 73
    .local v1, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v1, :cond_57

    .line 74
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mShakeDetectorWasRunning:Z

    .line 76
    :cond_57
    return-void

    .line 59
    .end local v1           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_58
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->showTitlebar(ZZ)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 61
    const v3, 0x7f10000d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->createTitlebarButtons(I)V

    goto :goto_20
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 125
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 127
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 128
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 131
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 175
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 167
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 171
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->onSearchRequested()Z

    goto :goto_9

    .line 165
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902a9 -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 156
    const v0, 0x7f0902a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 103
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->isIntentAccountActive()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->hasAudience()Z

    move-result v1

    if-nez v1, :cond_24

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "audience"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 108
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz v0, :cond_24

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 115
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_24
    :goto_24
    return-void

    .line 113
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->finish()V

    goto :goto_24
.end method

.method public onSearchRequested()Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_phones_enabled"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 187
    .local v5, includePhoneOnlyContacts:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_plus_pages_enabled"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 189
    .local v6, includePlusPages:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_pub_profiles_enabled"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 191
    .local v4, includePublicProfiles:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "circle_usage_type"

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 194
    .local v3, searchUsageType:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "filter_null_gaia_ids"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move-object v0, p0

    move v7, v2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    return v2
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 139
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method
