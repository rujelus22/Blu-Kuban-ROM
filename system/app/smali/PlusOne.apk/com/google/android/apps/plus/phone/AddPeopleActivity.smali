.class public Lcom/google/android/apps/plus/phone/AddPeopleActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "AddPeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;


# instance fields
.field private mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

.field private mPositiveButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getIntent()Landroid/content/Intent;

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
    .line 216
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->ADD_TO_CIRCLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 139
    const/4 v3, -0x1

    if-ne p2, v3, :cond_18

    if-nez p1, :cond_18

    .line 140
    const-string v3, "person_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, personId:Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 143
    :try_start_d
    const-string v3, "person_proto"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 144
    .local v2, personProto:[B
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addSelectedPerson(Ljava/lang/String;[B)V
    :try_end_18
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_18} :catch_1c

    .line 151
    .end local v1           #personId:Ljava/lang/String;
    .end local v2           #personProto:[B
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    return-void

    .line 145
    .restart local v1       #personId:Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 146
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "AddPeopleActivity"

    const-string v4, "Error parsing Person protobuffer"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 76
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v1, :cond_22

    .line 77
    check-cast p1, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setCircleSelectionEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/EditAudienceFragment$OnAudienceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "circle_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, circleId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->excludeMembersOfCircle(Ljava/lang/String;)V

    .line 83
    .end local v0           #circleId:Ljava/lang/String;
    :cond_22
    return-void
.end method

.method public onAudienceChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "countText"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mPositiveButton:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    if-eqz v0, :cond_13

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mPositiveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->isSelectionValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_20

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 209
    :cond_20
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_62

    .line 193
    :goto_7
    return-void

    .line 169
    :pswitch_8
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v6, result:Landroid/content/Intent;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getSelectedPeople()Ljava/util/HashMap;

    move-result-object v3

    .line 172
    .local v3, people:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 173
    .local v4, personIds:[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 174
    .local v5, personNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, index:I
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v2

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 181
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    :cond_4b
    const-string v7, "person_ids"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v7, "person_names"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v6}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->finish()V

    goto :goto_7

    .line 189
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #people:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    .end local v4           #personIds:[Ljava/lang/String;
    .end local v5           #personNames:[Ljava/lang/String;
    .end local v6           #result:Landroid/content/Intent;
    :pswitch_5d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->finish()V

    goto :goto_7

    .line 167
    nop

    :pswitch_data_62
    .packed-switch 0x7f0d0058
        :pswitch_8
        :pswitch_5d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "circle_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, circleName:Ljava/lang/String;
    const v4, 0x7f07025d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, title:Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_49

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_30
    const v4, 0x7f0d0058

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mPositiveButton:Landroid/view/View;

    .line 65
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mPositiveButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v4, 0x7f0d0059

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, negativeButton:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 59
    .end local v2           #negativeButton:Landroid/view/View;
    :cond_49
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->showTitlebar(Z)V

    .line 60
    invoke-virtual {p0, v6, v3}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 61
    const/high16 v4, 0x7f10

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->createTitlebarButtons(I)V

    goto :goto_30
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 119
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 115
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->onSearchRequested()Z

    .line 116
    const/4 v0, 0x1

    goto :goto_8

    .line 113
    :pswitch_data_e
    .packed-switch 0x7f0d01b3
        :pswitch_9
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->mAddPeopleFragment:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->getSelectionCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->onAudienceChanged(Ljava/lang/String;)V

    .line 97
    :goto_12
    return-void

    .line 95
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->finish()V

    goto :goto_12
.end method

.method public onSearchRequested()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v3, -0x1

    move-object v0, p0

    move v4, v2

    move v6, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZIZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/apps/plus/phone/AddPeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return v2
.end method
