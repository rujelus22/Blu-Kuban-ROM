.class public Lcom/sprint/w/installer/VoicemailService$InstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "VoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/VoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/VoicemailService;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/VoicemailService;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sprint/w/installer/VoicemailService$InstallObserver;->this$0:Lcom/sprint/w/installer/VoicemailService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 6
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    packed-switch p2, :pswitch_data_6a

    .line 111
    iget-object v0, p0, Lcom/sprint/w/installer/VoicemailService$InstallObserver;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v0}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voicemail installation failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 114
    :goto_29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/w/installer/VoicemailService;->sBusy:Z

    .line 115
    iget-object v0, p0, Lcom/sprint/w/installer/VoicemailService$InstallObserver;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v0}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Removing temp file: \'voicemail.apk\'"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sprint/w/installer/VoicemailService$InstallObserver;->this$0:Lcom/sprint/w/installer/VoicemailService;

    const-string v1, "voicemail.apk"

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/VoicemailService;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    return-void

    .line 107
    :pswitch_43
    iget-object v0, p0, Lcom/sprint/w/installer/VoicemailService$InstallObserver;->this$0:Lcom/sprint/w/installer/VoicemailService;

    #getter for: Lcom/sprint/w/installer/VoicemailService;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v0}, Lcom/sprint/w/installer/VoicemailService;->access$000(Lcom/sprint/w/installer/VoicemailService;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Voicemail apk, package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " installed successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->setVoicemailInstalled(Z)V

    goto :goto_29

    .line 105
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_43
    .end packed-switch
.end method
