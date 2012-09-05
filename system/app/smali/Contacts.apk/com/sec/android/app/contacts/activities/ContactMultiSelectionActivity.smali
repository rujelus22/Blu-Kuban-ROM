.class public Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;,
        Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionCode:I

.field private mCustomActionBarView:Landroid/view/View;

.field private mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mIsAutoAdd:Z

.field protected mListFragment:Landroid/app/Fragment;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 86
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .registers 4
    .parameter "actionBar"

    .prologue
    .line 180
    if-eqz p1, :cond_19

    .line 182
    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 184
    iget v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 185
    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 197
    :cond_19
    :goto_19
    return-void

    .line 187
    :cond_1a
    iget v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 188
    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_19

    .line 191
    :cond_28
    const-string v0, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 192
    const v0, 0x7f0a0290

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_19

    .line 193
    :cond_39
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 194
    const v0, 0x7f0a021f

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_19
.end method

.method private getIntentInfo(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    .line 201
    const-string v0, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 202
    const-string v0, "EditMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    .line 203
    const-string v0, "GroupInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 205
    const-string v0, "AutoAdd"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    .line 207
    const-string v0, "ModifiedIds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    .line 208
    const-string v0, "ExceptedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    .line 212
    :cond_3e
    :goto_3e
    return-void

    .line 209
    :cond_3f
    const-string v0, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 210
    const-string v0, "SelectedAccounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    goto :goto_3e
.end method

.method private updateDoneButtonState(Z)V
    .registers 5
    .parameter "isEnable"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v2, 0x7f0d009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, saveMenuItem:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 330
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .registers 5

    .prologue
    .line 219
    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 220
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;-><init>()V

    .line 221
    .local v0, fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setMode(I)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 224
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setAutoAdd(Z)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mModifiedMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setModifiedMemberIds(Ljava/util/List;)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mExceptedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setExceptedAccounts(Ljava/util/List;)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setDirectorySearchMode(I)V

    .line 229
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 239
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e5

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 241
    return-void

    .line 230
    :cond_43
    const-string v1, "com.sec.android.app.contacts.action.GROUP_DELETE"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 231
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;-><init>()V

    .line 232
    .local v0, fragment:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_2e

    .line 233
    .end local v0           #fragment:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
    :cond_55
    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 234
    new-instance v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;-><init>()V

    .line 235
    .local v0, fragment:Lcom/sec/android/app/contacts/group/AccountPickerFragment;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedAccounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setSelectedAccounts(Ljava/util/List;)V

    .line 236
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_2e
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 90
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_c

    .line 91
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    .line 97
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setupActionListener()V

    .line 98
    return-void

    .line 92
    .restart local p1
    :cond_c
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_15

    .line 93
    check-cast p1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_8

    .line 94
    .restart local p1
    :cond_15
    instance-of v0, p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_8

    .line 95
    check-cast p1, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedState"

    .prologue
    const/4 v9, -0x2

    .line 102
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    if-eqz p1, :cond_e

    .line 105
    const-string v6, "actionCode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    .line 108
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 109
    .local v3, intent:Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getIntentInfo(Landroid/content/Intent;)V

    .line 111
    const v6, 0x7f04003b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_83

    .line 115
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 116
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    .line 117
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v7, 0x7f0d009d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 118
    .local v5, saveMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    const v7, 0x7f0d009e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 127
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const/16 v6, 0x1e

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 139
    const-string v1, ""

    .line 140
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v6, "he"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    const-string v6, "iw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 143
    :cond_74
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x13

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 152
    :goto_80
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    .line 154
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    .end local v5           #saveMenuItem:Landroid/view/View;
    :cond_83
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->configureListFragment()V

    .line 155
    return-void

    .line 147
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    .restart local v5       #saveMenuItem:Landroid/view/View;
    :cond_87
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_80
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v1, :cond_8

    .line 171
    :cond_7
    :goto_7
    return-void

    .line 164
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, action:Ljava/lang/String;
    const-string v1, "deleteCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v1, :cond_21

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->onDeleteCompleted()V

    .line 169
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 257
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 248
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    .line 252
    const/4 v0, 0x1

    goto :goto_b

    .line 246
    :pswitch_data_20
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method public setupActionListener()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    if-eqz v0, :cond_14

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->setGroupMemberPickerActionListener(Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;)V

    .line 270
    :cond_13
    :goto_13
    return-void

    .line 264
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    if-eqz v0, :cond_27

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    goto :goto_13

    .line 267
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    if-eqz v0, :cond_13

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V

    goto :goto_13
.end method
