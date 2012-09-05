.class public abstract Lcom/android/email/Controller$Result;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation


# instance fields
.field private volatile mRegistered:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .registers 6
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 4249
    return-void
.end method

.method public addUserAccountCallback(Landroid/os/Bundle;J)V
    .registers 5
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 4466
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/Email;->SNC_RESTORE_ACCOUNT_FLOW_UNDERPROCESS:Z

    .line 4468
    return-void
.end method

.method public deactivateSncCallback()V
    .registers 1

    .prologue
    .line 4494
    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .registers 4
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 4368
    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .registers 4
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 4488
    return-void
.end method

.method public deviceInfoCallback(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 4432
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4374
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .registers 5
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 4386
    return-void
.end method

.method public folderPushCallback(Lcom/android/emailcommon/mail/MessagingException;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .registers 4
    .parameter "result"
    .parameter "mailbox"
    .parameter "progress"

    .prologue
    .line 4481
    return-void
.end method

.method public getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4441
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    return-void
.end method

.method public getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4447
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    return-void
.end method

.method public getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 3
    .parameter "status"
    .parameter "sncProfile"

    .prologue
    .line 4453
    return-void
.end method

.method protected final isRegistered()Z
    .registers 2

    .prologue
    .line 4252
    iget-boolean v0, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    return v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 4321
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4299
    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4421
    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 4474
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .registers 5
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 4379
    return-void
.end method

.method public moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V
    .registers 4
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 4501
    return-void
.end method

.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4305
    return-void
.end method

.method public searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V
    .registers 9
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"
    .parameter "statusCode"

    .prologue
    .line 4418
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4360
    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .registers 6
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"

    .prologue
    .line 4506
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 4337
    return-void
.end method

.method protected setRegistered(Z)V
    .registers 2
    .parameter "registered"

    .prologue
    .line 4235
    iput-boolean p1, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    .line 4236
    return-void
.end method

.method public setupAccountCallback(Landroid/os/Bundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 4399
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
    .line 4286
    return-void
.end method

.method public updateMailboxListCallback(ILcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 6
    .parameter "cmd"
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 4270
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4265
    return-void
.end method

.method public updateUserProfileCallback(Landroid/os/Bundle;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 4459
    return-void
.end method
