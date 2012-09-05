.class Lcom/android/email/MessagingController$ImapIdleFolder$1;
.super Ljava/lang/Thread;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController$ImapIdleFolder;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/MessagingController$ImapIdleFolder;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController$ImapIdleFolder;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 6067
    iput-object p1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x1a

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 6071
    const/4 v1, 0x3

    .line 6076
    .local v1, retryCount:I
    :cond_8
    :goto_8
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_ce

    add-int/lit8 v2, v1, -0x1

    .end local v1           #retryCount:I
    .local v2, retryCount:I
    if-lez v1, :cond_1ed

    .line 6081
    :try_start_16
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v8, :cond_38

    .line 6082
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 6086
    :cond_38
    const-string v3, "IDLE "

    const-string v4, "Open the remote folder. This pre-loads certain metadata like message count"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_1b3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_16 .. :try_end_49} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_49} :catch_161

    move v1, v2

    .line 6093
    .end local v2           #retryCount:I
    .restart local v1       #retryCount:I
    :cond_4a
    :try_start_4a
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6094
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    invoke-static {v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1600(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V

    .line 6095
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v4, "Got tagged final response!"

    invoke-virtual {v3, v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6096
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mResetCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mResetCount:I

    .line 6097
    const/4 v1, 0x0

    .line 6098
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4a

    .line 6099
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v4, "Got Final tagged response"

    iput-object v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;
    :try_end_80
    .catchall {:try_start_4a .. :try_end_80} :catchall_1e5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4a .. :try_end_80} :catch_1ea
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_80} :catch_1e7

    .line 6122
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 6124
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 6128
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_8

    .line 6100
    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :catch_9b
    move-exception v0

    move v1, v2

    .line 6101
    .end local v2           #retryCount:I
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #retryCount:I
    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 6102
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_fb

    .line 6103
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v4, "IDLE not supported :("

    invoke-virtual {v3, v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6104
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v4, "IDlE not supported!"

    iput-object v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;
    :try_end_b5
    .catchall {:try_start_9d .. :try_end_b5} :catchall_1e5

    .line 6122
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 6124
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_ce

    .line 6128
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6135
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_ce
    :goto_ce
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v4, "Thread Exited"

    invoke-virtual {v3, v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6136
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-virtual {v3, v9}, Lcom/android/email/MessagingController$ImapIdleFolder;->close(Z)V

    .line 6138
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_1cf

    .line 6141
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x2c

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v3, v4, v5, v11}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 6147
    :goto_fa
    return-void

    .line 6106
    .restart local v0       #e:Lcom/android/emailcommon/mail/MessagingException;
    :cond_fb
    :try_start_fb
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_114

    .line 6107
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v4, "Ignoring connection readtimeout exception alone"

    invoke-virtual {v3, v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6108
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mConnTimeout:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mConnTimeout:I

    .line 6109
    add-int/lit8 v1, v1, 0x1

    .line 6113
    :cond_114
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 6114
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start failed - MsgEx got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RetryCount - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v5, v5, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_fb .. :try_end_146} :catchall_1e5

    .line 6122
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 6124
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 6128
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_8

    .line 6116
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :catch_161
    move-exception v0

    move v1, v2

    .line 6117
    .end local v2           #retryCount:I
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #retryCount:I
    :goto_163
    :try_start_163
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartIdling failed - Ex got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RetryCount - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v5, v5, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6120
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;
    :try_end_198
    .catchall {:try_start_163 .. :try_end_198} :catchall_1e5

    .line 6122
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 6124
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 6128
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_8

    .line 6122
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :catchall_1b3
    move-exception v3

    move v1, v2

    .end local v2           #retryCount:I
    .restart local v1       #retryCount:I
    :goto_1b5
    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget v5, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 6124
    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v7, :cond_1ce

    .line 6128
    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1ce
    throw v3

    .line 6144
    :cond_1cf
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v3, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder$1;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v4, v4, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v5, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto/16 :goto_fa

    .line 6122
    :catchall_1e5
    move-exception v3

    goto :goto_1b5

    .line 6116
    :catch_1e7
    move-exception v0

    goto/16 :goto_163

    .line 6100
    :catch_1ea
    move-exception v0

    goto/16 :goto_9d

    .end local v1           #retryCount:I
    .restart local v2       #retryCount:I
    :cond_1ed
    move v1, v2

    .end local v2           #retryCount:I
    .restart local v1       #retryCount:I
    goto/16 :goto_ce
.end method
