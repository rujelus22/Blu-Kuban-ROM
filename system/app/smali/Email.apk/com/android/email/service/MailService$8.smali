.class Lcom/android/email/service/MailService$8;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;JJI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/email/service/MailService$8;->this$0:Lcom/android/email/service/MailService;

    iput-wide p2, p0, Lcom/android/email/service/MailService$8;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/service/MailService$8;->val$messageId:J

    iput p6, p0, Lcom/android/email/service/MailService$8;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 504
    iget-wide v0, p0, Lcom/android/email/service/MailService$8;->val$accountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/android/email/service/MailService$8;->val$messageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 505
    iget-object v0, p0, Lcom/android/email/service/MailService$8;->this$0:Lcom/android/email/service/MailService;

    iget-wide v1, p0, Lcom/android/email/service/MailService$8;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/service/MailService$8;->val$messageId:J

    #calls: Lcom/android/email/service/MailService;->notifySendFailed_OutOfMemoryError(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->access$700(Lcom/android/email/service/MailService;JJ)V

    .line 507
    :cond_17
    iget-object v0, p0, Lcom/android/email/service/MailService$8;->this$0:Lcom/android/email/service/MailService;

    iget v1, p0, Lcom/android/email/service/MailService$8;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 508
    return-void
.end method
