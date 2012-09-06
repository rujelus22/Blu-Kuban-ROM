.class final Lcom/android/email/activity/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/content/Context;J[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageIds:[J

.field final synthetic val$newMailboxId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J[J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    iput-object p4, p0, Lcom/android/email/activity/ActivityHelper$1;->val$messageIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, mailboxName:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 115
    :goto_a
    return-void

    .line 111
    :cond_b
    iget-object v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    iget-object v4, p0, Lcom/android/email/activity/ActivityHelper$1;->val$messageIds:[J

    array-length v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/email/activity/ActivityHelper$1;->val$messageIds:[J

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a
.end method
