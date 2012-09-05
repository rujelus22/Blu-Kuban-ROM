.class Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesLoaderCallback"
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
.field private mMailboxChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;Z)V
    .registers 3
    .parameter
    .parameter "mailboxChanging"

    .prologue
    .line 3828
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3829
    iput-boolean p2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    .line 3830
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
    .line 3839
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessagesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 16
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
    .line 3850
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3851
    :cond_8
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 4014
    :goto_d
    return-void

    .line 3857
    :cond_e
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2108(Lcom/android/email/activity/MessageListFragment;)I

    .line 3858
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I
    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$2200(Lcom/android/email/activity/MessageListFragment;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessagesAdapter;->compareCount(I)Z

    move-result v1

    .line 3859
    .local v1, cursorError:Z
    if-eqz v1, :cond_3b

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3b

    .line 3860
    const-string v7, "MessageListFragment"

    const-string v8, "cursorError happend in onLoadFinished"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    goto :goto_d

    .line 3866
    :cond_3b
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->getListItemCountNew()I

    move-result v7

    if-lez v7, :cond_83

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_83

    .line 3867
    const-string v7, "MessageListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursorError happend in onLoadFinished ListItemCountNew = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v9}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->getListItemCountNew()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cursor.getCount() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    goto :goto_d

    .line 3884
    :cond_83
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v7

    if-eqz v7, :cond_2d9

    .line 3885
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_277

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_277

    .line 3886
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3887
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3888
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3889
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3890
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3891
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3892
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3893
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3916
    :goto_f6
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 3917
    .local v5, lv:Landroid/widget/ListView;
    const/4 v3, 0x0

    .line 3919
    .local v3, lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :try_start_fd
    iget-boolean v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_ff} :catch_351

    if-eqz v7, :cond_33b

    .line 3920
    const/4 v3, 0x0

    .line 3933
    :goto_102
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->setAdapterInfo()V

    .line 3935
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3936
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getUnreadCount()I

    move-result v8

    #setter for: Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2802(Lcom/android/email/activity/MessageListFragment;I)I

    .line 3937
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getTotalCount()I

    move-result v8

    #setter for: Lcom/android/email/activity/MessageListFragment;->mTotalCount:I
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2902(Lcom/android/email/activity/MessageListFragment;I)I

    .line 3939
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    .line 3945
    const/4 v0, 0x0

    .line 3946
    .local v0, count:I
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$1900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    if-eqz v7, :cond_15d

    .line 3947
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$1900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v7, :cond_35f

    .line 3948
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->getUnreadCount()I

    move-result v0

    .line 3952
    :goto_154
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onAllMessageLoaded(I)V

    .line 3957
    :cond_15d
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-gez v7, :cond_36b

    const/4 v7, 0x1

    :goto_170
    invoke-virtual {v8, v7}, Lcom/android/email/activity/MessagesAdapter;->setShowColorChips(Z)V

    .line 3958
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 3959
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    .line 3965
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-lez v7, :cond_20c

    .line 3966
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v6

    .line 3967
    .local v6, mailboxType:I
    if-nez v0, :cond_20c

    const/16 v7, 0x8

    if-ne v6, v7, :cond_20c

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v7

    if-nez v7, :cond_20c

    .line 3969
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3970
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3971
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3972
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3973
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3974
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3975
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3976
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3981
    .end local v6           #mailboxType:I
    :cond_20c
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3000(Lcom/android/email/activity/MessageListFragment;)V

    .line 3982
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->addFooterView()V
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3100(Lcom/android/email/activity/MessageListFragment;)V

    .line 3983
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_223

    .line 3984
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 3986
    :cond_223
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_22f

    .line 3987
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->showSendCommandIfNecessary()V
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3200(Lcom/android/email/activity/MessageListFragment;)V

    .line 3988
    :cond_22f
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->showNoMessageTextIfNecessary()V
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3300(Lcom/android/email/activity/MessageListFragment;)V

    .line 3994
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_25d

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J
    invoke-static {v8}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/email/activity/MessagesAdapter;->getRealPositionForCurrentId(J)I

    move-result v7

    if-gez v7, :cond_25d

    .line 3995
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 3998
    :cond_25d
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    sget v9, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    const/4 v10, 0x0

    #calls: Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZIZ)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/email/activity/MessageListFragment;->access$3500(Lcom/android/email/activity/MessageListFragment;ZIZ)V

    .line 4003
    if-eqz v3, :cond_26c

    .line 4004
    invoke-virtual {v3, v5}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->restore(Landroid/widget/AbsListView;)V

    .line 4012
    :cond_26c
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    .line 4013
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2102(Lcom/android/email/activity/MessageListFragment;I)I

    goto/16 :goto_d

    .line 3895
    .end local v0           #count:I
    .end local v3           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .end local v5           #lv:Landroid/widget/ListView;
    :cond_277
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3896
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3897
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3898
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3899
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3900
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3901
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3902
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f6

    .line 3905
    :cond_2d9
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3906
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3907
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3908
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3909
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3910
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3911
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3912
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f6

    .line 3921
    .restart local v3       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .restart local v5       #lv:Landroid/widget/ListView;
    :cond_33b
    :try_start_33b
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v7

    if-eqz v7, :cond_357

    .line 3922
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$2700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v3

    .line 3923
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v8, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {v7, v8}, Lcom/android/email/activity/MessageListFragment;->access$2702(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :try_end_34f
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_34f} :catch_351

    goto/16 :goto_102

    .line 3927
    :catch_351
    move-exception v2

    .line 3928
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_102

    .line 3925
    .end local v2           #e:Ljava/lang/Exception;
    :cond_357
    :try_start_357
    new-instance v4, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_35c} :catch_351

    .end local v3           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .local v4, lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    move-object v3, v4

    .end local v4           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .restart local v3       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    goto/16 :goto_102

    .line 3950
    .restart local v0       #count:I
    :cond_35f
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v7}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/activity/MessagesAdapter;->getTotalCount()I

    move-result v0

    goto/16 :goto_154

    .line 3957
    :cond_36b
    const/4 v7, 0x0

    goto/16 :goto_170
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3825
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
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
    .line 4018
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
