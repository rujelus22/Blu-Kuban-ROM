.class final Lcom/android/email/activity/MessageListFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 541
    new-instance v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageUpdateDB(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 632
    return-void
.end method

.method public onAllMessageLoaded(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 636
    return-void
.end method

.method public onComposeFromMessageListFragment()V
    .registers 1

    .prologue
    .line 555
    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .registers 4
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "bundleConversationType"

    .prologue
    .line 587
    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .registers 2
    .parameter "enter"

    .prologue
    .line 574
    return-void
.end method

.method public onFollowUpViewShown()V
    .registers 3

    .prologue
    .line 591
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Here"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public onForward(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 623
    return-void
.end method

.method public onMailBoxList()V
    .registers 1

    .prologue
    .line 550
    return-void
.end method

.method public onMailboxNotFound()V
    .registers 1

    .prologue
    .line 545
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .registers 8
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 570
    return-void
.end method

.method public onMoveMessages([J)V
    .registers 2
    .parameter "messageIds"

    .prologue
    .line 578
    return-void
.end method

.method public onOutboxMessageSending()V
    .registers 1

    .prologue
    .line 640
    return-void
.end method

.method public onRefreshFromMessageListFragment()V
    .registers 1

    .prologue
    .line 560
    return-void
.end method

.method public onReply(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 615
    return-void
.end method

.method public onReplyAll(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 619
    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .registers 1

    .prologue
    .line 565
    return-void
.end method

.method public onWaitTooLong()V
    .registers 1

    .prologue
    .line 628
    return-void
.end method

.method public refreshAllAccount()V
    .registers 1

    .prologue
    .line 610
    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
    .registers 3
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 596
    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
    .registers 3
    .parameter "b"
    .parameter "messageListSubTitleItem"

    .prologue
    .line 601
    return-void
.end method
