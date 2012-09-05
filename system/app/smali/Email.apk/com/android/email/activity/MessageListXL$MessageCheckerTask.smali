.class public Lcom/android/email/activity/MessageListXL$MessageCheckerTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageCheckerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMessageIds:[J

.field private final mMoveType:I

.field private final mTargetAccountId:J

.field private final mTargetMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter "activity"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "moveType"

    .prologue
    .line 4095
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4096
    iput-object p2, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    .line 4097
    iput-wide p3, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetAccountId:J

    .line 4098
    iput-wide p5, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetMailboxId:J

    .line 4099
    iput-object p7, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMessageIds:[J

    .line 4100
    iput p9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMoveType:I

    .line 4102
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 16
    .parameter "arg0"

    .prologue
    const/4 v13, 0x1

    const-wide/16 v11, -0x1

    .line 4106
    iget-object v9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 4108
    .local v3, c:Landroid/content/Context;
    const-wide/16 v0, -0x1

    .line 4110
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMessageIds:[J

    .local v2, arr$:[J
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_4a

    aget-wide v7, v2, v4

    .line 4112
    .local v7, messageId:J
    invoke-static {v3, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 4113
    .local v6, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_1c

    .line 4110
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4117
    :cond_1c
    cmp-long v9, v0, v11

    if-nez v9, :cond_37

    .line 4118
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 4128
    :cond_22
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v3, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v9

    if-nez v9, :cond_19

    .line 4129
    iget-object v9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f08008a

    invoke-static {v9, v10, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 4131
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 4138
    .end local v6           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #messageId:J
    :goto_36
    return-object v9

    .line 4121
    .restart local v6       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v7       #messageId:J
    :cond_37
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    cmp-long v9, v9, v0

    if-eqz v9, :cond_22

    .line 4122
    iget-object v9, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    const v10, 0x7f080089

    invoke-static {v9, v10, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 4124
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_36

    .line 4138
    .end local v6           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #messageId:J
    :cond_4a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_36
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4081
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .registers 8
    .parameter "accountId"

    .prologue
    .line 4143
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 4144
    iget v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMoveType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 4145
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 4151
    :goto_14
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 4153
    :cond_21
    return-void

    .line 4147
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mTargetMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->mMessageIds:[J

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    .line 4149
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    goto :goto_14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4081
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
