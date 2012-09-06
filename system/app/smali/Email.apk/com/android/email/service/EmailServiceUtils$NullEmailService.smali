.class public Lcom/android/email/service/EmailServiceUtils$NullEmailService;
.super Landroid/app/Service;
.source "EmailServiceUtils.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullEmailService"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/service/EmailServiceUtils$NullEmailService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/email/service/EmailServiceUtils$NullEmailService;

    invoke-direct {v0}, Lcom/android/email/service/EmailServiceUtils$NullEmailService;-><init>()V

    sput-object v0, Lcom/android/email/service/EmailServiceUtils$NullEmailService;->INSTANCE:Lcom/android/email/service/EmailServiceUtils$NullEmailService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .registers 5
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
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
    .line 141
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .registers 5
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x2

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
    .line 105
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
    .line 108
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
    .line 111
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 7
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
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
    .line 119
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
    .line 122
    return-void
.end method

.method public setLogging(I)V
    .registers 2
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
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
    .line 128
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
    .line 131
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
    .line 134
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .registers 3
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
