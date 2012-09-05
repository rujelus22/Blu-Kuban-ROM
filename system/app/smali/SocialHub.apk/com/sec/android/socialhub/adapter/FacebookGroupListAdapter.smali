.class public Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;
.super Ljava/lang/Object;
.source "FacebookGroupListAdapter.java"

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
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 28
    iput-object v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput v4, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    .line 30
    iput-object v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 34
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    new-array v3, v4, [I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 36
    iput v4, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    return v0
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$Group;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter$GroupViewWrapper;->PROJECTION:[Ljava/lang/String;

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
    new-instance v0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter$1;-><init>(Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;)V

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/SimpleCursorAdapter;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-nez v0, :cond_13

    .line 43
    new-instance v0, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/socialhub/adapter/SocialHubGroupAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 45
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method public getTitleResource()I
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 129
    const v0, 0x7f0800cf

    .line 131
    :goto_c
    return v0

    :cond_d
    const v0, 0x7f0800ce

    goto :goto_c
.end method

.method public isUseTitleCount()Z
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onApiCalled(ILcom/sec/android/socialhub/parent/IActivityUIHandler;)V
    .registers 3
    .parameter "reqType"
    .parameter "ui"

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_c

    .line 115
    :goto_3
    return-void

    .line 107
    :pswitch_4
    invoke-interface {p2}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->showTitleProgress()V

    .line 108
    invoke-interface {p2}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->disableRefreshMenu()V

    goto :goto_3

    .line 104
    nop

    :pswitch_data_c
    .packed-switch 0x12
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
    .line 142
    packed-switch p3, :pswitch_data_c

    .line 153
    :goto_3
    return-void

    .line 145
    :pswitch_4
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->hideTitleProgress()V

    .line 146
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityUIHandler;->enableRefreshMenu()V

    goto :goto_3

    .line 142
    nop

    :pswitch_data_c
    .packed-switch 0x12
        :pswitch_4
    .end packed-switch
.end method

.method public requestApi(Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/os/Bundle;Z)I
    .registers 11
    .parameter "sns"
    .parameter "connector"
    .parameter "bundle"
    .parameter "bIsNext"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 75
    const/4 v1, -0x1

    .line 77
    .local v1, req:I
    if-eqz p1, :cond_1b

    .line 81
    const/16 v3, 0x15

    :try_start_7
    invoke-interface {p1, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v3

    if-ne v3, v4, :cond_1b

    .line 83
    if-ne p4, v4, :cond_25

    .line 85
    iget-object v3, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    iget-object v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-nez v5, :cond_1c

    :goto_17
    invoke-virtual {p2, v3, v4, v2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->groupRetrieveNext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 99
    :cond_1b
    :goto_1b
    return v1

    .line 85
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    invoke-virtual {v2, v5}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    .line 89
    :cond_25
    iget-object v3, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    iget-object v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-nez v5, :cond_33

    :goto_2d
    const/4 v5, 0x1

    invoke-virtual {p2, v3, v4, v2, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->groupRetrieve(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v1

    goto :goto_1b

    :cond_33
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    iget v5, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mSpType:I

    invoke-virtual {v2, v5}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->getActorID(I)Ljava/lang/String;
    :try_end_3a
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7 .. :try_end_3a} :catch_3c

    move-result-object v2

    goto :goto_2d

    .line 93
    :catch_3c
    move-exception v0

    .line 95
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_1b
.end method

.method public setFeedProfile(Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/FacebookGroupListAdapter;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 137
    return-void
.end method
