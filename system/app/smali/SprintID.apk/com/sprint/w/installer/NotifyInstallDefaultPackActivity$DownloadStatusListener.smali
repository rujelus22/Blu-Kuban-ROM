.class Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;
.super Ljava/lang/Object;
.source "NotifyInstallDefaultPackActivity.java"

# interfaces
.implements Lcom/sprint/w/installer/DownloadService$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;


# direct methods
.method private constructor <init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    .registers 5
    .parameter "sp"
    .parameter "packFilePath"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 197
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    new-instance v1, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    :cond_12
    return-void
.end method

.method public downloadFailed()V
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 211
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    new-instance v1, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$3;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$3;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    :cond_12
    return-void
.end method

.method public progressChanged(I)V
    .registers 4
    .parameter "percentComplete"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-virtual {v0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 184
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    new-instance v1, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;I)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    :cond_12
    return-void
.end method
