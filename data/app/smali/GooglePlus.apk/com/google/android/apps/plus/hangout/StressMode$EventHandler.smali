.class Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "StressMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/StressMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/StressMode;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/StressMode;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #calls: Lcom/google/android/apps/plus/hangout/StressMode;->cancelRunnables()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$200(Lcom/google/android/apps/plus/hangout/StressMode;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$300(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->meetingEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$000(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method public onMeetingExited(Z)V
    .registers 6
    .parameter "clientInitiated"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingExited(Z)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #calls: Lcom/google/android/apps/plus/hangout/StressMode;->cancelRunnables()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$200(Lcom/google/android/apps/plus/hangout/StressMode;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$300(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 5

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMeetingMediaStarted()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->exitMeetingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$400(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method

.method public onSignedIn(Ljava/lang/String;)V
    .registers 6
    .parameter "userJid"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedIn(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->meetingEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$000(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method

.method public onSignedOut()V
    .registers 5

    .prologue
    .line 31
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSignedOut()V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #calls: Lcom/google/android/apps/plus/hangout/StressMode;->cancelRunnables()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$200(Lcom/google/android/apps/plus/hangout/StressMode;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$300(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void
.end method

.method public onSigninTimeOutError()V
    .registers 5

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onSigninTimeOutError()V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$100(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->launchGreenRoomRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$300(Lcom/google/android/apps/plus/hangout/StressMode;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    return-void
.end method
