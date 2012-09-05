.class public Lcom/samsung/swift/controller/InstallState;
.super Lcom/samsung/swift/controller/State;
.source "InstallState.java"


# instance fields
.field private file:Ljava/lang/String;

.field private progress:S

.field private showDeveloperDialog:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/swift/controller/State;-><init>(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->installState()I

    move-result v3

    iput v3, p0, Lcom/samsung/swift/controller/InstallState;->state:I

    .line 120
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->installedFile()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/swift/controller/InstallState;->file:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->installProgress()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/samsung/swift/controller/InstallState;->progress:S

    .line 123
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, resources:Landroid/content/res/Resources;
    const-string v3, "use_developer_mode"

    const-string v4, "bool"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, useDeveloperModeId:I
    const/4 v1, 0x1

    .line 126
    .local v1, useDeveloperMode:Z
    if-eqz v2, :cond_42

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 131
    :cond_42
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v3

    if-nez v3, :cond_57

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/bin/su"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_57

    if-nez v1, :cond_5f

    .line 134
    :cond_57
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->install()Z

    .line 142
    :goto_5e
    return-void

    .line 140
    :cond_5f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/swift/controller/InstallState;->showDeveloperDialog:Z

    goto :goto_5e
.end method


# virtual methods
.method protected onInstallerSetWorldReadable(Lcom/samsung/swift/install/InstallActivity;Z)Lcom/samsung/swift/controller/State;
    .registers 4
    .parameter "instance"
    .parameter "worldReadable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->setInstallWorldReadable(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->install()Z

    .line 202
    return-object p0
.end method

.method protected onInstallerState(ILjava/lang/String;S)Lcom/samsung/swift/controller/State;
    .registers 5
    .parameter "state"
    .parameter "file"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 184
    new-instance p0, Lcom/samsung/swift/controller/StoppedState;

    .end local p0
    invoke-direct {p0}, Lcom/samsung/swift/controller/StoppedState;-><init>()V

    .line 190
    :goto_8
    return-object p0

    .line 187
    .restart local p0
    :cond_9
    iput p1, p0, Lcom/samsung/swift/controller/InstallState;->state:I

    .line 188
    iput-object p2, p0, Lcom/samsung/swift/controller/InstallState;->file:Ljava/lang/String;

    .line 189
    iput-short p3, p0, Lcom/samsung/swift/controller/InstallState;->progress:S

    goto :goto_8
.end method

.method protected onUpdateAppletDisplay(Lcom/samsung/swift/applet/AppletActivity;)V
    .registers 3
    .parameter "appletActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/samsung/swift/install/InstallActivity;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/samsung/swift/applet/AppletActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method protected onUpdateInstallerDisplay(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 5
    .parameter "installActivity"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/samsung/swift/controller/InstallState;->showDeveloperDialog:Z

    if-eqz v0, :cond_a

    .line 169
    invoke-virtual {p1}, Lcom/samsung/swift/install/InstallActivity;->showDeveloperModeDialog()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/controller/InstallState;->showDeveloperDialog:Z

    .line 172
    :cond_a
    iget v0, p0, Lcom/samsung/swift/controller/InstallState;->state:I

    iget-object v1, p0, Lcom/samsung/swift/controller/InstallState;->file:Ljava/lang/String;

    iget-short v2, p0, Lcom/samsung/swift/controller/InstallState;->progress:S

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/swift/install/InstallActivity;->update(ILjava/lang/String;S)V

    .line 173
    return-void
.end method

.method public onUserClickExplicitInstall(Lcom/samsung/swift/install/InstallActivity;)Lcom/samsung/swift/controller/State;
    .registers 3
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/samsung/swift/controller/InstallState;->getServiceManager()Lcom/samsung/swift/service/SwiftServiceManagerBound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftServiceManagerBound;->install()Z

    .line 212
    return-object p0
.end method
