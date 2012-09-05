.class Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;
.super Landroid/os/Handler;
.source "FileManagerProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$0(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    .line 108
    .local v4, progress:I
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$0(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 109
    .local v1, maxValue:I
    int-to-double v6, v4

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 111
    .local v2, percent:D
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressMessage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$1(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$2(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCountFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$3(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, format:Ljava/lang/String;
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressCount:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$4(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v11

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$5(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_90

    const-string v6, ""

    :goto_5e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$6(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v5, tmp:Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$7(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void

    .line 114
    .end local v5           #tmp:Landroid/text/SpannableString;
    :cond_90
    iget-object v6, p0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog$2;->this$0:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    #getter for: Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->mUnit:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->access$5(Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_5e
.end method
