.class Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;
.super Landroid/os/Handler;
.source "MediaYamahaPostProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yamaha/android/media/MediaYamahaPostProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaYamahaPostProcess:Lcom/yamaha/android/media/MediaYamahaPostProcess;

.field final synthetic this$0:Lcom/yamaha/android/media/MediaYamahaPostProcess;


# direct methods
.method public constructor <init>(Lcom/yamaha/android/media/MediaYamahaPostProcess;Lcom/yamaha/android/media/MediaYamahaPostProcess;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "mypp"
    .parameter "looper"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->this$0:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    .line 136
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    iput-object p2, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->mMediaYamahaPostProcess:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    .line 138
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->mMediaYamahaPostProcess:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    #getter for: Lcom/yamaha/android/media/MediaYamahaPostProcess;->mNativeContext:I
    invoke-static {v0}, Lcom/yamaha/android/media/MediaYamahaPostProcess;->access$000(Lcom/yamaha/android/media/MediaYamahaPostProcess;)I

    move-result v0

    if-nez v0, :cond_10

    .line 144
    const-string v0, "MediaYamahaPP"

    const-string v1, "MediaYamahaPostProcess went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_f
    :goto_f
    return-void

    .line 148
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_78

    .line 168
    const-string v0, "MediaYamahaPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 150
    :sswitch_30
    const-string v0, "MediaYamahaPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_CHANGE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->this$0:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    #getter for: Lcom/yamaha/android/media/MediaYamahaPostProcess;->mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;
    invoke-static {v0}, Lcom/yamaha/android/media/MediaYamahaPostProcess;->access$100(Lcom/yamaha/android/media/MediaYamahaPostProcess;)Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 152
    iget-object v0, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->this$0:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    #getter for: Lcom/yamaha/android/media/MediaYamahaPostProcess;->mOnChangeListener:Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;
    invoke-static {v0}, Lcom/yamaha/android/media/MediaYamahaPostProcess;->access$100(Lcom/yamaha/android/media/MediaYamahaPostProcess;)Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yamaha/android/media/MediaYamahaPostProcess$EventHandler;->mMediaYamahaPostProcess:Lcom/yamaha/android/media/MediaYamahaPostProcess;

    invoke-interface {v0, v1}, Lcom/yamaha/android/media/MediaYamahaPostProcess$OnChangeListener;->onChange(Lcom/yamaha/android/media/MediaYamahaPostProcess;)V

    goto :goto_f

    .line 164
    :sswitch_70
    const-string v0, "MediaYamahaPP"

    const-string v1, "MEDIA_NOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 148
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_70
        0xa -> :sswitch_30
    .end sparse-switch
.end method
