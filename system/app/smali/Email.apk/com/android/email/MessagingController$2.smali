.class Lcom/android/email/MessagingController$2;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$2;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$2;->val$folder:Lcom/android/emailcommon/provider/Mailbox;

    #calls: Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/MessagingController;->access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 341
    return-void
.end method
