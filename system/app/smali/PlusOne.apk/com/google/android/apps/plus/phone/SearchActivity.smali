.class public Lcom/google/android/apps/plus/phone/SearchActivity;
.super Lcom/google/android/apps/plus/fragments/EsTabActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;
.implements Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mCurrentFragmentIndex:I

.field private mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

.field private mQuery:Ljava/lang/CharSequence;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, -0x1

    const v1, 0x7f0d005f

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;-><init>(II)V

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    .line 62
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 266
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 248
    return-void
.end method

.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3
    .parameter "tabId"

    .prologue
    .line 322
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->SEARCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 6
    .parameter "fragment"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 163
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    if-eqz v1, :cond_11

    .line 164
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/plus/phone/FragmentSearchable;

    aput-object v1, v2, v3

    .line 165
    invoke-virtual {p0, v3, p1}, Lcom/google/android/apps/plus/phone/SearchActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    .line 178
    .end local p1
    :cond_10
    :goto_10
    return-void

    .line 166
    .restart local p1
    :cond_11
    instance-of v1, p1, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 167
    check-cast v0, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    .line 168
    .local v0, psf:Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setSearchEditTextVisible(Z)V

    .line 169
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setOnSelectionChangeListener(Lcom/google/android/apps/plus/fragments/PeopleSearchFragment$OnSelectionChangeListener;)V

    .line 170
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setCircleUsageType(I)V

    .line 171
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPeopleInCirclesEnabled(Z)V

    .line 172
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPlusPagesEnabled(Z)V

    .line 173
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setPublicProfileSearchEnabled(Z)V

    .line 174
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;->setAddToCirclesActionEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    check-cast p1, Lcom/google/android/apps/plus/phone/FragmentSearchable;

    .end local p1
    aput-object p1, v1, v2

    .line 176
    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->onAttachFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_10
.end method

.method public onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 4
    .parameter "circleId"
    .parameter "build"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0165

    if-ne v0, v1, :cond_2d

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_27

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryChanged(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryEntered(Ljava/lang/CharSequence;)V

    .line 128
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 133
    :goto_2c
    return-void

    .line 132
    :cond_2d
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onClick(Landroid/view/View;)V

    goto :goto_2c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_7e

    .line 74
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    .line 75
    const-string v4, "current_fragment_index"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    .line 88
    :cond_1b
    :goto_1b
    const v4, 0x7f03008e

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/SearchActivity;->setContentView(I)V

    .line 90
    const v4, 0x7f0d005d

    const v5, 0x7f0d0061

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/apps/plus/phone/SearchActivity;->addTab(III)V

    .line 91
    const v4, 0x7f0d005c

    const v5, 0x7f0d0060

    invoke-virtual {p0, v7, v4, v5}, Lcom/google/android/apps/plus/phone/SearchActivity;->addTab(III)V

    .line 93
    const-string v4, "account"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_9f

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    invoke-static {p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->createInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/views/SearchViewAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    .line 100
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V

    .line 101
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 104
    const v4, 0x7f0d0163

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :goto_78
    iget v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/SearchActivity;->selectTab(I)V

    .line 116
    return-void

    .line 77
    :cond_7e
    const-string v4, "tab"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, tab:Ljava/lang/String;
    iput v6, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    .line 79
    if-eqz v3, :cond_1b

    .line 80
    const-string v4, "posts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 81
    iput v6, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    goto :goto_1b

    .line 82
    :cond_93
    const-string v4, "people"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 83
    iput v7, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    goto/16 :goto_1b

    .line 106
    .end local v3           #tab:Ljava/lang/String;
    :cond_9f
    const v4, 0x7f0d0164

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 107
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 111
    const v4, 0x7f0d0165

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 112
    .local v2, searchGoButton:Landroid/widget/ImageButton;
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_78
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 331
    .local v0, success:Z
    if-eqz v0, :cond_21

    .line 332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_17

    .line 333
    const v1, 0x7f0d01b8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f10001d

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    :cond_21
    return v0
.end method

.method protected onCreateTab(I)Landroid/support/v4/app/Fragment;
    .registers 10
    .parameter "tabId"

    .prologue
    const/4 v2, 0x0

    .line 185
    packed-switch p1, :pswitch_data_2c

    .line 195
    :goto_4
    return-object v2

    .line 187
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getStreamFragmentIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Landroid/content/Intent;

    move-result-object v7

    .line 190
    .local v7, intent:Landroid/content/Intent;
    new-instance v2, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    invoke-direct {v2, v7}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;-><init>(Landroid/content/Intent;)V

    goto :goto_4

    .line 193
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_26
    new-instance v2, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;

    invoke-direct {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchFragment;-><init>()V

    goto :goto_4

    .line 185
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_26
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1e

    if-nez p2, :cond_1e

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_19

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryChanged(Ljava/lang/CharSequence;)V

    .line 144
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 146
    :cond_1e
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 273
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 274
    sparse-switch p2, :sswitch_data_20

    .line 284
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 277
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1e

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryEntered(Ljava/lang/CharSequence;)V

    .line 280
    :cond_1e
    const/4 v0, 0x1

    goto :goto_a

    .line 274
    :sswitch_data_20
    .sparse-switch
        0x42 -> :sswitch_b
        0x54 -> :sswitch_b
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_2e

    .line 369
    :cond_9
    :goto_9
    return v0

    .line 355
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->finish()V

    move v0, v1

    .line 356
    goto :goto_9

    .line 360
    :sswitch_f
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v3, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v3, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/google/android/apps/plus/fragments/Refreshable;

    if-eqz v2, :cond_9

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v2, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v2

    check-cast v0, Lcom/google/android/apps/plus/fragments/Refreshable;

    invoke-interface {v0}, Lcom/google/android/apps/plus/fragments/Refreshable;->refresh()V

    move v0, v1

    .line 363
    goto :goto_9

    .line 353
    :sswitch_data_2e
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01b4 -> :sswitch_f
    .end sparse-switch
.end method

.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 7
    .parameter "personId"
    .parameter "contactLookupKey"
    .parameter "person"

    .prologue
    .line 300
    if-eqz p2, :cond_13

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    :goto_12
    return-void

    .line 304
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryClose()V
    .registers 1

    .prologue
    .line 241
    return-void
.end method

.method public onQueryTextChanged(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_13

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryChanged(Ljava/lang/CharSequence;)V

    .line 223
    :cond_13
    return-void
.end method

.method public onQueryTextSubmitted(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_15

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryEntered(Ljava/lang/CharSequence;)V

    .line 234
    :cond_15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 155
    const-string v0, "current_fragment_index"

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method protected onTabSelected(ILandroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "index"
    .parameter "fragment"

    .prologue
    .line 203
    iput p1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    check-cast p2, Lcom/google/android/apps/plus/phone/FragmentSearchable;

    .end local p2
    aput-object p2, v0, v1

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryChanged(Ljava/lang/CharSequence;)V

    .line 207
    iget v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    if-nez v0, :cond_24

    .line 208
    const v0, 0x7f070170

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->setSearchHintText(Ljava/lang/String;)V

    .line 212
    :cond_23
    :goto_23
    return-void

    .line 209
    :cond_24
    iget v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 210
    const v0, 0x7f070171

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SearchActivity;->setSearchHintText(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "query"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mQuery:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mFragments:[Lcom/google/android/apps/plus/phone/FragmentSearchable;

    iget v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mCurrentFragmentIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/phone/FragmentSearchable;->onSearchQueryChanged(Ljava/lang/CharSequence;)V

    .line 259
    :cond_13
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SearchActivity;->finish()V

    .line 380
    return-void
.end method

.method protected setSearchHintText(Ljava/lang/String;)V
    .registers 5
    .parameter "hintText"

    .prologue
    .line 388
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    .line 389
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    if-eqz v1, :cond_17

    .line 390
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchViewAdapter:Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 391
    .local v0, searchView:Landroid/widget/SearchView;
    if-eqz v0, :cond_17

    .line 392
    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 398
    .end local v0           #searchView:Landroid/widget/SearchView;
    :cond_17
    :goto_17
    return-void

    .line 395
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_17

    .line 396
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method
