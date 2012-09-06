.class Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxListFragment.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindParentMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mCallback:Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;

.field private final mContext:Landroid/content/Context;

.field private final mEnableHighlight:Z

.field private final mHighlightedMailboxId:J

.field private final mParentMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JZJJLcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;)V
    .registers 11
    .parameter "context"
    .parameter "taskTracker"
    .parameter "accountId"
    .parameter "enableHighlight"
    .parameter "parentMailboxId"
    .parameter "highlightedMailboxId"
    .parameter "callback"

    .prologue
    .line 638
    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 639
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mContext:Landroid/content/Context;

    .line 640
    iput-wide p3, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mAccountId:J

    .line 641
    iput-boolean p5, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mEnableHighlight:Z

    .line 642
    iput-wide p6, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mParentMailboxId:J

    .line 643
    iput-wide p8, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mHighlightedMailboxId:J

    .line 644
    iput-object p10, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mCallback:Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;

    .line 645
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 613
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Long;
    .registers 16
    .parameter "params"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v13, 0x0

    .line 649
    iget-object v9, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mParentMailboxId:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 650
    .local v6, parentMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v6, :cond_35

    move-wide v2, v7

    .line 654
    .local v2, nextParentId:J
    :goto_e
    iget-boolean v9, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mEnableHighlight:Z

    if-eqz v9, :cond_47

    .line 657
    iget-wide v9, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mParentMailboxId:J

    iget-wide v11, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mHighlightedMailboxId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_38

    .line 658
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mParentMailboxId:J

    .line 671
    .local v0, nextHighlightedId:J
    :goto_1c
    move-wide v4, v0

    .line 679
    .local v4, nextSelectedId:J
    :goto_1d
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    return-object v7

    .line 650
    .end local v0           #nextHighlightedId:J
    .end local v2           #nextParentId:J
    .end local v4           #nextSelectedId:J
    :cond_35
    iget-wide v2, v6, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    goto :goto_e

    .line 662
    .restart local v2       #nextParentId:J
    :cond_38
    cmp-long v7, v2, v7

    if-nez v7, :cond_45

    .line 663
    iget-object v7, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mAccountId:J

    invoke-static {v7, v8, v9, v13}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .restart local v0       #nextHighlightedId:J
    goto :goto_1c

    .line 666
    .end local v0           #nextHighlightedId:J
    :cond_45
    move-wide v0, v2

    .restart local v0       #nextHighlightedId:J
    goto :goto_1c

    .line 674
    .end local v0           #nextHighlightedId:J
    :cond_47
    const-wide/16 v0, -0x1

    .line 677
    .restart local v0       #nextHighlightedId:J
    move-wide v4, v2

    .restart local v4       #nextSelectedId:J
    goto :goto_1d
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 613
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->onSuccess([Ljava/lang/Long;)V

    return-void
.end method

.method protected onSuccess([Ljava/lang/Long;)V
    .registers 9
    .parameter "result"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;->mCallback:Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;->onResult(JJJ)V

    .line 685
    return-void
.end method
