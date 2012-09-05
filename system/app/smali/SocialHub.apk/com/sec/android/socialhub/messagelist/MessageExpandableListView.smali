.class public Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;
.super Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;
.source "MessageExpandableListView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLast:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

.field private mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

.field private mState:Lcom/sec/android/socialhub/state/tab/TabState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/socialhub/messagelist/IMessageAPI;)V
    .registers 7
    .parameter "ctx"
    .parameter "resource_id"
    .parameter "api"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 26
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setEmptyMessage(I)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->useFlickDown(Z)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->useFlickUp(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->onDisableFooter()V

    .line 30
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->setDividerHeight(I)V

    .line 32
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mLast:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 33
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 34
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onDestroy()V

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mLast:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 44
    return-void
.end method

.method public onFlickDown()V
    .registers 7

    .prologue
    .line 77
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onFlickDown()V

    .line 79
    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mState:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 81
    .local v0, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-eqz v0, :cond_5e

    .line 83
    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    if-eqz v3, :cond_54

    .line 85
    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, id:Ljava/lang/String;
    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 88
    .local v2, type:Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "3_SevenEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "2_Email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 90
    :cond_2b
    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_31
    iget-object v3, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "0_All"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 95
    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    const-string v4, "0_All"

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->requestRemoteSync(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :goto_44
    const-string v3, "MessageExpandableListView"

    const-string v4, "onFlickDown()"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 99
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #type:Ljava/lang/String;
    :cond_4e
    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    invoke-interface {v3, v2, v1}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->requestRemoteSync(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 104
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :cond_54
    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    const-string v4, "0_All"

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->requestRemoteSync(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 109
    :cond_5e
    iget-object v3, p0, Lcom/sec/android/socialhub/messagelist/MessageExpandableListView;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    const-string v4, "0_All"

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->requestRemoteSync(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public onFlickUp()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method
