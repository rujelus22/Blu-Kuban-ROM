.class Lcom/android/email/activity/MessageListFragment$13;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->showSendingFailDetail(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;JJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2991
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListFragment$13;->val$mailboxId:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageListFragment$13;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment$13;->val$mailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment$13;->val$messageId:J

    #calls: Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1600(Lcom/android/email/activity/MessageListFragment;JJ)V

    .line 2995
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 2996
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2997
    return-void
.end method
