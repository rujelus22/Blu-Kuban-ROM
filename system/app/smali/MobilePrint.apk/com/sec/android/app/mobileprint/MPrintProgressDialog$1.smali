.class Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;
.super Landroid/os/Handler;
.source "MPrintProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$000(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 102
    .local v3, progress:I
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$000(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 103
    .local v0, max:I
    int-to-double v4, v3

    int-to-double v6, v0

    div-double v1, v4, v6

    .line 105
    .local v1, percent:D
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$400(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$100(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mCurrentPage:I
    invoke-static {v8}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$200(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mTotalPage:I
    invoke-static {v8}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$300(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$600(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v5}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->access$500(Lcom/sec/android/app/mobileprint/MPrintProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
