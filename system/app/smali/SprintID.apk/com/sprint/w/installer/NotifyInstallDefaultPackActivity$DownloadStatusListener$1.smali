.class Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;
.super Ljava/lang/Object;
.source "NotifyInstallDefaultPackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->progressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

.field final synthetic val$percentComplete:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iput p2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->val$percentComplete:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->val$percentComplete:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->val$percentComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->this$1:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    iget-object v0, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;->this$0:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    iget-object v1, v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPercent:Landroid/widget/TextView;

    iget v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener$1;->val$percentComplete:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_3a

    const/4 v0, -0x1

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    return-void

    .line 188
    :cond_3a
    const/high16 v0, -0x100

    goto :goto_36
.end method
