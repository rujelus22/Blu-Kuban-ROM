.class public Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;
.super Ljava/lang/Object;
.source "TwitterListsListAdapter.java"

# interfaces
.implements Lcom/sec/android/socialhub/adapter/SocialHubBaseListAdapterFactory$ISnsExtendListAdapter;


# instance fields
.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mContext:Landroid/content/Context;

.field private mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field private mSpType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 9
    .parameter "context"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v4, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 28
    iput-object v4, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput v5, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mSpType:I

    .line 30
    iput-object v4, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 34
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/String;

    new-array v3, v3, [I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 36
    iput v5, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mSpType:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mSpType:I

    return v0
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$FriendGrouping;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter$ListsViewWrapper;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemClickListenr()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter$1;-><init>(Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;)V

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/SimpleCursorAdapter;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-nez v0, :cond_13

    .line 43
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/adapter/SocialHubListsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 45
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method public getTitleResource()I
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 112
    const v0, 0x7f0800d1

    .line 114
    :goto_c
    return v0

    :cond_d
    const v0, 0x7f0800d2

    goto :goto_c
.end method

.method public isUseTitleCount()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public onApiCalled(ILcom/sec/android/socialhub/parent/IActivityUIHandler;)V
    .registers 3
    .parameter "reqType"
    .parameter "ui"

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_c

    .line 98
    :goto_3
    return-void

    .line 90
    :pswitch_4
    invoke-interface {p2}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->showTitleProgress()V

    .line 91
    invoke-interface {p2}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->disableRefreshMenu()V

    goto :goto_3

    .line 87
    nop

    :pswitch_data_c
    .packed-switch 0xe
        :pswitch_4
    .end packed-switch
.end method

.method public onHandledResponse(Lcom/sec/android/socialhub/parent/IActivityUIHandler;IIILandroid/net/Uri;ZZ)V
    .registers 8
    .parameter "ui"
    .parameter "reqID"
    .parameter "reqType"
    .parameter "spType"
    .parameter "uri"
    .parameter "bSuccess"
    .parameter "bContinue"

    .prologue
    .line 126
    packed-switch p3, :pswitch_data_c

    .line 137
    :goto_3
    return-void

    .line 129
    :pswitch_4
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->hideTitleProgress()V

    .line 130
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->enableRefreshMenu()V

    goto :goto_3

    .line 126
    nop

    :pswitch_data_c
    .packed-switch 0xe
        :pswitch_4
    .end packed-switch
.end method

.method public requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I
    .registers 13
    .parameter "sns"
    .parameter "connector"
    .parameter "bundle"
    .parameter "bIsNext"

    .prologue
    .line 75
    const/4 v7, -0x1

    .line 77
    .local v7, req:I
    if-eqz p1, :cond_12

    .line 79
    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mSpType:I

    const-string v3, "owner"

    const-string v4, "creator"

    const/4 v5, 0x1

    move-object v0, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->friendGroupingGet(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)I

    move-result v7

    .line 82
    :cond_12
    return v7
.end method

.method public setFeedProfile(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/TwitterListsListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 120
    return-void
.end method
