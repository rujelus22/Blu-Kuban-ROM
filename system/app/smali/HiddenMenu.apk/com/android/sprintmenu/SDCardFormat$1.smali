.class Lcom/android/sprintmenu/SDCardFormat$1;
.super Ljava/lang/Thread;
.source "SDCardFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/SDCardFormat;->runSDFormatThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/SDCardFormat;

.field final synthetic val$interStoragePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/SDCardFormat;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    iput-object p2, p0, Lcom/android/sprintmenu/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$000(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/storage/IMountService;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 201
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$000(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/storage/IMountService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PATH = format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_31
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$000(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/storage/IMountService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->resultHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$400(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->passMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/sprintmenu/SDCardFormat;->access$200(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/sprintmenu/SDCardFormat;->access$300()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PATH = mount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat$1;->val$interStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    .line 214
    :goto_70
    return-void

    .line 208
    :catch_71
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->resultHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->access$400(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat$1;->this$0:Lcom/android/sprintmenu/SDCardFormat;

    #getter for: Lcom/android/sprintmenu/SDCardFormat;->failMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/sprintmenu/SDCardFormat;->access$500(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/sprintmenu/SDCardFormat;->access$300()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_70
.end method
