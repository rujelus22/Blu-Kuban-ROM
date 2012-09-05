.class public Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;
.super Landroid/app/Activity;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

.field mOptionIsChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    return-void
.end method

.method private RegisterActionBar()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x2

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_79

    .line 65
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 66
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, customActionBarView:Landroid/view/View;
    const v6, 0x7f0d009d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, saveMenuItem:Landroid/view/View;
    iget-boolean v6, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-eqz v6, :cond_7a

    move v6, v7

    :goto_24
    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 69
    new-instance v6, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v6, 0x7f0d009e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/16 v6, 0xe

    const/16 v8, 0x1e

    invoke-virtual {v0, v6, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    const v6, 0x7f0a0272

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    const-string v1, ""

    .line 92
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v6, "he"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "iw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 95
    :cond_69
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x13

    invoke-direct {v6, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 104
    :goto_73
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 105
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 107
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    .end local v5           #saveMenuItem:Landroid/view/View;
    :cond_79
    return-void

    .line 68
    .restart local v2       #customActionBarView:Landroid/view/View;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #saveMenuItem:Landroid/view/View;
    :cond_7a
    const/4 v6, 0x0

    goto :goto_24

    .line 99
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    :cond_7c
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v6, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_73
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;)Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    return-object v0
.end method


# virtual methods
.method public doRevertActionMenu()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->finish()V

    .line 150
    return-void
.end method

.method public doSaveAction([Z)V
    .registers 4
    .parameter "mSortOptions"

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, i:Landroid/content/Intent;
    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 143
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->finish()V

    .line 145
    return-void
.end method

.method public onChangedOptionItems(Z)V
    .registers 3
    .parameter "optionIsChanged"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-ne v0, p1, :cond_5

    .line 165
    :goto_4
    return-void

    .line 163
    :cond_5
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->RegisterActionBar()V

    goto :goto_4
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 156
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "ContactHistoryViewByListActivity"

    const-string v1, "onCreate!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00e1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->RegisterActionBar()V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setExtras(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 130
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->finish()V

    .line 131
    const/4 v0, 0x1

    goto :goto_b

    .line 128
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "selectAll"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSelectAllCheckBox(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSortOptions([Z)V

    .line 115
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "options"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 122
    const-string v0, "selectAll"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSelectAllCheckBox()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method
