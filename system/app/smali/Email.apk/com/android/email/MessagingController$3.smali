.class Lcom/android/email/MessagingController$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadUnsyncedMessages(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$toMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/android/email/MessagingController$3;->val$toMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 481
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$3;->val$toMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 477
    return-void
.end method
