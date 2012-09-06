.class Lcom/android/email/MessagingController$8;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
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
    .line 1524
    iput-object p1, p0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$8;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageUidChange(Lcom/android/emailcommon/mail/Message;Ljava/lang/String;)V
    .registers 9
    .parameter "message"
    .parameter "newUid"

    .prologue
    const/4 v5, 0x0

    .line 1527
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1528
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncServerId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/MessagingController$8;->val$newMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1533
    return-void
.end method
