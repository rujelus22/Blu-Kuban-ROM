.class Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;
.super Ljava/lang/Object;
.source "NotifyInstallDefaultPackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v1, v1, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-static {v1}, Lcom/sprint/w/installer/DownloadService;->hasDefaultPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 201
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$2;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    const/4 v1, 0x2

    #calls: Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->updateUI(I)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->access$300(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;I)V

    .line 202
    return-void
.end method
