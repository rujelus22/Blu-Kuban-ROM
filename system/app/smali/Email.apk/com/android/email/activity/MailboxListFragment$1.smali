.class Lcom/android/email/activity/MailboxListFragment$1;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFragmentAdapter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$1;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/email/activity/MailboxListItem;)V
    .registers 5
    .parameter "listItem"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$1;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$000(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$1;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 223
    return-void
.end method
