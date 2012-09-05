.class public Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;
.super Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;
.source "FacebookGroup.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupID:Ljava/lang/String;

.field private mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuRefresh:Landroid/view/MenuItem;

.field private mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field private mSpType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .parameter "context"
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 41
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mGroupID:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    .line 46
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 48
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 50
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuInflater:Landroid/view/MenuInflater;

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuRefresh:Landroid/view/MenuItem;

    .line 57
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    if-eqz v0, :cond_25

    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getServiceManager()Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 64
    :cond_25
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    if-eqz v0, :cond_3f

    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getExtendListView()Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 67
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuInflater:Landroid/view/MenuInflater;

    .line 70
    :cond_3f
    const-string v0, "groud_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mGroupID:Ljava/lang/String;

    .line 71
    const-string v0, "sptype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    .line 72
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    sget-object v5, Lcom/sec/android/socialhub/feedslist/GroupWrapper;->GroupProjection:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "where"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    sget-object v5, Lcom/sec/android/socialhub/feedslist/GroupWrapper;->GroupProjection:[Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getIndexDate()I
    .registers 2

    .prologue
    .line 170
    sget v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->INDEX_COLUMN_TIME:I

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
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, field_elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v4, name_field:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "content"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v6, "actor_name"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v6, 0x7f0800e0

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 188
    .local v0, all:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v6, 0x7f0800e3

    invoke-direct {v2, v6, v3}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 189
    .local v2, contents:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v5, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    const v6, 0x7f0800e1

    invoke-direct {v5, v6, v4}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>(ILjava/util/ArrayList;)V

    .line 191
    .local v5, sender:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-object v1
.end method

.method public getTitle(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "count"

    .prologue
    .line 175
    const v0, 0x7f0800ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 118
    new-instance v0, Lcom/sec/android/socialhub/feedslist/GroupWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/GroupWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    return-object v0
.end method

.method public groupWallPost()V
    .registers 4

    .prologue
    .line 157
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubNotePostActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v0, "categoryID"

    const-string v2, "wall"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v0, "categoryOwnerID"

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mGroupID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v0, "spType"

    iget v2, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    :cond_2c
    return-void
.end method

.method protected handleOptionMenu(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V
    .registers 4
    .parameter "data"
    .parameter "item"

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->handleOptionMenu(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V

    .line 136
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 153
    :goto_a
    return-void

    .line 139
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->groupWallPost()V

    goto :goto_a

    .line 143
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->setSearchMode()V

    goto :goto_a

    .line 147
    :pswitch_15
    invoke-interface {p1}, Lcom/sec/android/socialhub/parent/IActivityDataHandler;->onRefresh()V

    goto :goto_a

    .line 136
    nop

    :pswitch_data_1a
    .packed-switch 0x7f0b012e
        :pswitch_15
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuInflater:Landroid/view/MenuInflater;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    const v0, 0x7f0b012e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuRefresh:Landroid/view/MenuItem;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public requestActivityRetrieve(Z)I
    .registers 9
    .parameter "bIsNext"

    .prologue
    const/4 v6, 0x1

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, bCanLoad:Z
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    iget v5, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/socialhub/util/SocialHubUtil;->checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;IZ)Z

    move-result v1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mGroupID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget v3, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mSpType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    if-nez v1, :cond_31

    .line 96
    const-string v3, "FacebookGroup"

    const-string v4, "requestActivityRetrieve()"

    const-string v5, "can down load is false."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v3, -0x1

    .line 107
    :goto_30
    return v3

    .line 100
    :cond_31
    if-ne p1, v6, :cond_40

    .line 102
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->activityRetrieveNext(Landroid/content/Context;Ljava/util/Map;Z)I

    move-result v3

    goto :goto_30

    .line 106
    :cond_40
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDisableFooter()V

    .line 107
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v6, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->activityRetrieve(Landroid/content/Context;Ljava/util/Map;ZZ)I

    move-result v3

    goto :goto_30
.end method

.method public setEnableRefreshMenu(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/FacebookGroup;->mMenuRefresh:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 204
    :cond_9
    return-void
.end method
