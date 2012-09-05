.class public Lcom/android/email/activity/MessageView;
.super Lcom/android/email/activity/MessageViewBase;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/MessageOrderManager$Callback;
.implements Lcom/android/email/activity/MessageViewFragment$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# static fields
.field public static isSms:Z


# instance fields
.field private mFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mMailboxId:J

.field private mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

.field private mMessageId:J

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mReplyAndForwardEnabled:Z

.field mailBoxCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewBase;-><init>()V

    .line 250
    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    .line 252
    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    return-void
.end method

.method public static actionView(Landroid/content/Context;JJ)V
    .registers 6
    .parameter "context"
    .parameter "messageId"
    .parameter "mailboxId"

    .prologue
    .line 271
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->getActionViewIntent(Landroid/content/Context;JJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method private enableForwardReply(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mReplyAndForwardEnabled:Z

    .line 629
    return-void
.end method

.method public static getActionViewIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageView invalid messageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 280
    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 281
    return-object v0
.end method

.method private initFromIntent()V
    .registers 10

    .prologue
    const-wide/16 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 365
    const-string v2, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    .line 369
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v2, "Z7App"

    const-string v3, "111111mMessageId : %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v2, "Z7App"

    const-string v3, "111111mMailboxId : %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "vnd.android.cursor.item/email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "MESSAGE_ID"

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 377
    const-string v2, "com.android.email.LogProvider"

    const-string v3, "com.android.email.LogProvider"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v2, "com.android.email.MessageView_message_id"

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 380
    const-string v2, "com.android.email.MessageView_mailbox_id"

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private messageChanged()V
    .registers 5

    .prologue
    .line 671
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V

    .line 672
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v1, :cond_14

    .line 673
    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V
    :try_end_14
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_14} :catch_15

    .line 679
    :cond_14
    :goto_14
    return-void

    .line 675
    :catch_15
    move-exception v0

    .line 676
    .local v0, ipe:Ljava/security/InvalidParameterException;
    const-string v1, "Z7App"

    const-string v2, "can not open email when MessageId is -1"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method private moveToOlder()Z
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 515
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 516
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    .line 517
    const/4 v0, 0x1

    .line 519
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method protected getAccountId()J
    .registers 3

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFragment()Lcom/android/email/activity/MessageViewFragment;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method protected bridge synthetic getFragment()Lcom/android/email/activity/MessageViewFragmentBase;
    .registers 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .registers 2

    .prologue
    .line 286
    const v0, 0x7f04009c

    return v0
.end method

.method handleMenuItem(I)Z
    .registers 3
    .parameter "menuItemId"

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public moveToNewerView()V
    .registers 1

    .prologue
    .line 789
    return-void
.end method

.method public moveToOlderView()V
    .registers 1

    .prologue
    .line 784
    return-void
.end method

.method public onBeforeMessageDelete()V
    .registers 1

    .prologue
    .line 744
    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .registers 3
    .parameter "epochEventStartTime"

    .prologue
    .line 716
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    .line 717
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 549
    return-void
.end method

.method public onCompose()V
    .registers 3

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 749
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 750
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreate(Landroid/os/Bundle;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1001d1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 295
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 309
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->initFromIntent()V

    .line 310
    if-eqz p1, :cond_26

    .line 311
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    .line 313
    :cond_26
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 633
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 319
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    if-eqz v0, :cond_17

    .line 324
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 326
    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 329
    :cond_17
    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onDestroy()V

    .line 330
    return-void
.end method

.method public onForward()V
    .registers 3

    .prologue
    .line 737
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 738
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 739
    return-void
.end method

.method public onMessageNotFound()V
    .registers 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 697
    return-void
.end method

.method public onMessageSetUnread()V
    .registers 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 623
    return-void
.end method

.method public onMessageViewShown(I)V
    .registers 3
    .parameter "mailboxType"

    .prologue
    .line 491
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onMessageViewShown(I)V

    .line 492
    const/4 v0, 0x6

    if-eq p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->enableForwardReply(Z)V

    .line 493
    return-void

    .line 492
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onMessagesChanged()V
    .registers 1

    .prologue
    .line 704
    return-void
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .registers 8
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "moveType"

    .prologue
    .line 357
    return-void
.end method

.method public onMoveMessage()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 755
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    aput-wide v2, v0, v1

    invoke-static {p0, v0, v4}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v6

    .line 759
    .local v6, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    if-nez v0, :cond_27

    .line 760
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "type<64 AND flagVisible=1 AND type NOT IN (3,4,5,8)"

    const-string v5, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    .line 767
    :cond_27
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    invoke-virtual {v6, v0}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v6, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .registers 7
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "moveType"

    .prologue
    .line 338
    invoke-static/range {p0 .. p5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    .line 340
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 342
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    .line 568
    :goto_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z

    move-result v0

    .line 569
    .local v0, handled:Z
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->getFromSocialHubState()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 570
    :cond_1b
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 572
    :cond_1f
    return v0

    .line 558
    .end local v0           #handled:Z
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getAccountId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    goto :goto_7

    .line 561
    :sswitch_28
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onCompose()V

    goto :goto_7

    .line 564
    :sswitch_2c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onBackPressed()V

    goto :goto_7

    .line 556
    :sswitch_data_30
    .sparse-switch
        0x102002c -> :sswitch_2c
        0x7f1002d4 -> :sswitch_28
        0x7f1002da -> :sswitch_20
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_c

    .line 467
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 472
    :cond_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 475
    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onPause()V

    .line 476
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 662
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onReply()V
    .registers 4

    .prologue
    .line 725
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 726
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 727
    return-void
.end method

.method public onReplyAll()V
    .registers 4

    .prologue
    .line 731
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 732
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 733
    return-void
.end method

.method public onRespondedToInvite(I)V
    .registers 3
    .parameter "response"

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_9

    .line 710
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 712
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onResume()V

    .line 455
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 456
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    .line 462
    :goto_f
    return-void

    .line 460
    :cond_10
    new-instance v0, Lcom/android/email/activity/MessageOrderManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 461
    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    goto :goto_f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 443
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 444
    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 445
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 447
    :cond_12
    return-void
.end method

.method public removeIrmProtection(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 780
    return-void
.end method
