.class public Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactHistoryActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;


# instance fields
.field public mEveryBodyIsOff:Z

.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

.field public mIsExistItems:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSortOptions:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    return-void
.end method

.method private updateActionBar(Z)V
    .registers 13
    .parameter "isDeleteMode"

    .prologue
    const/16 v9, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, -0x2

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 175
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1f

    .line 177
    if-nez p1, :cond_20

    .line 178
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 181
    const v7, 0x7f0a0255

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 229
    :cond_1f
    :goto_1f
    return-void

    .line 184
    :cond_20
    const/16 v8, 0x1e

    invoke-virtual {v0, v9, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 188
    const v8, 0x7f0a0290

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 191
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f04001c

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, customActionBarView:Landroid/view/View;
    const v8, 0x7f0d00a4

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 194
    .local v5, saveMenuItem:Landroid/view/View;
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-eqz v8, :cond_8f

    :goto_4a
    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    new-instance v6, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v6, 0x7f0d009e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 204
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const-string v1, ""

    .line 213
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v6, "he"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    const-string v6, "iw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 216
    :cond_7e
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x13

    invoke-direct {v6, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 225
    :goto_88
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 226
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_1f

    .end local v1           #currentLang:Ljava/lang/String;
    .end local v4           #revertMenuItem:Landroid/view/View;
    :cond_8f
    move v6, v7

    .line 194
    goto :goto_4a

    .line 220
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    :cond_91
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v6, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_88
.end method

.method private updateMode(Z)V
    .registers 3
    .parameter "isDeleteMode"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    .line 233
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V

    .line 234
    return-void
.end method


# virtual methods
.method protected doDeleteAction()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->doDeleteAction()V

    .line 242
    return-void
.end method

.method protected doRevertActionMenu()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    .line 238
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 147
    :goto_3
    return-void

    .line 133
    :cond_4
    packed-switch p1, :pswitch_data_4c

    goto :goto_3

    .line 135
    :pswitch_8
    const-string v1, "options"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "view_by_call"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v1, "view_by_message"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v1, "view_by_email"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v1, "view_by_im"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->refreshHistoryList()V

    goto :goto_3

    .line 133
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    .line 95
    :goto_c
    return-void

    .line 93
    :cond_d
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00cf

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 153
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 155
    const v1, 0x7f0d0273

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 157
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    .line 85
    :cond_c
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onExistsDeletedItems(Z)V
    .registers 3
    .parameter "everyBodyIsOff"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-ne v0, p1, :cond_5

    .line 250
    :goto_4
    return-void

    .line 248
    :cond_5
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateActionBar(Z)V

    goto :goto_4
.end method

.method public onFinishedDeletion(Z)V
    .registers 3
    .parameter "finished"

    .prologue
    .line 254
    if-eqz p1, :cond_6

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    .line 256
    :cond_6
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_38

    .line 125
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 108
    :sswitch_d
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 109
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    goto :goto_c

    .line 111
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->finish()V

    goto :goto_c

    .line 115
    :sswitch_1e
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateMode(Z)V

    goto :goto_c

    .line 118
    :sswitch_22
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v2, "options"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getSortOptions()[Z

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 106
    :sswitch_data_38
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0d0273 -> :sswitch_1e
        0x7f0d0274 -> :sswitch_22
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const v4, 0x7f0d0274

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f0d0273

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 163
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    :goto_1e
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 166
    :cond_23
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1e
.end method

.method public onQueryCompleted(Z)V
    .registers 3
    .parameter "hasItems"

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    if-eq v0, p1, :cond_9

    .line 261
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->invalidateOptionsMenu()V

    .line 264
    :cond_9
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
