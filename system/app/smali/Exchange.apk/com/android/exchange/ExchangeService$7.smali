.class final Lcom/android/exchange/ExchangeService$7;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exchangeService:Lcom/android/exchange/ExchangeService;

.field final synthetic val$id:J

.field final synthetic val$service:Lcom/android/exchange/AbstractSyncService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;JLcom/android/exchange/AbstractSyncService;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3454
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$7;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$7;->val$id:J

    iput-object p4, p0, Lcom/android/exchange/ExchangeService$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 3456
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v4, p0, Lcom/android/exchange/ExchangeService$7;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3457
    .local v1, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_5f

    .line 3462
    sget-boolean v3, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    if-eqz v3, :cond_3a

    .line 3463
    const-string v3, "ExchangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alert for mailbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/exchange/ExchangeService$7;->val$id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_3a
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_60

    .line 3466
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 3469
    .local v0, args:[Ljava/lang/String;
    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->access$1400(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 3470
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3472
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3496
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5f
    :goto_5f
    return-void

    .line 3476
    :cond_60
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3478
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    iput-object v1, v3, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 3480
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->val$service:Lcom/android/exchange/AbstractSyncService;

    invoke-virtual {v3}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 3486
    const-string v3, "Alarm failed; releasing mailbox"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 3487
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3488
    :try_start_82
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->val$exchangeService:Lcom/android/exchange/ExchangeService;

    iget-wide v5, p0, Lcom/android/exchange/ExchangeService$7;->val$id:J

    #calls: Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V
    invoke-static {v3, v5, v6}, Lcom/android/exchange/ExchangeService;->access$1800(Lcom/android/exchange/ExchangeService;J)V

    .line 3489
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_8e

    .line 3493
    invoke-static {}, Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V

    goto :goto_5f

    .line 3489
    :catchall_8e
    move-exception v3

    :try_start_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v3
.end method
