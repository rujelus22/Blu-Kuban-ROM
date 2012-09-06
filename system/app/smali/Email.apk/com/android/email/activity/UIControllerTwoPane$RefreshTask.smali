.class Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "UIControllerTwoPane.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerTwoPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field mInboxId:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMailboxId:J

.field private final mRefreshManager:Lcom/android/email/RefreshManager;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/content/Context;JJ)V
    .registers 16
    .parameter "tracker"
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 548
    sget-object v7, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-static {p2}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;)V

    .line 550
    return-void
.end method

.method constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;)V
    .registers 9
    .parameter "tracker"
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "clock"
    .parameter "refreshManager"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 556
    iput-object p7, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mClock:Lcom/android/email/Clock;

    .line 557
    iput-object p2, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mContext:Landroid/content/Context;

    .line 558
    iput-object p8, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 559
    iput-wide p3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    .line 560
    iput-wide p5, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mMailboxId:J

    .line 561
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .parameter "params"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mInboxId:J

    .line 569
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->isRefreshable(Landroid/content/Context;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .registers 8
    .parameter "isCurrentMailboxRefreshable"

    .prologue
    const/4 v5, 0x1

    .line 577
    if-nez p1, :cond_4

    .line 593
    :cond_3
    :goto_3
    return-void

    .line 580
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 581
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 584
    :cond_13
    iget-wide v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 585
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->shouldRefreshMailboxList()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 586
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 590
    :cond_28
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->shouldAutoRefreshInbox()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mInboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_3
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method

.method shouldAutoRefreshInbox()Z
    .registers 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-wide v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mInboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 629
    :cond_9
    :goto_9
    return v2

    .line 621
    :cond_a
    iget-object v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mInboxId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v3

    if-nez v3, :cond_9

    .line 624
    iget-object v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mInboxId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->getLastMessageListRefreshTime(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v0, v3, v5

    .line 626
    .local v0, nextRefreshTime:J
    iget-object v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_9

    .line 629
    const/4 v2, 0x1

    goto :goto_9
.end method

.method shouldRefreshMailboxList()Z
    .registers 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->isMailboxListRefreshing(J)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 609
    :cond_b
    :goto_b
    return v2

    .line 604
    :cond_c
    iget-object v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->getLastMailboxListRefreshTime(J)J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long v0, v3, v5

    .line 606
    .local v0, nextRefreshTime:J
    iget-object v3, p0, Lcom/android/email/activity/UIControllerTwoPane$RefreshTask;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_b

    .line 609
    const/4 v2, 0x1

    goto :goto_b
.end method
