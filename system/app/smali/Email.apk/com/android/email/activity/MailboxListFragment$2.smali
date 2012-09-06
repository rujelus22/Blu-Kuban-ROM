.class Lcom/android/email/activity/MailboxListFragment$2;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->navigateUp()Z
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
    .line 581
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(JJJ)V
    .registers 8
    .parameter "nextParentMailboxId"
    .parameter "nextHighlightedMailboxId"
    .parameter "nextSelectedMailboxId"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #calls: Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MailboxListFragment;->access$200(Lcom/android/email/activity/MailboxListFragment;JJ)V

    .line 586
    return-void
.end method
