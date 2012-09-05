.class Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$3;
.super Ljava/lang/Object;
.source "NotifyInstallDefaultPackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->downloadFailed()V
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
    .line 211
    iput-object p1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$3;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$3;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    const/4 v1, 0x3

    #calls: Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->updateUI(I)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->access$300(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;I)V

    .line 214
    return-void
.end method
