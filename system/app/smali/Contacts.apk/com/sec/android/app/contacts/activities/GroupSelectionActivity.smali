.class public Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupSelectionActivity.java"


# static fields
.field public static mSaveMenuItem:Landroid/view/View;


# instance fields
.field private mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

.field private mRawContactId:J

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    return-wide v0
.end method

.method public static onUpdateSaveMenuItem(Z)V
    .registers 4
    .parameter "status"

    .prologue
    .line 183
    sget-object v1, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    const v2, 0x7f0d009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, saveMenuItem:Landroid/view/View;
    if-eqz v0, :cond_11

    .line 185
    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    :cond_11
    return-void

    .line 185
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 62
    instance-of v0, p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-eqz v0, :cond_8

    .line 63
    check-cast p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 65
    :cond_8
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, -0x2

    .line 68
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v6, 0x7f040084

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_79

    .line 75
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 76
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, customActionBarView:Landroid/view/View;
    const v6, 0x7f0d009d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    .line 78
    sget-object v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v6, 0x7f0d009e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 98
    .local v5, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0247

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    const-string v1, ""

    .line 112
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v6, "he"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    const-string v6, "iw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 115
    :cond_6f
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x13

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #revertMenuItem:Landroid/view/View;
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.RAWCONTACT_ID"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 126
    .local v3, extras:Landroid/os/Bundle;
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 128
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0d01a5

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 132
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    .line 133
    return-void

    .line 119
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v2       #customActionBarView:Landroid/view/View;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #revertMenuItem:Landroid/view/View;
    :cond_b8
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_79
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 141
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-nez v6, :cond_8

    .line 159
    :cond_7
    :goto_7
    return-void

    .line 144
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, action:Ljava/lang/String;
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 146
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, strTitle:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 148
    .local v4, groupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 150
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 152
    .local v3, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, Titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 155
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 178
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 172
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    .line 173
    const/4 v0, 0x1

    goto :goto_b

    .line 170
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 137
    return-void
.end method
