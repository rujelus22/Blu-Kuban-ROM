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
.field private mIsFirstLoad:Z

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 8
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
    .line 760
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 761
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mIsFirstLoad:Z

    .line 764
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    .line 765
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->createCombinedViewLoader(Landroid/content/Context;)Landroid/content/Loader;

    move-result-object v0

    .line 767
    :goto_3b
    return-object v0

    :cond_3c
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxFragmentAdapter;->createMailboxesLoader(Landroid/content/Context;JJ)Landroid/content/Loader;

    move-result-object v0

    goto :goto_3b
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 15
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
    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 774
    sget-boolean v3, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v3, :cond_2f

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2f

    .line 775
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onLoadFinished  count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_2f
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v3

    const-wide/high16 v5, 0x1000

    cmp-long v3, v3, v5

    if-eqz v3, :cond_59

    move-object v0, p2

    .line 784
    check-cast v0, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;

    .line 786
    .local v0, c:Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;
    iget v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;->mChildCount:I

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #calls: Lcom/android/email/activity/MailboxListFragment;->isRoot()Z
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$500(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 788
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/email/activity/MailboxFragmentAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 789
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment;->navigateUp()Z

    .line 840
    .end local v0           #c:Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;
    :goto_58
    return-void

    .line 795
    :cond_59
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 797
    .local v2, lv:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 798
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Landroid/os/Parcelable;

    move-result-object v1

    .line 799
    .local v1, listState:Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;
    invoke-static {v3, v7}, Lcom/android/email/activity/MailboxListFragment;->access$702(Lcom/android/email/activity/MailboxListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 804
    :goto_72
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_99

    .line 807
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/email/activity/MailboxFragmentAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 808
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3, v8}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 836
    :cond_86
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v4, -0x1

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I
    invoke-static {v3, v4}, Lcom/android/email/activity/MailboxListFragment;->access$1102(Lcom/android/email/activity/MailboxListFragment;I)I

    .line 837
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;
    invoke-static {v3, v7}, Lcom/android/email/activity/MailboxListFragment;->access$1202(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListItem;)Lcom/android/email/activity/MailboxListItem;

    .line 839
    iput-boolean v8, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mIsFirstLoad:Z

    goto :goto_58

    .line 801
    .end local v1           #listState:Landroid/os/Parcelable;
    :cond_94
    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .restart local v1       #listState:Landroid/os/Parcelable;
    goto :goto_72

    .line 811
    :cond_99
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mParentDetermined:Z
    invoke-static {v3, v9}, Lcom/android/email/activity/MailboxListFragment;->access$802(Lcom/android/email/activity/MailboxListFragment;Z)Z

    .line 813
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/email/activity/MailboxFragmentAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 814
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3, v9}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 818
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 821
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-eqz v3, :cond_c9

    .line 822
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/MailboxListFragment;->setHighlightedMailbox(J)V

    .line 823
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J
    invoke-static {v3, v10, v11}, Lcom/android/email/activity/MailboxListFragment;->access$902(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 828
    :cond_c9
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-boolean v4, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mIsFirstLoad:Z

    #calls: Lcom/android/email/activity/MailboxListFragment;->updateHighlightedMailbox(Z)Z
    invoke-static {v3, v4}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;Z)Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_58
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 755
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 5
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
    .line 844
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 845
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onLoaderReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxFragmentAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 848
    return-void
.end method
