.class public Lcom/lifevibes/trimapp/Trim$TrimmingListener;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrimmingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method public constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(I)V
    .registers 9
    .parameter "task"

    .prologue
    const/4 v6, 0x1

    .line 980
    const-string v4, "TrimApp"

    const-string v5, "**** Trimming onCompletion() in."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #setter for: Lcom/lifevibes/trimapp/Trim;->mTrimmingDone:Z
    invoke-static {v4, v6}, Lcom/lifevibes/trimapp/Trim;->access$1902(Lcom/lifevibes/trimapp/Trim;Z)Z

    .line 982
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #setter for: Lcom/lifevibes/trimapp/Trim;->mTrimmingSuccess:Z
    invoke-static {v4, v6}, Lcom/lifevibes/trimapp/Trim;->access$2002(Lcom/lifevibes/trimapp/Trim;Z)Z

    .line 984
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mOnTrimmingFile:Ljava/lang/String;
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$2100(Lcom/lifevibes/trimapp/Trim;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 985
    .local v3, trimmedFile:Ljava/io/File;
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mOverwriteFilename:Z
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$2200(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 986
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v5}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 987
    .local v2, targetFile:Ljava/io/File;
    invoke-static {v3, v2}, Lcom/lifevibes/trimapp/util/Support;->renameFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 988
    .local v1, result:Ljava/io/File;
    if-eqz v1, :cond_91

    .line 989
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-static {v4, v6}, Lcom/lifevibes/trimapp/Trim;->access$212(Lcom/lifevibes/trimapp/Trim;I)I

    .line 990
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v5}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 991
    new-instance v3, Ljava/io/File;

    .end local v3           #trimmedFile:Ljava/io/File;
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v5}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    .restart local v3       #trimmedFile:Ljava/io/File;
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v5}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v5}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 993
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-static {v4, v3}, Lcom/lifevibes/trimapp/util/Support;->registerFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    .line 1001
    .end local v1           #result:Ljava/io/File;
    .end local v2           #targetFile:Ljava/io/File;
    :cond_91
    :goto_91
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1002
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v4, v0}, Lcom/lifevibes/trimapp/Trim;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->releaseTrimming()V
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$2300(Lcom/lifevibes/trimapp/Trim;)V

    .line 1005
    return-void

    .line 997
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a7
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-static {v4, v6}, Lcom/lifevibes/trimapp/Trim;->access$212(Lcom/lifevibes/trimapp/Trim;I)I

    .line 998
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v4}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v5}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 999
    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-static {v4, v3}, Lcom/lifevibes/trimapp/util/Support;->registerFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_91
.end method

.method public onError(II)V
    .registers 7
    .parameter "task"
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 1019
    const-string v0, "TrimApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trimming onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1800(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1030
    :goto_21
    return-void

    .line 1024
    :cond_22
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->stopTrimming(I)V
    invoke-static {v0, v3}, Lcom/lifevibes/trimapp/Trim;->access$2400(Lcom/lifevibes/trimapp/Trim;I)V

    .line 1025
    const/16 v0, 0x88

    if-ne p2, v0, :cond_34

    .line 1026
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f070015

    invoke-virtual {v0, v1, v3}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    goto :goto_21

    .line 1028
    :cond_34
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v3}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    goto :goto_21
.end method

.method public onProgress(II)V
    .registers 5
    .parameter "task"
    .parameter "progress"

    .prologue
    .line 968
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIsActivityFinishing:Z
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1800(Lcom/lifevibes/trimapp/Trim;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 976
    :goto_8
    return-void

    .line 972
    :cond_9
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 973
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 974
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 975
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$TrimmingListener;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1600(Lcom/lifevibes/trimapp/Trim;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method
