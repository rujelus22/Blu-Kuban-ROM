.class Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxFinderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public onAccountNotFound()V
    .registers 1

    .prologue
    .line 1161
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    #getter for: Lcom/android/email/activity/MessageListXLFragmentManager;->mTargetActivity:Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$300(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;->onAccountSecurityHold(J)V

    .line 1170
    return-void
.end method

.method public onMailboxFound(JJ)V
    .registers 14
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 1178
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    .line 1180
    :try_start_8
    iget-object v0, p0, Lcom/android/email/activity/MessageListXLFragmentManager$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-wide v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    .line 1185
    :cond_13
    :goto_13
    return-void

    .line 1181
    :catch_14
    move-exception v8

    .line 1182
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public onMailboxNotFound(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 1194
    return-void
.end method
