.class public abstract Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;
.super Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;
.source "AbsTwitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;
    }
.end annotation


# instance fields
.field protected mGroup:Ljava/lang/String;

.field protected mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

.field protected mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuRefresh:Landroid/view/MenuItem;

.field protected mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field protected mSpType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .parameter "context"
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    .line 35
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mGroup:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 39
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 41
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuInflater:Landroid/view/MenuInflater;

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuRefresh:Landroid/view/MenuItem;

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    if-eqz v0, :cond_21

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getServiceManager()Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 54
    :cond_21
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    if-eqz v0, :cond_3b

    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getExtendListView()Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuInflater:Landroid/view/MenuInflater;

    .line 60
    :cond_3b
    const-string v0, "groud_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mGroup:Ljava/lang/String;

    .line 61
    const-string v0, "sptype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    .line 62
    return-void
.end method


# virtual methods
.method public abstract excuteGetStatus(Z)I
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$ActivityStatusList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    sget-object v5, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "where"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$ActivityStatusList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    sget-object v5, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;->PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getIndexDate()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x3

    return v0
.end method

.method public getSearchField()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, field_elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v4, name_field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "content"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v6, "creator_name"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v6, 0x7f0800e0

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 150
    .local v0, all:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v6, 0x7f0800e3

    invoke-direct {v2, v6, v3}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 151
    .local v2, contents:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v5, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v6, 0x7f0800e1

    invoke-direct {v5, v6, v4}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 153
    .local v5, sender:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v1
.end method

.method public getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 103
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter$StatusWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    return-object v0
.end method

.method protected handleOptionMenu(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V
    .registers 4
    .parameter "data"
    .parameter "item"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->handleOptionMenu(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V

    .line 121
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 133
    :goto_a
    return-void

    .line 124
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->setSearchMode()V

    goto :goto_a

    .line 128
    :pswitch_11
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityDataHandler;->onRefresh()V

    goto :goto_a

    .line 121
    nop

    :pswitch_data_16
    .packed-switch 0x7f0b0130
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuInflater:Landroid/view/MenuInflater;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const v0, 0x7f0b0131

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuRefresh:Landroid/view/MenuItem;

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public requestActivityRetrieve(Z)I
    .registers 7
    .parameter "bIsNext"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, bCanLoad:Z
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    iget v3, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;IZ)Z

    move-result v0

    .line 80
    if-nez v0, :cond_19

    .line 82
    const-string v1, "TwitterMention"

    const-string v2, "requestActivityRetrieve()"

    const-string v3, "can down load is false."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v1, -0x1

    .line 91
    :goto_18
    return v1

    .line 86
    :cond_19
    if-nez p1, :cond_22

    .line 88
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDisableFooter()V

    .line 91
    :cond_22
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->excuteGetStatus(Z)I

    move-result v1

    goto :goto_18
.end method

.method public setEnableRefreshMenu(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mMenuRefresh:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    :cond_9
    return-void
.end method
