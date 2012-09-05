.class public Lcom/google/android/apps/plus/phone/PeopleSearchActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PeopleSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# instance fields
.field private mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private isPickerMode()Z
    .registers 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "picker_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getIntent()Landroid/content/Intent;

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
    .line 227
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_SEARCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    :goto_6
    return-void

    .line 203
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    goto :goto_6
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 8
    .parameter "fragment"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    if-eqz v1, :cond_69

    .line 68
    check-cast p1, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setSearchViewAdapter(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v4, "search_circles_usage"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setCircleUsageType(I)V

    .line 74
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isPickerMode()Z

    move-result v1

    if-nez v1, :cond_6a

    move v1, v2

    :goto_2f
    invoke-virtual {v4, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setAddToCirclesActionEnabled(Z)V

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v4, "search_pub_profiles_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPublicProfileSearchEnabled(Z)V

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v4, "search_phones_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPhoneOnlyContactsEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v4, "search_plus_pages_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPlusPagesEnabled(Z)V

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v3, "search_in_circles_enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPeopleInCirclesEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setInitialQueryString(Ljava/lang/String;)V

    .line 85
    .end local v0           #intent:Landroid/content/Intent;
    :cond_69
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_6a
    move v1, v3

    .line 74
    goto :goto_2f
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 6
    .parameter "personId"
    .parameter "circle"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "circle_proto"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    .line 161
    return-void

    .line 159
    .end local v0           #intent:Landroid/content/Intent;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f03005c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setContentView(I)V

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_45

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-static {p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    if-eqz v1, :cond_45

    .line 57
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setSearchViewAdapter(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V

    .line 60
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_45
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 183
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 180
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 181
    const/4 v0, 0x1

    goto :goto_8

    .line 178
    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 8
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "person_proto"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 134
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    .line 145
    :goto_20
    return-void

    .line 136
    .end local v0           #intent:Landroid/content/Intent;
    :cond_21
    if-eqz p2, :cond_34

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 141
    .end local v0           #intent:Landroid/content/Intent;
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 143
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20
.end method

.method public onQueryClose()V
    .registers 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    .line 123
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 108
    return-void
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "query"

    .prologue
    .line 115
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    if-eqz v0, :cond_12

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->startSearch()V

    .line 101
    :cond_12
    :goto_12
    return-void

    .line 99
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    goto :goto_12
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 192
    return-void
.end method
