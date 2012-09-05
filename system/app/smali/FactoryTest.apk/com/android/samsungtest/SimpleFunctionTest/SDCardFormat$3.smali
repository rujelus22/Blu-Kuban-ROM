.class Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;
.super Ljava/lang/Object;
.source "SDCardFormat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->StartThreadDeleteAllFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->deleteDirectory(Ljava/io/File;)Z

    .line 385
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->isFileDeleteComplete()Z
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$800(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 387
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recursive deletion completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->resultHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->passMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    :goto_35
    return-void

    .line 392
    :cond_36
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->resultHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->failMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$300()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recursive deletion failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
