.class final Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SocialHubSingleMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 760
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 762
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 766
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    .line 768
    .local v0, activity:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 770
    if-eqz p3, :cond_2f

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 772
    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 773
    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 774
    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 776
    :cond_2f
    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearTextFilter()V

    .line 777
    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mAdapter:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1400(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 786
    :cond_3d
    :goto_3d
    return-void

    .line 781
    :cond_3e
    if-eqz p3, :cond_3d

    .line 783
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_3d
.end method
