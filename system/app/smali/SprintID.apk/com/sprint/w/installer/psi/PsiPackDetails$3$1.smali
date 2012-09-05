.class Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails$3;->progressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

.field final synthetic val$percentComplete:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails$3;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iput p2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->val$percentComplete:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->val$percentComplete:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 367
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->val$percentComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->this$1:Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    iget v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$3$1;->val$percentComplete:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_3a

    const/4 v0, -0x1

    :goto_36
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    return-void

    .line 368
    :cond_3a
    const/high16 v0, -0x100

    goto :goto_36
.end method
