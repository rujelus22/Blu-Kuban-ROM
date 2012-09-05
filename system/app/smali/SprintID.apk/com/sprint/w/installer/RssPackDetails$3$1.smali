.class Lcom/sprint/w/installer/RssPackDetails$3$1;
.super Ljava/lang/Object;
.source "RssPackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssPackDetails$3;->progressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/RssPackDetails$3;

.field final synthetic val$percentComplete:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackDetails$3;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iput p2, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->val$percentComplete:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->val$percentComplete:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 219
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->val$percentComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget v1, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->val$percentComplete:I

    #calls: Lcom/sprint/w/installer/RssPackDetails;->adjustDownloadPercentageColor(I)V
    invoke-static {v0, v1}, Lcom/sprint/w/installer/RssPackDetails;->access$100(Lcom/sprint/w/installer/RssPackDetails;I)V

    .line 221
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v1, v1, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/RssPackDetails;->mCancelDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails$3$1;->this$1:Lcom/sprint/w/installer/RssPackDetails$3;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails$3;->this$0:Lcom/sprint/w/installer/RssPackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    const v1, 0x7f0600aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 223
    return-void
.end method
