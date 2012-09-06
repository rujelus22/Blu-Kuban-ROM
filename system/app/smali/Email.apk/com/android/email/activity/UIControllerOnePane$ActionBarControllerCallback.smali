.class Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;
.super Ljava/lang/Object;
.source "UIControllerOnePane.java"

# interfaces
.implements Lcom/android/email/activity/ActionBarController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerOnePane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerOnePane;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/UIControllerOnePane;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/UIControllerOnePane;Lcom/android/email/activity/UIControllerOnePane$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;-><init>(Lcom/android/email/activity/UIControllerOnePane;)V

    return-void
.end method


# virtual methods
.method public getMailboxId()J
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->getMailboxId()J
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$100(Lcom/android/email/activity/UIControllerOnePane;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 180
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 182
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getSearchHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getSearchHint()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getTitleMode()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    const/4 v0, 0x1

    .line 175
    :goto_9
    return v0

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 173
    const/4 v0, 0x3

    goto :goto_9

    .line 175
    :cond_14
    const/16 v0, 0x12

    goto :goto_9
.end method

.method public getUIAccountId()J
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->getUIAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAccountSelected(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/UIControllerOnePane;->switchAccount(JZ)V

    .line 220
    return-void
.end method

.method public onMailboxSelected(JJ)V
    .registers 7
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 205
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_c

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->showAllMailboxes()V
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$200(Lcom/android/email/activity/UIControllerOnePane;)V

    .line 210
    :goto_b
    return-void

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/UIControllerOnePane;->openMailbox(JJ)V

    goto :goto_b
.end method

.method public onNoAccountsFound()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 225
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerOnePane;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->finish()V

    .line 226
    return-void
.end method

.method public onSearchExit()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->onSearchExit()V

    .line 255
    return-void
.end method

.method public onSearchStarted()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 242
    :goto_8
    return-void

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->onSearchStarted()V

    goto :goto_8
.end method

.method public onSearchSubmit(Ljava/lang/String;)V
    .registers 3
    .parameter "queryTerm"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 250
    :goto_8
    return-void

    .line 249
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerOnePane;->onSearchSubmit(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public shouldShowUp()Z
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageViewInstalled()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    #calls: Lcom/android/email/activity/UIControllerOnePane;->isInboxShown()Z
    invoke-static {v0}, Lcom/android/email/activity/UIControllerOnePane;->access$000(Lcom/android/email/activity/UIControllerOnePane;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/UIControllerOnePane$ActionBarControllerCallback;->this$0:Lcom/android/email/activity/UIControllerOnePane;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerOnePane;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
