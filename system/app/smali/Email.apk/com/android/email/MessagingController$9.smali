.class Lcom/android/email/MessagingController$9;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/email/MessagingController$9;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$9;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    .registers 7
    .parameter "message"
    .parameter "newUid"

    .prologue
    const/4 v3, 0x0

    .line 1642
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1643
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncServerId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    iget-object v1, p0, Lcom/android/email/MessagingController$9;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$9;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1645
    return-void
.end method
