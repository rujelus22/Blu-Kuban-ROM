.class Lcom/android/email/Controller$12;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageAnsweredOrForwarded(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$flag:I

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$12;->val$messageId:J

    iput p4, p0, Lcom/android/email/Controller$12;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 910
    iget-object v2, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$12;->val$messageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 911
    .local v1, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v1, :cond_16

    .line 912
    const-string v2, "Email"

    const-string v3, "Unable to find source message for a reply/forward"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_15
    return-void

    .line 915
    :cond_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "flags"

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iget v4, p0, Lcom/android/email/Controller$12;->val$flag:I

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    iget-object v2, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    iget-wide v3, p0, Lcom/android/email/Controller$12;->val$messageId:J

    #calls: Lcom/android/email/Controller;->updateMessageSync(JLandroid/content/ContentValues;)V
    invoke-static {v2, v3, v4, v0}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;JLandroid/content/ContentValues;)V

    goto :goto_15
.end method
