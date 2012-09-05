.class public Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.source "ListBouncingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;,
        Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLayout;,
        Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;
    }
.end annotation


# instance fields
.field public mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

.field public mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

.field protected mParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 17
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    .line 20
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    .line 22
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;-><init>(Lcom/sec/android/socialhub/parent/ListBouncingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    .line 29
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    .line 30
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v1, p3

    .line 63
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 65
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onCreateListViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 66
    return-void
.end method

.method public onCreateListViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 80
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    if-eqz v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onDestroy()V

    .line 46
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mListView:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;

    .line 49
    :cond_f
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    .line 50
    return-void
.end method

.method public onFlickUp()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public onLoadMore()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 7
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 89
    return-void
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 11
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
    .line 98
    return-void
.end method

.method public setUseEmptyView(Z)V
    .registers 4
    .parameter "bFlag"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->mBouncingLayout:Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubBouncingLinearLayout;->getAbsBouningLayout()Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->setUseEmptyView(Z)V

    .line 36
    return-void
.end method
