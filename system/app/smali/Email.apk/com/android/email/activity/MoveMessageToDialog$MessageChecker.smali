.class Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;
.super Landroid/content/AsyncTaskLoader;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMessageIds:[J


# direct methods
.method public constructor <init>(Landroid/app/Activity;[J)V
    .registers 3
    .parameter "activity"
    .parameter "messageIds"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 269
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    .line 270
    iput-object p2, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mMessageIds:[J

    .line 271
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/activity/MoveMessageToDialog$IdContainer;
    .registers 16

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 277
    .local v7, c:Landroid/content/Context;
    const-wide/16 v1, -0x1

    .line 278
    .local v1, accountId:J
    const-wide/16 v3, -0x1

    .line 280
    .local v3, mailboxId:J
    iget-object v6, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mMessageIds:[J

    .local v6, arr$:[J
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_c
    if-ge v8, v9, :cond_35

    aget-wide v11, v6, v8

    .line 282
    .local v11, messageId:J
    invoke-static {v7, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 283
    .local v10, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v10, :cond_19

    .line 280
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 288
    :cond_19
    const-wide/16 v13, -0x1

    cmp-long v0, v1, v13

    if-nez v0, :cond_55

    .line 290
    iget-wide v1, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 291
    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/Account;->supportsMoveMessages(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 292
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v5, 0x7f080030

    invoke-static {v0, v5}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 294
    const-wide/16 v1, -0x1

    .line 315
    .end local v10           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v11           #messageId:J
    :cond_35
    :goto_35
    new-instance v0, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;-><init>(JJLcom/android/email/activity/MoveMessageToDialog$1;)V

    return-object v0

    .line 297
    .restart local v10       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v11       #messageId:J
    :cond_3c
    iget-wide v3, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 299
    invoke-static {v7, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v0

    if-nez v0, :cond_16

    .line 300
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v5, 0x7f080032

    invoke-static {v0, v5}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 301
    const-wide/16 v1, -0x1

    .line 302
    const-wide/16 v3, -0x1

    .line 303
    goto :goto_35

    .line 307
    :cond_55
    iget-wide v13, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    cmp-long v0, v13, v1

    if-nez v0, :cond_61

    iget-wide v13, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v0, v13, v3

    if-eqz v0, :cond_16

    .line 308
    :cond_61
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->mActivity:Landroid/app/Activity;

    const v5, 0x7f080031

    invoke-static {v0, v5}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 309
    const-wide/16 v1, -0x1

    .line 310
    const-wide/16 v3, -0x1

    .line 311
    goto :goto_35
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->loadInBackground()Lcom/android/email/activity/MoveMessageToDialog$IdContainer;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->stopLoading()V

    .line 332
    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->cancelLoad()Z

    .line 321
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->forceLoad()V

    .line 322
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;->cancelLoad()Z

    .line 327
    return-void
.end method
