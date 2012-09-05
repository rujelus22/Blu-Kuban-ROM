.class Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method private constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1400(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare;->getTrimmingStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 1081
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f07001a

    #calls: Lcom/lifevibes/trimapp/Trim;->stopTrimming(I)V
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$2400(Lcom/lifevibes/trimapp/Trim;I)V

    .line 1083
    :cond_15
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 12
    .parameter "dialog"

    .prologue
    const/4 v9, 0x1

    .line 1089
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmingSuccess:Z
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$2000(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1090
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v4, 0x7f070017

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v7}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v8}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v8

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lifevibes/trimapp/Trim;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Lcom/lifevibes/trimapp/Trim;->showToast(Ljava/lang/CharSequence;I)V

    .line 1091
    sget v2, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const v3, -0x7fffffff

    if-eq v2, v3, :cond_38

    sget v2, Lcom/lifevibes/trimapp/Trim;->CURRENT_MODEL_TYPE:I

    const v3, -0x7ffffffe

    if-ne v2, v3, :cond_50

    .line 1094
    :cond_38
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1095
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1096
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1111
    .end local v1           #msg:Landroid/os/Message;
    :cond_4f
    :goto_4f
    return-void

    .line 1098
    :cond_50
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$500(Lcom/lifevibes/trimapp/Trim;)V

    goto :goto_4f

    .line 1101
    :cond_56
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mOnTrimmingFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$2100(Lcom/lifevibes/trimapp/Trim;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 1102
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mOnTrimmingFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$2100(Lcom/lifevibes/trimapp/Trim;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1107
    .end local v0           #file:Ljava/io/File;
    :cond_72
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIsConfigChanged:Z
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$2700(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$1800(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1108
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ProgressDialogListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v3}, Lcom/lifevibes/trimapp/Trim;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lifevibes/trimapp/Trim;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_4f
.end method
