.class Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageViewFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1936
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public moveToNewerView()V
    .registers 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->moveToNewer()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3700(Lcom/android/email/activity/MessageListXL;)Z

    .line 2111
    return-void
.end method

.method public moveToOlderView()V
    .registers 2

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->moveToOlder()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3600(Lcom/android/email/activity/MessageListXL;)Z

    .line 2106
    return-void
.end method

.method public onBeforeMessageDelete()V
    .registers 3

    .prologue
    .line 2005
    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v0, :cond_b

    .line 2006
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListXL;->access$3400(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 2011
    :goto_a
    return-void

    .line 2010
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    goto :goto_a
.end method

.method public onCalendarLinkClicked(J)V
    .registers 4
    .parameter "epochEventStartTime"

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 2001
    return-void
.end method

.method public onCompose()V
    .registers 8

    .prologue
    const-wide/16 v4, -0x1

    .line 2068
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->IsEAS()Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3500(Lcom/android/email/activity/MessageListXL;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2069
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 2100
    :cond_19
    :goto_19
    return-void

    .line 2073
    :cond_1a
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$500(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$400(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    .line 2074
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 2075
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$500(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 2076
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2079
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_19

    .line 2082
    :cond_6c
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_19

    .line 2086
    .end local v0           #accountId:J
    :cond_72
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageListXL;->access$500(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 2087
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2090
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto/16 :goto_19

    .line 2093
    :cond_a5
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto/16 :goto_19
.end method

.method public onForward()V
    .registers 6

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2026
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 2032
    :goto_1d
    return-void

    .line 2029
    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_1d
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .registers 2
    .parameter "errorMessage"

    .prologue
    .line 1983
    return-void
.end method

.method public onLoadMessageFinished()V
    .registers 1

    .prologue
    .line 1979
    return-void
.end method

.method public onLoadMessageStarted()V
    .registers 1

    .prologue
    .line 1974
    return-void
.end method

.method public onMessageNotExists()V
    .registers 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1969
    return-void
.end method

.method public onMessageSetUnread()V
    .registers 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1964
    return-void
.end method

.method public onMessageViewGone()V
    .registers 2

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3100(Lcom/android/email/activity/MessageListXL;)V

    .line 1947
    return-void
.end method

.method public onMessageViewShown(I)V
    .registers 3
    .parameter "mailboxType"

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 1940
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3000(Lcom/android/email/activity/MessageListXL;)V

    .line 1941
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1000(Lcom/android/email/activity/MessageListXL;)V

    .line 1942
    return-void
.end method

.method public onMoveMessage()V
    .registers 5

    .prologue
    .line 2015
    const/4 v1, 0x1

    new-array v0, v1, [J

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2018
    .local v0, messageIds:[J
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageListXL;->access$2100(Lcom/android/email/activity/MessageListXL;[J)V

    .line 2019
    return-void
.end method

.method public onReply()V
    .registers 6

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2044
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2050
    :goto_1e
    return-void

    .line 2047
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_1e
.end method

.method public onReplyAll()V
    .registers 6

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2057
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 2063
    :goto_1e
    return-void

    .line 2060
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_1e
.end method

.method public onRespondedToInvite(I)V
    .registers 5
    .parameter "response"

    .prologue
    .line 1988
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_19

    .line 1989
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$3200(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/android/email/activity/MessageCompose;->actionMeetingResponse(Landroid/content/Context;JI)V

    .line 1995
    :goto_13
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 1996
    return-void

    .line 1992
    :cond_19
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$3200(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/email/Controller;->sendMeetingResponse(JI)V

    goto :goto_13
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .registers 5
    .parameter "url"

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public removeIrmProtection(J)V
    .registers 4
    .parameter "messageId"

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 2117
    return-void
.end method
