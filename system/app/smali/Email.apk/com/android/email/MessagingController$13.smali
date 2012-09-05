.class Lcom/android/email/MessagingController$13;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingMoveActions(Ljava/util/HashMap;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$final_serverIds:Ljava/util/HashMap;

.field final synthetic val$orig_boxkey:J

.field final synthetic val$target_boxkey:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JLjava/util/HashMap;JJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3071
    iput-object p1, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/MessagingController$13;->val$final_serverIds:Ljava/util/HashMap;

    iput-wide p5, p0, Lcom/android/email/MessagingController$13;->val$target_boxkey:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$13;->val$orig_boxkey:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 3073
    const/4 v8, 0x1

    .line 3075
    .local v8, bResult:Z
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 3077
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_10

    .line 3107
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_f
    :goto_f
    return-void

    .line 3080
    .restart local v1       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_10
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3082
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v0, "MsgControl >>>"

    const-string v3, "PERFORMANCE MOVE START"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, p0, Lcom/android/email/MessagingController$13;->val$final_serverIds:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/android/email/MessagingController$13;->val$target_boxkey:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$13;->val$orig_boxkey:J

    #calls: Lcom/android/email/MessagingController;->processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    invoke-static/range {v0 .. v7}, Lcom/android/email/MessagingController;->access$700(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z

    move-result v8

    .line 3092
    const-string v0, "Z7App"

    const-string v3, "PERFORMANCE MOVE END"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_40

    .line 3103
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :goto_3d
    if-nez v8, :cond_f

    goto :goto_f

    .line 3096
    :catch_40
    move-exception v9

    .line 3100
    .local v9, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_3d
.end method
