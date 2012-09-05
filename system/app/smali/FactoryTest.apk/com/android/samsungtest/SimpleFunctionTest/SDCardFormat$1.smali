.class Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;
.super Ljava/lang/Thread;
.source "SDCardFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->runSDFormatThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

.field final synthetic val$interStoragePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    iput-object p2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 208
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 209
    .local v1, mountService:Landroid/os/storage/IMountService;
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 212
    .local v2, service:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_35

    .line 213
    :try_start_12
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH = format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_35
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->resultHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->passMsg:Landroid/os/Message;
    invoke-static {v4}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Message;

    move-result-object v4

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$300()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH = mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6e} :catch_6f

    .line 225
    :goto_6e
    return-void

    .line 220
    :catch_6f
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->resultHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->failMsg:Landroid/os/Message;
    invoke-static {v4}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Message;

    move-result-object v4

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$300()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6e
.end method
