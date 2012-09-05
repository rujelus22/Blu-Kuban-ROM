.class public Lcom/android/email/ExchangeUtils$NullEmailService;
.super Landroid/app/Service;
.source "ExchangeUtils.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/ExchangeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullEmailService"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/ExchangeUtils$NullEmailService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/email/ExchangeUtils$NullEmailService;

    invoke-direct {v0}, Lcom/android/email/ExchangeUtils$NullEmailService;-><init>()V

    sput-object v0, Lcom/android/email/ExchangeUtils$NullEmailService;->INSTANCE:Lcom/android/email/ExchangeUtils$NullEmailService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .registers 4
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 117
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 6
    .parameter "userName"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public changeSmsSettings(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method

.method public deleteAccountPIMData(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public emptyTrash(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .registers 6
    .parameter "accountId"
    .parameter "folderName"
    .parameter "parentMailboxId"

    .prologue
    .line 223
    return-void
.end method

.method public folderDelete(J)V
    .registers 3
    .parameter "mailboxId"

    .prologue
    .line 280
    return-void
.end method

.method public folderMove(JLjava/lang/String;)V
    .registers 4
    .parameter "mailboxId"
    .parameter "toMailboxParentId"

    .prologue
    .line 276
    return-void
.end method

.method public folderRename(JLjava/lang/String;)V
    .registers 4
    .parameter "mailboxId"
    .parameter "toName"

    .prologue
    .line 272
    return-void
.end method

.method public getAliasFromMap(J)Ljava/lang/String;
    .registers 4
    .parameter "tId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiLevel()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public hostChanged(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public loadAttachment(JZ)V
    .registers 4
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public loadMore(J)V
    .registers 3
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    return-void
.end method

.method public loadMoreCancel()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .registers 7
    .parameter "mailboxId"
    .parameter "toMailboxId"
    .parameter "conversatoinId"
    .parameter "ignore"

    .prologue
    .line 231
    return-void
.end method

.method public moveMessage(JJ)V
    .registers 5
    .parameter "messageId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshIRMTemplates(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "accId"
    .parameter "mailboxId"
    .parameter "foldId"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "optionsDeepTraversalStr"
    .parameter "conversationIdStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .registers 6
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .registers 4
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public sendMessageCancel([JJJ)V
    .registers 6
    .parameter "messageIds"
    .parameter "outboxId"
    .parameter "accountId"

    .prologue
    .line 247
    return-void
.end method

.method public sendRecoveryPassword(JLjava/lang/String;)V
    .registers 4
    .parameter "accountId"
    .parameter "password"

    .prologue
    .line 209
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public setDeviceInfo(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    return-void
.end method

.method public setLogging(I)V
    .registers 2
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method public startSync(JZ)V
    .registers 4
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public stopSync(J)V
    .registers 3
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    return-void
.end method

.method public updateFolderList(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    .registers 9
    .parameter "protocol"
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method
