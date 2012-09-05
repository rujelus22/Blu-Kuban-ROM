.class Lcom/android/email/service/MailService$7;
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

.field final synthetic val$lastestMsgId:J

.field final synthetic val$msgCountfromEAS:I

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;JIJI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iput-wide p2, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    iput p4, p0, Lcom/android/email/service/MailService$7;->val$msgCountfromEAS:I

    iput-wide p5, p0, Lcom/android/email/service/MailService$7;->val$lastestMsgId:J

    iput p7, p0, Lcom/android/email/service/MailService$7;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/email/service/MailService;->access$400(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/service/MailService;->access$500()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 461
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 463
    .local v8, newMessageCount:I
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 464
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_8e

    move-result v8

    .line 467
    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 470
    iget v0, p0, Lcom/android/email/service/MailService$7;->val$msgCountfromEAS:I

    if-lez v0, :cond_4e

    .line 471
    iget v0, p0, Lcom/android/email/service/MailService$7;->val$msgCountfromEAS:I

    add-int/2addr v8, v0

    .line 472
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "newMessageCount"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/email/service/MailService;->access$400(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_4e
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iget-wide v1, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 479
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iget-wide v1, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/service/MailService$7;->val$lastestMsgId:J

    #calls: Lcom/android/email/service/MailService;->notifyNewMessages(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->access$600(Lcom/android/email/service/MailService;JJ)V

    .line 481
    const-string v0, "Email-MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/service/MailService$7;->val$accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/email/service/MailService$7;->this$0:Lcom/android/email/service/MailService;

    iget v1, p0, Lcom/android/email/service/MailService$7;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 491
    return-void

    .line 467
    :catchall_8e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
