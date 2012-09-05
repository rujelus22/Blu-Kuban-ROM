.class Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;
.super Ljava/lang/Object;
.source "NotifyInstallDefaultPackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    #calls: Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->cancelAlarm()V
    invoke-static {v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->access$100(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V

    .line 116
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v2, v2, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPending:Landroid/app/PendingIntent;

    if-nez v2, :cond_54

    .line 117
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    #getter for: Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->access$200(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v4, v4, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    iget-object v4, v4, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v2, v2, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-virtual {v2, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    .end local v1           #i:Landroid/content/Intent;
    :goto_42
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.w.installer.PackInstaller.ACTION_FINISH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_5c

    .line 129
    :goto_4e
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-virtual {v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->finish()V

    .line 130
    return-void

    .line 122
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v2, v2, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPending:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_42

    .line 125
    :catch_5c
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    #getter for: Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->access$200(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error attempting to install downloaded pack"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v3, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v3, v3, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sprint/w/installer/DownloadService;->clearReadyToInstallDownload(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4e
.end method
