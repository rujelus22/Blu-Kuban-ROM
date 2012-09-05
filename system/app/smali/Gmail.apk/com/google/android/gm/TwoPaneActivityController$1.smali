.class Lcom/google/android/gm/TwoPaneActivityController$1;
.super Ljava/lang/Object;
.source "TwoPaneActivityController.java"

# interfaces
.implements Lcom/google/android/gm/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivityController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivityController;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCompleted()V
    .registers 1

    .prologue
    .line 226
    return-void
.end method

.method public onAnimationStarted()V
    .registers 1

    .prologue
    .line 169
    return-void
.end method

.method public onCommandAccepted(I)V
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V

    .line 101
    sparse-switch p1, :sswitch_data_84

    .line 131
    :cond_c
    :goto_c
    return-void

    .line 104
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onMarkUnread()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onDestructiveCommand()V

    .line 107
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    new-instance v1, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v3, v4}, Lcom/google/android/gm/TwoPaneActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;-><init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$002(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    goto :goto_c

    .line 115
    :sswitch_36
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onDestructiveCommand()V

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    new-instance v1, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v3, v4}, Lcom/google/android/gm/TwoPaneActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;-><init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$002(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    goto :goto_c

    .line 124
    :sswitch_58
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isMagicInboxView()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 125
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationViewable:Lcom/google/android/gm/ConversationViewable;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationViewable;->onDestructiveCommand()V

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    new-instance v1, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v3, v4}, Lcom/google/android/gm/TwoPaneActivityController;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;-><init>(Lcom/google/android/gm/BaseActivityController;Lcom/google/android/gm/ConversationInfo;)V

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$002(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    goto :goto_c

    .line 101
    :sswitch_data_84
    .sparse-switch
        0x7f0f0012 -> :sswitch_d
        0x7f0f00ec -> :sswitch_36
        0x7f0f00ed -> :sswitch_36
        0x7f0f00ef -> :sswitch_d
        0x7f0f00f1 -> :sswitch_58
        0x7f0f00f2 -> :sswitch_36
        0x7f0f00f3 -> :sswitch_36
    .end sparse-switch
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .registers 5
    .parameter "commandId"
    .parameter "undoOp"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 138
    :cond_16
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mCommandId:I
    invoke-static {v0, p1}, Lcom/google/android/gm/TwoPaneActivityController;->access$102(Lcom/google/android/gm/TwoPaneActivityController;I)I

    .line 139
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v0, p2}, Lcom/google/android/gm/TwoPaneActivityController;->access$202(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gm/TwoPaneActivityController$1;->onReceivedUpdatedData()V

    .line 164
    :goto_23
    return-void

    .line 144
    :cond_24
    sparse-switch p1, :sswitch_data_78

    .line 160
    :cond_27
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mCommandId:I
    invoke-static {v0, p1}, Lcom/google/android/gm/TwoPaneActivityController;->access$102(Lcom/google/android/gm/TwoPaneActivityController;I)I

    .line 161
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v0, p2}, Lcom/google/android/gm/TwoPaneActivityController;->access$202(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 162
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationListFragment;->setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V

    goto :goto_23

    .line 147
    :sswitch_39
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 148
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->apply()V

    goto :goto_23

    .line 152
    :cond_4b
    :sswitch_4b
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListContext;->isDraft()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 154
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->apply()V

    goto :goto_23

    .line 144
    nop

    :sswitch_data_78
    .sparse-switch
        0x7f0f0012 -> :sswitch_39
        0x7f0f00ec -> :sswitch_4b
        0x7f0f00ef -> :sswitch_39
    .end sparse-switch
.end method

.method public onReceivedUpdatedData()V
    .registers 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListFragment;->updateSelectedPosition()V

    .line 175
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mCommandId:I
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$100(Lcom/google/android/gm/TwoPaneActivityController;)I

    move-result v1

    packed-switch v1, :pswitch_data_82

    .line 192
    :pswitch_10
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 193
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->apply()V

    .line 196
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1, v2}, Lcom/google/android/gm/TwoPaneActivityController;->access$002(Lcom/google/android/gm/TwoPaneActivityController;Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    .line 197
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mUndoOp:Lcom/google/android/gm/UndoOperation;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$200(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/UndoOperation;

    move-result-object v1

    if-nez v1, :cond_6e

    .line 221
    :goto_2f
    return-void

    .line 181
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v1}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 182
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->apply()V

    goto :goto_21

    .line 186
    :pswitch_4a
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivityController;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->isMagicInboxView()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    invoke-virtual {v1}, Lcom/google/android/gm/TwoPaneActivityController;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 188
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    #getter for: Lcom/google/android/gm/TwoPaneActivityController;->mPostCommandState:Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;
    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivityController;->access$000(Lcom/google/android/gm/TwoPaneActivityController;)Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/BaseActivityController$PostCommandConversationState;->apply()V

    goto :goto_21

    .line 205
    :cond_6e
    new-instance v0, Lcom/google/android/gm/TwoPaneActivityController$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/TwoPaneActivityController$1$1;-><init>(Lcom/google/android/gm/TwoPaneActivityController$1;)V

    .line 219
    .local v0, task:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivityController;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    .line 220
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivityController$1;->this$0:Lcom/google/android/gm/TwoPaneActivityController;

    const/4 v2, -0x1

    #setter for: Lcom/google/android/gm/TwoPaneActivityController;->mCommandId:I
    invoke-static {v1, v2}, Lcom/google/android/gm/TwoPaneActivityController;->access$102(Lcom/google/android/gm/TwoPaneActivityController;I)I

    goto :goto_2f

    .line 175
    nop

    :pswitch_data_82
    .packed-switch 0x7f0f00ec
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_10
        :pswitch_10
        :pswitch_4a
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
