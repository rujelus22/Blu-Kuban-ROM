.class Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBodyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoShowPictures:Z

.field private mErrorLoadingMessageBody:Z

.field private final mId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .registers 6
    .parameter
    .parameter "messageId"
    .parameter "autoShowPictures"

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1146
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1147
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    .line 1148
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mAutoShowPictures:Z

    .line 1149
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1136
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 9
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    .line 1154
    const/4 v2, 0x0

    .line 1155
    .local v2, text:Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, html:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 1157
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 1159
    :cond_18
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_21} :catch_22

    .line 1165
    .end local v0           #html:Ljava/lang/String;
    :goto_21
    return-object v3

    .line 1160
    :catch_22
    move-exception v1

    .line 1163
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    const-string v4, "Exception while loading message body"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    .line 1165
    const/4 v3, 0x0

    goto :goto_21
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1136
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->onSuccess([Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess([Ljava/lang/String;)V
    .registers 6
    .parameter "results"

    .prologue
    .line 1171
    if-nez p1, :cond_18

    .line 1172
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    if-eqz v0, :cond_12

    .line 1173
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1175
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1180
    :goto_17
    return-void

    .line 1178
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mAutoShowPictures:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1179
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onPostLoadBody()V

    goto :goto_17
.end method
