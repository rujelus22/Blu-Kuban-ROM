.class Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;
.source "MiniModeAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllRequested()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method public closeRequestedFrom(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_3

    .line 118
    :cond_2
    :goto_2
    return-void

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public createSnapshot()Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 131
    .local v0, tmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public focusChanged(Landroid/content/ComponentName;Z)V
    .registers 9
    .parameter "name"
    .parameter "hasFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 99
    .local v0, myCN:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v4

    if-eqz p2, :cond_1f

    move v1, v2

    :goto_16
    const/4 v5, -0x1

    invoke-virtual {v4, v2, v1, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void

    .line 99
    :cond_1f
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public movementRequested(Landroid/content/ComponentName;II)V
    .registers 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;->this$0:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    #getter for: Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method
