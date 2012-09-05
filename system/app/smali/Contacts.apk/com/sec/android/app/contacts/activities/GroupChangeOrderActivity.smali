.class public Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupChangeOrderActivity.java"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    return-object v0
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .registers 4
    .parameter "createContentView"
    .parameter "savedState"

    .prologue
    .line 72
    if-eqz p1, :cond_8

    .line 73
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setContentView(I)V

    .line 75
    :cond_8
    return-void
.end method

.method private setActionBar()V
    .registers 10

    .prologue
    const/4 v8, -0x2

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_64

    .line 80
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 81
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, customActionBarView:Landroid/view/View;
    const v6, 0x7f0d009d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 84
    .local v5, saveMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v6, 0x7f0d009e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 93
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/16 v6, 0x1e

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 104
    const-string v1, ""

    .line 105
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v6, "he"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    const-string v6, "iw"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 108
    :cond_54
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x13

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 117
    :goto_5e
    const v6, 0x7f0a022c

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 119
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    .end local v5           #saveMenuItem:Landroid/view/View;
    :cond_64
    return-void

    .line 112
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v2       #customActionBarView:Landroid/view/View;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #revertMenuItem:Landroid/view/View;
    .restart local v5       #saveMenuItem:Landroid/view/View;
    :cond_65
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_5e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d0184

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setActionBar()V

    .line 65
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 135
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 126
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    .line 130
    const/4 v0, 0x1

    goto :goto_b

    .line 124
    :pswitch_data_20
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
