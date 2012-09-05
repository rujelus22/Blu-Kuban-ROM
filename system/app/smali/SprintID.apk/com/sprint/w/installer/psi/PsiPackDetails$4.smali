.class Lcom/sprint/w/installer/psi/PsiPackDetails$4;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/16 v2, 0x8

    .line 412
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/w/installer/DownloadService;->cancelDownload(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-boolean v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstalled:Z

    if-eqz v0, :cond_39

    const v0, 0x7f060035

    :goto_2a
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void

    .line 415
    :cond_39
    const v0, 0x7f060003

    goto :goto_2a
.end method
