.class Lcom/android/email/service/MailService$9;
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

.field final synthetic val$sendfailed:Z

.field final synthetic val$startId:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;ZJJLjava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/email/service/MailService$9;->this$0:Lcom/android/email/service/MailService;

    iput-boolean p2, p0, Lcom/android/email/service/MailService$9;->val$sendfailed:Z

    iput-wide p3, p0, Lcom/android/email/service/MailService$9;->val$messageId:J

    iput-wide p5, p0, Lcom/android/email/service/MailService$9;->val$accountId:J

    iput-object p7, p0, Lcom/android/email/service/MailService$9;->val$title:Ljava/lang/String;

    iput p8, p0, Lcom/android/email/service/MailService$9;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 524
    :try_start_0
    iget-boolean v1, p0, Lcom/android/email/service/MailService$9;->val$sendfailed:Z

    if-eqz v1, :cond_15

    .line 525
    iget-wide v1, p0, Lcom/android/email/service/MailService$9;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/service/MailService$9;->val$accountId:J

    iget-object v5, p0, Lcom/android/email/service/MailService$9;->val$title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->showSendingNotification_fail(JJLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_1f

    .line 532
    :goto_d
    iget-object v1, p0, Lcom/android/email/service/MailService$9;->this$0:Lcom/android/email/service/MailService;

    iget v2, p0, Lcom/android/email/service/MailService$9;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 533
    return-void

    .line 527
    :cond_15
    :try_start_15
    iget-wide v1, p0, Lcom/android/email/service/MailService$9;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/service/MailService$9;->val$accountId:J

    iget-object v5, p0, Lcom/android/email/service/MailService$9;->val$title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->showSendingNotification_finish(JJLjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_d

    .line 529
    :catch_1f
    move-exception v0

    .line 530
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
