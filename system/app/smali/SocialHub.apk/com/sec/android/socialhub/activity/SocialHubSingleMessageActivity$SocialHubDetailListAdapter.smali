.class final Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SocialHubSingleMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SocialHubDetailListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const v2, 0x7f030018

    .line 625
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    .line 626
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 627
    iput-object p2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->setViewResource(I)V

    .line 629
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;

    .line 691
    .local v0, wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    if-nez v0, :cond_12

    .line 693
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;

    .end local v0           #wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct {v0, v1, p2, p1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 694
    .restart local v0       #wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 697
    :cond_12
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mSpType:I
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->changeData(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 699
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->getProfileImage(Landroid/view/View;Ljava/lang/String;)V

    .line 702
    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tContents:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mContents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mTime:J

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    iget-boolean v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mDeleteMode:Z

    if-eqz v1, :cond_57

    .line 707
    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 710
    :goto_51
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->changeCheckBoxState(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V
    invoke-static {v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;)V

    .line 711
    return-void

    .line 709
    :cond_57
    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;->mCache:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$ItemCommentCache;->tCheck:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_51
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 716
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 718
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_b
    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->drawTitle(I)V

    .line 719
    return-void

    .line 718
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 659
    .local v0, mCursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 661
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 664
    :cond_23
    if-eqz p2, :cond_2d

    if-eqz p2, :cond_39

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_39

    .line 666
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 673
    .local v1, v:Landroid/view/View;
    :goto_33
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 675
    return-object v1

    .line 670
    .end local v1           #v:Landroid/view/View;
    :cond_39
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_33
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 680
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 681
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct {v1, v2, p1, v0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;-><init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 682
    .local v1, wrapper:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SingleMessageWrapper;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 683
    return-object v0
.end method

.method protected onContentChanged()V
    .registers 4

    .prologue
    .line 643
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->access$1300(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    .line 645
    .local v0, constraint:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 648
    .local v1, filter:Landroid/widget/Filter;
    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 654
    .end local v1           #filter:Landroid/widget/Filter;
    :goto_17
    return-void

    .line 652
    :cond_18
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->startQuery()V

    goto :goto_17
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$SocialHubDetailListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 634
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a

    .line 636
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 637
    const/4 v0, 0x0

    .line 639
    :cond_a
    return-void
.end method
