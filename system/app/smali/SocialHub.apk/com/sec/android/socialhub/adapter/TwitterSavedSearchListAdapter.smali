.class public Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;
.super Ljava/lang/Object;
.source "TwitterSavedSearchListAdapter.java"

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
    iput-object v4, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 28
    iput-object v4, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput v5, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mSpType:I

    .line 30
    iput-object v4, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 34
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/String;

    new-array v3, v3, [I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 36
    iput v5, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mSpType:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mSpType:I

    return v0
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$SearchingKeywords;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter$ListsViewSearchWrapper;->PROJECTION:[Ljava/lang/String;

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
    new-instance v0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter$1;-><init>(Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;)V

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/SimpleCursorAdapter;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-nez v0, :cond_13

    .line 43
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/adapter/SocialHubSearchAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 45
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method public getTitleResource()I
    .registers 2

    .prologue
    .line 104
    const v0, 0x7f0800d3

    return v0
.end method

.method public isUseTitleCount()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onApiCalled(ILcom/sec/android/socialhub/parent/IActivityUIHandler;)V
    .registers 3
    .parameter "reqType"
    .parameter "ui"

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_c

    .line 95
    :goto_3
    return-void

    .line 91
    :pswitch_4
    invoke-interface {p2}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->showTitleProgress()V

    .line 92
    invoke-interface {p2}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->disableRefreshMenu()V

    goto :goto_3

    .line 88
    nop

    :pswitch_data_c
    .packed-switch 0x26
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
    .line 116
    packed-switch p3, :pswitch_data_c

    .line 123
    :goto_3
    return-void

    .line 119
    :pswitch_4
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->hideTitleProgress()V

    .line 120
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->enableRefreshMenu()V

    goto :goto_3

    .line 116
    nop

    :pswitch_data_c
    .packed-switch 0x26
        :pswitch_4
    .end packed-switch
.end method

.method public requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I
    .registers 8
    .parameter "sns"
    .parameter "connector"
    .parameter "bundle"
    .parameter "bIsNext"

    .prologue
    .line 76
    const/4 v0, -0x1

    .line 78
    .local v0, req:I
    if-eqz p2, :cond_a

    .line 80
    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mSpType:I

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->searchKeywordRetrieve(Landroid/content/Context;I)I

    .line 83
    :cond_a
    return v0
.end method

.method public setFeedProfile(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/TwitterSavedSearchListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 110
    return-void
.end method
