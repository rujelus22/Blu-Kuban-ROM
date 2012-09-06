.class Lcom/android/email/service/MailService$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 13
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 641
    if-nez p1, :cond_6

    const/16 v2, 0x64

    if-ne p6, v2, :cond_2f

    .line 642
    :cond_6
    if-eqz p1, :cond_e

    .line 645
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, -0x1

    #calls: Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {v2, p2, p3, v3}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 647
    :cond_e
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 648
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    #calls: Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V
    invoke-static {v2, v0}, Lcom/android/email/service/MailService;->access$400(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;)V

    .line 649
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mStartId:I
    invoke-static {v2}, Lcom/android/email/service/MailService;->access$900(Lcom/android/email/service/MailService;)I

    move-result v1

    .line 650
    .local v1, serviceId:I
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_2a

    .line 651
    long-to-int v1, p7

    .line 653
    :cond_2a
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 655
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #serviceId:I
    :cond_2f
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V
    .registers 14
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/MessagingException;",
            "JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v4, 0x64

    .line 624
    if-nez p1, :cond_6

    if-ne p6, v4, :cond_18

    .line 626
    :cond_6
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, 0x0

    invoke-static {v2, p2, p3, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 628
    .local v0, inboxId:J
    cmp-long v2, p4, v0

    if-nez v2, :cond_18

    .line 629
    if-ne p6, v4, :cond_19

    .line 630
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    #calls: Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {v2, p2, p3, p7}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 636
    .end local v0           #inboxId:J
    :cond_18
    :goto_18
    return-void

    .line 632
    .restart local v0       #inboxId:J
    :cond_19
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, -0x1

    #calls: Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {v2, p2, p3, v3}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;JI)Lcom/android/email/service/MailService$AccountSyncReport;

    goto :goto_18
.end method
