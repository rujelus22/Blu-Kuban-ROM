.class final Lcom/android/email/activity/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$newMailboxId:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, mailboxName:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 268
    :goto_a
    return-void

    .line 266
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_a
.end method
