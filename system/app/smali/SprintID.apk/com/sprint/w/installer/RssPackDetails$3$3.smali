.class Lcom/sprint/w/installer/RssPackDetails$3$3;
.super Ljava/lang/Object;
.source "RssPackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssPackDetails$3;->downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/RssPackDetails$3;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackDetails$3;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 248
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    const v1, 0x7f0600a9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 250
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v1, v1, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/RssPackDetails;->mCompleteInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-boolean v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mIsForeground:Z

    if-eqz v0, :cond_4a

    .line 255
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$3;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 257
    :cond_4a
    return-void
.end method
