.class Lcom/android/email/activity/MessageCompose$LoadMessageTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;

.field private mMessageId:J

.field private final mSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;)V
    .registers 7
    .parameter
    .parameter "messageId"
    .parameter "saveTask"
    .parameter "callback"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 1026
    #getter for: Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1027
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    .line 1028
    iput-object p4, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    .line 1029
    iput-object p5, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mCallback:Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;

    .line 1030
    return-void
.end method

.method private getIdToLoad()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1033
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 1034
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    .line 1036
    :cond_16
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1008
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .registers 14
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 1043
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->getIdToLoad()J
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_4} :catch_28

    move-result-wide v6

    .line 1055
    .local v6, messageId:J
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 1056
    .local v5, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v5, :cond_42

    .line 1068
    .end local v5           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v6           #messageId:J
    :goto_d
    return-object v8

    .line 1044
    :catch_e
    move-exception v4

    .line 1046
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load draft message since existing save task failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1049
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_28
    move-exception v4

    .line 1051
    .local v4, e:Ljava/util/concurrent/ExecutionException;
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load draft message since existing save task failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1059
    .end local v4           #e:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v6       #messageId:J
    :cond_42
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1060
    .local v1, accountId:J
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v9, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1063
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    :try_start_4a
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v10, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_51} :catch_5f

    move-result-object v3

    .line 1068
    .local v3, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    goto :goto_d

    .line 1064
    .end local v3           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    :catch_5f
    move-exception v4

    .line 1065
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v9, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while loading message body: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1008
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onSuccess([Ljava/lang/Object;)V

    return-void
.end method

.method protected onSuccess([Ljava/lang/Object;)V
    .registers 8
    .parameter "results"

    .prologue
    const/4 v5, 0x1

    .line 1073
    if-eqz p1, :cond_7

    array-length v3, p1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    .line 1074
    :cond_7
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mCallback:Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;

    invoke-interface {v3}, Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;->onLoadFailed()V

    .line 1089
    :goto_c
    return-void

    .line 1078
    :cond_d
    const/4 v3, 0x0

    aget-object v2, p1, v3

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1079
    .local v2, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    aget-object v1, p1, v5

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Body;

    .line 1080
    .local v1, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    const/4 v3, 0x2

    aget-object v0, p1, v3

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 1081
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v2, :cond_21

    if-eqz v1, :cond_21

    if-nez v0, :cond_27

    .line 1082
    :cond_21
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mCallback:Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;

    invoke-interface {v3}, Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;->onLoadFailed()V

    goto :goto_c

    .line 1086
    :cond_27
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/Account;)V
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/Account;)V

    .line 1087
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mCallback:Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;

    invoke-interface {v3, v2, v1}, Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;->onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 1088
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V
    invoke-static {v3, v5}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;Z)V

    goto :goto_c
.end method
