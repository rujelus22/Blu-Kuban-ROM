.class Lcom/google/android/apps/unveil/nonstop/ProcessingThread$1;
.super Landroid/os/Handler;
.source "ProcessingThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/ProcessingThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/ProcessingThread;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread$1;->this$0:Lcom/google/android/apps/unveil/nonstop/ProcessingThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 44
    :goto_c
    return-void

    .line 42
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    .line 43
    .local v0, frame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread$1;->this$0:Lcom/google/android/apps/unveil/nonstop/ProcessingThread;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    goto :goto_c
.end method
