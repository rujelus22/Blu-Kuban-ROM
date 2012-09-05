.class Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails$3;->downloadFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails$3;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 379
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-boolean v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstalled:Z

    if-eqz v0, :cond_42

    const v0, 0x7f060035

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 381
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$2;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    return-void

    .line 380
    :cond_42
    const v0, 0x7f060003

    goto :goto_1d
.end method
