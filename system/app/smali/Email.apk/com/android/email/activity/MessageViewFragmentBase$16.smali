.class Lcom/android/email/activity/MessageViewFragmentBase$16;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 10282
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v11, 0x1

    .line 10284
    const/4 v4, 0x0

    .line 10285
    .local v4, returnvalue:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 10286
    .local v2, msg:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 10287
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_43

    .line 10288
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 10289
    .local v3, resolver:Landroid/content/ContentResolver;
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v5, v5, -0x801

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 10290
    const-string v5, "flags"

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10291
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    new-array v7, v11, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 10296
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_43
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 10298
    .local v1, message2:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-string v5, "MessageViewFragmentBase >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returnvalue == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10300
    if-eqz v4, :cond_78

    if-eqz v1, :cond_78

    .line 10301
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v6, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->actionReplyForReadReceipt(J)V
    invoke-static {v5, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8500(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    .line 10306
    :goto_74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10307
    return-void

    .line 10303
    :cond_78
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const v6, 0x7f0801fc

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    invoke-static {v5, v6, v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V

    goto :goto_74
.end method
