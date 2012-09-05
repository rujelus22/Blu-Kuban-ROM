.class public Lcom/google/android/apps/plus/phone/EditAudienceActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "EditAudienceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;


# instance fields
.field private mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

.field private mPositiveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 244
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
    .line 252
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 180
    if-nez p1, :cond_2f

    const/4 v5, -0x1

    if-ne p2, v5, :cond_2f

    .line 181
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v5, :cond_2f

    .line 182
    const-string v5, "person_id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, personId:Ljava/lang/String;
    if-eqz v3, :cond_1c

    .line 185
    :try_start_11
    const-string v5, "person_proto"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 186
    .local v4, personProto:[B
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addSelectedPerson(Ljava/lang/String;[B)V
    :try_end_1c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_1c} :catch_30

    .line 191
    .end local v4           #personProto:[B
    :cond_1c
    :goto_1c
    const-string v5, "circle_id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, circleId:Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 194
    :try_start_24
    const-string v5, "circle_proto"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 196
    .local v1, circleProto:[B
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v5, v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addSelectedCircle(Ljava/lang/String;[B)V
    :try_end_2f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_24 .. :try_end_2f} :catch_39

    .line 203
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #circleProto:[B
    .end local v3           #personId:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 187
    .restart local v3       #personId:Ljava/lang/String;
    :catch_30
    move-exception v2

    .line 188
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v5, "EditAudienceActivity"

    const-string v6, "Error parsing Person protobuffer"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 197
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0       #circleId:Ljava/lang/String;
    :catch_39
    move-exception v2

    .line 198
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

    .line 76
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v0, :cond_32

    .line 77
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setCircleSelectionEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "circle_usage_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setCircleUsageType(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "search_plus_pages_enabled"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setIncludePlusPages(Z)V

    .line 85
    :cond_32
    return-void
.end method

.method public onAudienceChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "countText"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v0, :cond_13

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isSelectionValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_20

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 237
    :cond_20
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 221
    :goto_7
    return-void

    .line 212
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audience"

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 214
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->finish()V

    goto :goto_7

    .line 218
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->finish()V

    goto :goto_7

    .line 210
    :pswitch_data_24
    .packed-switch 0x7f0d0058
        :pswitch_8
        :pswitch_20
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f030025

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, title:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_48

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_20
    const v2, 0x7f0d0058

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    .line 64
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v2, :cond_38

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isSelectionValid()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    :cond_38
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v2, 0x7f0d0059

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 58
    :cond_48
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->showTitlebar(ZZ)V

    .line 59
    const v2, 0x7f020087

    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 60
    const v2, 0x7f10000d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->createTitlebarButtons(I)V

    goto :goto_20
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 148
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 140
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_9

    .line 144
    :sswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->onSearchRequested()Z

    goto :goto_9

    .line 138
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b3 -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 129
    const v0, 0x7f0d01b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_16

    const/4 v0, 0x1

    :goto_e
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0

    .line 129
    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->isIntentAccountActive()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->hasAudience()Z

    move-result v1

    if-nez v1, :cond_24

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "audience"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 97
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz v0, :cond_24

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->mEditAudienceFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 104
    .end local v0           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :cond_24
    :goto_24
    return-void

    .line 102
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->finish()V

    goto :goto_24
.end method

.method public onSearchRequested()Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_phones_enabled"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 160
    .local v5, includePhoneOnlyContacts:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_plus_pages_enabled"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 162
    .local v6, includePlusPages:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_pub_profiles_enabled"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 164
    .local v4, includePublicProfiles:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "circle_usage_type"

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 167
    .local v3, searchUsageType:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    move-object v0, p0

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return v2
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/EditAudienceActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 112
    return-void
.end method
