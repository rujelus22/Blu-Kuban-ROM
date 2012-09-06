.class Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;
.super Landroid/os/Handler;
.source "GvVvmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;-><init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Handling message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_84

    .line 117
    :goto_29
    return-void

    .line 96
    :sswitch_2a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$100(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSignedIn(Lcom/google/android/apps/googlevoice/VoicePreferences;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$200(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x3f4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto :goto_29

    .line 100
    :cond_4d
    const-string v0, "Stop syncing voicemails because there is no account signed in."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->handler:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$300(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->sendEmptyMessage(I)Z

    goto :goto_29

    .line 106
    :sswitch_5e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$500(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->startSyncRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$400(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 110
    :sswitch_6e
    const-string v0, "The credential for the signed account may have been changed."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_29

    .line 114
    :sswitch_74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$500(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->this$0:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    #getter for: Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->stopSyncRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->access$600(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 92
    :sswitch_data_84
    .sparse-switch
        0x3e9 -> :sswitch_2a
        0x3ea -> :sswitch_74
        0x3f2 -> :sswitch_2a
        0x3f3 -> :sswitch_5e
        0x3f4 -> :sswitch_6e
    .end sparse-switch
.end method
