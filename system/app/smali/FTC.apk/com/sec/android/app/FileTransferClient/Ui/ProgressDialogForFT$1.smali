.class Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;
.super Landroid/os/Handler;
.source "ProgressDialogForFT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->access$000(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 89
    .local v3, progress:I
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->access$000(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 90
    .local v0, max:I
    int-to-double v5, v3

    int-to-double v7, v0

    div-double v1, v5, v7

    .line 91
    .local v1, percent:D
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->access$100(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    .local v4, tmp:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 93
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;

    #getter for: Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;->access$200(Lcom/sec/android/app/FileTransferClient/Ui/ProgressDialogForFT;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
