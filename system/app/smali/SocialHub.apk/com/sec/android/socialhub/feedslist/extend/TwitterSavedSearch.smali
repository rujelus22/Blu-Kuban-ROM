.class public Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;
.super Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;
.source "TwitterSavedSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;
    }
.end annotation


# instance fields
.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;->mKeyword:Ljava/lang/String;

    .line 28
    const-string v0, "ext1"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;->mKeyword:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public excuteGetStatus(Z)I
    .registers 8
    .parameter "bIsNext"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch;->mKeyword:Ljava/lang/String;

    const/4 v4, 0x1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->searchingSearch(Landroid/content/Context;ILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$Searching;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    sget-object v5, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "where"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mListView:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$Searching;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->mSpType:I

    sget-object v5, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;->PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getCursor(Landroid/net/Uri;Ljava/lang/String;ZI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "count"

    .prologue
    .line 67
    const v0, 0x7f0800d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 51
    new-instance v0, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/TwitterSavedSearch$SavedSearchWrapper;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/feedslist/extend/AbsTwitter;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
