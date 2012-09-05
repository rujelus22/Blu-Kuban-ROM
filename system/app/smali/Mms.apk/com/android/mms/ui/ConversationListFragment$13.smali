.class Lcom/android/mms/ui/ConversationListFragment$13;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1273
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_b

    .line 1274
    sparse-switch p2, :sswitch_data_74

    :cond_b
    move v2, v3

    .line 1341
    :cond_c
    :goto_c
    return v2

    .line 1276
    :sswitch_d
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "mThreadListKeyListener.onKey(),KEYCODE_DEL"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemId()J

    move-result-wide v0

    .line 1279
    .local v0, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_c

    .line 1280
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v3, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1802(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 1281
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1900(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_c

    .line 1287
    .end local v0           #id:J
    :sswitch_33
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1288
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_5d

    .line 1289
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_c

    :cond_5d
    move v2, v3

    .line 1294
    goto :goto_c

    .line 1297
    :sswitch_5f
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "mThreadListKeyListener.onKey(),KEYCODE_DPAD_RIGHT"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$13;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v2

    goto :goto_c

    .line 1274
    nop

    :sswitch_data_74
    .sparse-switch
        0x14 -> :sswitch_33
        0x16 -> :sswitch_5f
        0x43 -> :sswitch_d
    .end sparse-switch
.end method
