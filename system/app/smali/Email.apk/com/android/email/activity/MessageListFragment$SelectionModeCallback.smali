.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModeCallback"
.end annotation


# instance fields
.field private mAddStar:Landroid/view/MenuItem;

.field mClosedByUser:Z

.field private mMarkRead:Landroid/view/MenuItem;

.field private mMarkUnread:Landroid/view/MenuItem;

.field private mMove:Landroid/view/MenuItem;

.field private mRemoveStar:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1450
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1493
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 1494
    .local v0, selectedConversations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1518
    :goto_11
    return v2

    .line 1495
    :cond_12
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    goto :goto_11

    .line 1511
    :pswitch_1a
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onAdvancingOpAccepted(Ljava/util/Set;)V

    .line 1512
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->deleteMessages(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$3400(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_11

    .line 1498
    :pswitch_29
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->toggleRead(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$3200(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_11

    .line 1501
    :pswitch_2f
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onAdvancingOpAccepted(Ljava/util/Set;)V

    .line 1502
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->toggleRead(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$3200(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_11

    .line 1508
    :pswitch_3e
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->toggleFavorite(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$3300(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_11

    .line 1515
    :pswitch_44
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->showMoveMessagesDialog(Ljava/util/Set;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListFragment;->access$3500(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V

    goto :goto_11

    .line 1495
    :pswitch_data_4a
    .packed-switch 0x7f0e00e9
        :pswitch_1a
        :pswitch_44
        :pswitch_29
        :pswitch_2f
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/email/activity/MessageListFragment;->access$2902(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1463
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1464
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1465
    const v1, 0x7f0e00eb

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    .line 1466
    const v1, 0x7f0e00ec

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    .line 1467
    const v1, 0x7f0e00ed

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    .line 1468
    const v1, 0x7f0e00ee

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    .line 1469
    const v1, 0x7f0e00ea

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    .line 1470
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$2902(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1526
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    if-eqz v0, :cond_f

    .line 1531
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$3600(Lcom/android/email/activity/MessageListFragment;)V

    .line 1533
    :cond_f
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 13
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1475
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$3000(Lcom/android/email/activity/MessageListFragment;)I

    move-result v1

    .line 1477
    .local v1, num:I
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$2900(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v3

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0005

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1481
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainNonStarredMessage()Z

    move-result v0

    .line 1482
    .local v0, nonStarExists:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainReadMessage()Z

    move-result v2

    .line 1483
    .local v2, readExists:Z
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    if-nez v2, :cond_5c

    move v3, v4

    :goto_3b
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1484
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1485
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1486
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    if-nez v0, :cond_4d

    move v5, v4

    :cond_4d
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1487
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mShowMoveCommand:Z
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$3100(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1488
    return v4

    :cond_5c
    move v3, v5

    .line 1483
    goto :goto_3b
.end method
