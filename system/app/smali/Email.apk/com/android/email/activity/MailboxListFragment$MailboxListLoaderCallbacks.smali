.class Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxListLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Z)V
    .registers 3
    .parameter
    .parameter "accountChanging"

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1787
    iput-boolean p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    .line 1788
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 11
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1807
    if-eqz p2, :cond_b

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1808
    :cond_b
    const-string v2, "Email"

    const-string v3, "Null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_12
    return-void

    .line 1812
    :cond_13
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->access$2402(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 1814
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1816
    .local v1, lv:Landroid/widget/ListView;
    iget-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    if-eqz v2, :cond_45

    .line 1817
    const/4 v0, 0x0

    .line 1824
    .local v0, lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :goto_29
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5f

    .line 1828
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1829
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2, v5}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 1870
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_42

    .line 1871
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->restore(Landroid/widget/AbsListView;)V

    .line 1875
    :cond_42
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    goto :goto_12

    .line 1818
    .end local v0           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :cond_45
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 1819
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v0

    .line 1820
    .restart local v0       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {v2, v7}, Lcom/android/email/activity/MailboxListFragment;->access$2502(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    goto :goto_29

    .line 1822
    .end local v0           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :cond_59
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    .restart local v0       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    goto :goto_29

    .line 1833
    :cond_5f
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxesAdapter;->setAdapterInfo()V

    .line 1834
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1835
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1836
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2, v6}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 1862
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-boolean v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    #calls: Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->access$2600(Lcom/android/email/activity/MailboxListFragment;Z)V

    .line 1863
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxesAdapter;->getChangeMailboxFlag()Z

    move-result v2

    if-ne v2, v6, :cond_3d

    .line 1864
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/email/activity/MailboxesAdapter;->setChangeMailboxFlag(Z)V

    .line 1865
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$Callback;

    move-result-object v2

    invoke-interface {v2, v5, v6}, Lcom/android/email/activity/MailboxListFragment$Callback;->setTotalCountFromMailbox(IZ)V

    goto :goto_3d
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1783
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1880
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1881
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1882
    :cond_12
    return-void
.end method
