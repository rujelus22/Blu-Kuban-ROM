.class public Lcom/android/email/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .registers 8
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 83
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .registers 6
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 80
    return-void
.end method

.method public controllerCommandCompleted(Z)V
    .registers 2
    .parameter "moreCommandsToRun"

    .prologue
    .line 132
    return-void
.end method

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .registers 4
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 136
    return-void
.end method

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V
    .registers 4
    .parameter "mailbox"
    .parameter "e"
    .parameter "progress"

    .prologue
    .line 142
    return-void
.end method

.method public foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    .registers 6
    .parameter "accountId"
    .parameter "command"
    .parameter "folderName"
    .parameter "result"

    .prologue
    .line 156
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .registers 4
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 55
    return-void
.end method

.method public listFoldersFinished(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 58
    return-void
.end method

.method public listFoldersStarted(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 52
    return-void
.end method

.method public loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .registers 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 120
    return-void
.end method

.method public loadAttachmentFinished(JJJZ)V
    .registers 8
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 116
    return-void
.end method

.method public loadAttachmentStarted(JJJZ)V
    .registers 8
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 105
    return-void
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .registers 4
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 77
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 74
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 71
    return-void
.end method

.method public movemessageToOtherAccountCallback(ZJJJJJJII)V
    .registers 16
    .parameter "result"
    .parameter "messageId"
    .parameter "source_accountId"
    .parameter "orig_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .parameter "source_trashMailboxId"
    .parameter "target_server_type"
    .parameter "source_server_type"

    .prologue
    .line 101
    return-void
.end method

.method public sendPendingMessagesCompleted(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 89
    return-void
.end method

.method public sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .registers 6
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 92
    return-void
.end method

.method public sendPendingMessagesStarted(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 86
    return-void
.end method

.method public syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    .registers 5
    .parameter "mailboxId"
    .parameter "e"
    .parameter "progress"

    .prologue
    .line 145
    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .registers 6
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 68
    return-void
.end method

.method public synchronizeMailboxFinished(JJII)V
    .registers 7
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 65
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 61
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 8
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 149
    return-void
.end method
