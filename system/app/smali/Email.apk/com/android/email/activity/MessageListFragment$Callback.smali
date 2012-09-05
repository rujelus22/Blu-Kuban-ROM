.class public interface abstract Lcom/android/email/activity/MessageListFragment$Callback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract messageUpdateDB(J)V
.end method

.method public abstract onAllMessageLoaded(I)V
.end method

.method public abstract onComposeFromMessageListFragment()V
.end method

.method public abstract onConversationMoveAlways([J[Ljava/lang/String;I)V
.end method

.method public abstract onEnterSelectionMode(Z)V
.end method

.method public abstract onFollowUpViewShown()V
.end method

.method public abstract onForward(J)V
.end method

.method public abstract onMailBoxList()V
.end method

.method public abstract onMailboxNotFound()V
.end method

.method public abstract onMessageOpen(JJJI)V
.end method

.method public abstract onMoveMessages([J)V
.end method

.method public abstract onOutboxMessageSending()V
.end method

.method public abstract onRefreshFromMessageListFragment()V
.end method

.method public abstract onReply(J)V
.end method

.method public abstract onReplyAll(J)V
.end method

.method public abstract onSearchFromMessageListFragment()V
.end method

.method public abstract onWaitTooLong()V
.end method

.method public abstract refreshAllAccount()V
.end method

.method public abstract setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
.end method

.method public abstract setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
.end method
