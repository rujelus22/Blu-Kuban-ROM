.class Lcom/android/email/activity/MailboxListFragment$20;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->onDeleteSmsPopup([JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field final synthetic val$account_id:J

.field final synthetic val$msg:[J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;[JJ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2657
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$20;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$msg:[J

    iput-wide p3, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$account_id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2659
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$20;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 2660
    .local v0, controller:Lcom/android/email/Controller;
    const/4 v1, 0x0

    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 2661
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$msg:[J

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$account_id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 2663
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2665
    return-void
.end method
