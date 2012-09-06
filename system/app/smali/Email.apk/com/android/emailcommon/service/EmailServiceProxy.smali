.class public Lcom/android/emailcommon/service/EmailServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# instance fields
.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IEmailService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 5
    .parameter "_context"
    .parameter "_intent"
    .parameter "_callback"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 92
    :try_start_6
    invoke-static {p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_c

    .line 95
    :goto_9
    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 96
    return-void

    .line 93
    :catch_c
    move-exception v0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 5
    .parameter "_context"
    .parameter "_action"
    .parameter "_callback"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 101
    :try_start_b
    invoke-static {p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_11

    .line 104
    :goto_e
    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    .line 105
    return-void

    .line 102
    :catch_11
    move-exception v0

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$5;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autoDiscover"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 230
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 231
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 232
    const/4 v0, 0x0

    .line 237
    :goto_12
    return-object v0

    .line 234
    :cond_13
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 235
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 236
    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoDiscover returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autodiscover_error_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
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
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .registers 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$11;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "deleteAccountPIMData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 370
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
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x2

    return v0
.end method

.method public hostChanged(J)V
    .registers 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$9;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "hostChanged"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 298
    return-void
.end method

.method public loadAttachment(JZ)V
    .registers 6
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$1;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JZ)V

    const-string v1, "loadAttachment"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 146
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
    .line 322
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .registers 3
    .parameter "binder"

    .prologue
    .line 109
    invoke-static {p1}, Lcom/android/emailcommon/service/IEmailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    .line 110
    return-void
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
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 13
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$12;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$12;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V

    const-string v1, "searchMessages"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 397
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16
.end method

.method public sendMeetingResponse(JI)V
    .registers 6
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$10;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JI)V

    const-string v1, "sendMeetingResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 314
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$8;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    const-string v1, "setCallback"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 283
    return-void
.end method

.method public setLogging(I)V
    .registers 4
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$7;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;I)V

    const-string v1, "setLogging"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 269
    return-void
.end method

.method public startSync(JZ)V
    .registers 6
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$2;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JZ)V

    const-string v1, "startSync"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 163
    return-void
.end method

.method public stopSync(J)V
    .registers 5
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$3;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "stopSync"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 180
    return-void
.end method

.method public updateFolderList(J)V
    .registers 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$6;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "updateFolderList"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 254
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$4;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/provider/HostAuth;)V

    const-string v1, "validate"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 199
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 200
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_1d

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    const-string v1, "validate_result_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :goto_1c
    return-object v0

    .line 205
    :cond_1d
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 206
    const-class v1, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 207
    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validate returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "validate_result_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method
