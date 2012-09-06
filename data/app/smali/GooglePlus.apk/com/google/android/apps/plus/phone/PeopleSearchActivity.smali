.class public Lcom/google/android/apps/plus/phone/PeopleSearchActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PeopleSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;


# instance fields
.field private mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private isPickerMode()Z
    .registers 4

    .prologue
    .line 133
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
    .line 162
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
    .line 178
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PEOPLE_SEARCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 9
    .parameter "fragment"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    instance-of v2, p1, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    if-eqz v2, :cond_70

    .line 52
    check-cast p1, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    .line 53
    const v2, 0x7f090277

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 54
    .local v1, progressBarView:Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v5, "search_circles_usage"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setCircleUsageType(I)V

    .line 60
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isPickerMode()Z

    move-result v2

    if-nez v2, :cond_71

    move v2, v3

    :goto_36
    invoke-virtual {v5, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setAddToCirclesActionEnabled(Z)V

    .line 61
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v5, "search_pub_profiles_enabled"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPublicProfileSearchEnabled(Z)V

    .line 63
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v5, "search_phones_enabled"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPhoneOnlyContactsEnabled(Z)V

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v5, "search_plus_pages_enabled"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPlusPagesEnabled(Z)V

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v4, "search_in_circles_enabled"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPeopleInCirclesEnabled(Z)V

    .line 69
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setInitialQueryString(Ljava/lang/String;)V

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #progressBarView:Landroid/widget/ProgressBar;
    :cond_70
    return-void

    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #progressBarView:Landroid/widget/ProgressBar;
    :cond_71
    move v2, v4

    .line 60
    goto :goto_36
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 6
    .parameter "personId"
    .parameter "circle"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "circle_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "circle_proto"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 119
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    .line 124
    return-void

    .line 122
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
    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030084

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setContentView(I)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->showTitlebar(Z)V

    .line 43
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 146
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 143
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 144
    const/4 v0, 0x1

    goto :goto_8

    .line 141
    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 7
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "person_proto"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$Person;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 98
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    .line 108
    :goto_20
    return-void

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :cond_21
    if-eqz p2, :cond_34

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->startExternalActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 105
    .end local v0           #intent:Landroid/content/Intent;
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    if-eqz v0, :cond_12

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->mSearchFragment:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->startSearch()V

    .line 87
    :cond_12
    :goto_12
    return-void

    .line 85
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->finish()V

    goto :goto_12
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PeopleSearchActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 155
    return-void
.end method
