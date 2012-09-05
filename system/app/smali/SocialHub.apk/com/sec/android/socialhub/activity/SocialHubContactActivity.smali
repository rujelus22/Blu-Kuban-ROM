.class public Lcom/sec/android/socialhub/activity/SocialHubContactActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "SocialHubContactActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;


# instance fields
.field private bIsFirstQuery:Z

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

.field private mLeftButton:Landroid/widget/Button;

.field private mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRightButton:Landroid/widget/Button;

.field mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

.field private miCount:I

.field private miSpType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miCount:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mRecipients:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 48
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mRightButton:Landroid/widget/Button;

    .line 51
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->bIsFirstQuery:Z

    .line 55
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->bIsFirstQuery:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->bIsFirstQuery:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->startSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Lcom/sec/android/socialhub/contacts/ContactListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getIntentData()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "sp_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    .line 260
    const-string v3, "recipient_count"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miCount:I

    .line 261
    const-string v3, "selected_recipients"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mRecipients:Ljava/util/ArrayList;

    .line 263
    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    iput-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 265
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    if-eqz v3, :cond_4a

    .line 267
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getStringResource(I)I

    move-result v2

    .line 269
    .local v2, resource:I
    if-ltz v2, :cond_3c

    .line 271
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setTitle(Ljava/lang/String;)V

    .line 274
    :cond_3c
    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getLimitation(I)I

    move-result v1

    .line 276
    .local v1, limit:I
    if-gt v1, v5, :cond_4a

    .line 278
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setVisibleCount(I)V

    .line 281
    .end local v1           #limit:I
    .end local v2           #resource:I
    :cond_4a
    return-void
.end method

.method private initializeView()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 105
    const v2, 0x7f0b0080

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 106
    const v2, 0x7f0b0081

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    .line 108
    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    .line 109
    const v2, 0x7f0b0027

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mRightButton:Landroid/widget/Button;

    .line 111
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->setSpType(I)V

    .line 116
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mServiceProvider:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getLimitation(I)I

    move-result v0

    .line 124
    .local v0, limitRecipients:I
    if-gt v0, v4, :cond_4a

    .line 125
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->getListView()Lcom/sec/android/socialhub/contacts/ContactListView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    .line 131
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setParentLayout(Landroid/view/ViewGroup;)V

    .line 132
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    const v3, 0x7f0800c2

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setIndexCharacter(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getContactSort()Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getColumnForSortIndex()I

    move-result v1

    .line 139
    .local v1, sort_key:I
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-virtual {v2, v1}, Lcom/sec/android/socialhub/contacts/ContactListView;->setSortedColumnIndex(I)V

    .line 141
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setOnQueryCompleteListener(Lcom/sec/android/socialhub/contacts/ContactListView$IQueryCompletListener;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setContactCheckedChangedListener(Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->addSelectedRecipients(Ljava/util/ArrayList;)V

    .line 197
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miCount:I

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/contacts/ContactListView;->setPossibleRecipientsCount(I)V

    .line 199
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    const v3, 0x7f0800c9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 201
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLeftButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mRightButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    invoke-virtual {v2, v4}, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->setFocusableInTouchMode(Z)V

    .line 226
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/contacts/ContactSearchLayout;->requestFocus()Z

    .line 227
    return-void
.end method

.method private startSync()V
    .registers 7

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->friendListRetrieveEx(Landroid/content/Context;ILjava/lang/String;ZZ)I

    .line 294
    return-void
.end method


# virtual methods
.method public getSpType()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    return v0
.end method

.method public onApiCalled(I)V
    .registers 4
    .parameter "reqType"

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onApiCalled(I)V

    .line 301
    packed-switch p1, :pswitch_data_1a

    .line 312
    :goto_6
    return-void

    .line 304
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->startProgressDialog()V

    goto :goto_6

    .line 301
    nop

    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setUse(Z)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setMode(I)V

    .line 65
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setLayout(I)V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->getIntentData()V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->initializeView()V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->requestConnect()V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 80
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 96
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 92
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->startSync()V

    .line 93
    const/4 v0, 0x1

    goto :goto_b

    .line 89
    nop

    :pswitch_data_12
    .packed-switch 0x7f0b012c
        :pswitch_c
    .end packed-switch
.end method

.method public onServiceConnected()V
    .registers 3

    .prologue
    .line 286
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListView;->getFriendData(I)V

    .line 289
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 13
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v4, 0x1

    .line 320
    packed-switch p4, :pswitch_data_30

    .line 340
    :goto_4
    return-void

    .line 325
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListView;->getFriendData(I)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mLayout:Lcom/sec/android/socialhub/contacts/ContactSearchLayout;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    if-ne p6, v4, :cond_2a

    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->friendListRetrieveEx(Landroid/content/Context;ILjava/lang/String;ZZ)I

    goto :goto_4

    .line 334
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_4

    .line 320
    :pswitch_data_30
    .packed-switch 0xc
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 13
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 348
    packed-switch p4, :pswitch_data_12

    .line 356
    :goto_3
    return-void

    .line 352
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->miSpType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListView;->getFriendData(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    goto :goto_3

    .line 348
    nop

    :pswitch_data_12
    .packed-switch 0xc
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public returnRecipients()V
    .registers 8

    .prologue
    .line 236
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, intent:Landroid/content/Intent;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v5, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/contacts/ContactListView;->getContactAdapter()Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->getCheckedListMap()Ljava/util/ArrayList;

    move-result-object v4

    .line 241
    .local v4, listMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->mListView:Lcom/sec/android/socialhub/contacts/ContactListView;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/contacts/ContactListView;->getContactAdapter()Lcom/sec/android/socialhub/contacts/ContactListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->getCheckedList()Ljava/util/HashMap;

    move-result-object v3

    .line 243
    .local v3, list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 248
    .end local v2           #key:Ljava/lang/String;
    :cond_39
    const-string v6, "recipients"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 250
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->finish()V

    .line 253
    return-void
.end method
