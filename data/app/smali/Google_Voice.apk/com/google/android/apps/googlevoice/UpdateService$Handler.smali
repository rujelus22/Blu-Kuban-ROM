.class Lcom/google/android/apps/googlevoice/UpdateService$Handler;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/UpdateService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/UpdateService;Lcom/google/android/apps/googlevoice/UpdateService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;-><init>(Lcom/google/android/apps/googlevoice/UpdateService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 719
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_13

    .line 720
    const-string v0, "UpdateService.Handler.handleMessage(message=\'%s\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 722
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 748
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 750
    :goto_1b
    return-void

    .line 724
    :pswitch_1c
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_25

    .line 725
    const-string v0, "UpdateService.Handler.handleMessage(): credentials ok"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 727
    :cond_25
    const-string v0, "US: Handler message: CREDENTIALS_OK"

    #calls: Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->access$100(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateService;

    #calls: Lcom/google/android/apps/googlevoice/UpdateService;->doStart()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->access$200(Lcom/google/android/apps/googlevoice/UpdateService;)V

    goto :goto_1b

    .line 732
    :pswitch_30
    const-string v0, "UpdateService: Credentials failed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 733
    const-string v0, "US: Handler message: CREDENTIALS_FAILED"

    #calls: Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->access$100(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateService;

    #calls: Lcom/google/android/apps/googlevoice/UpdateService;->doStop()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->access$300(Lcom/google/android/apps/googlevoice/UpdateService;)V

    goto :goto_1b

    .line 738
    :pswitch_40
    const-string v0, "UpdateService: Auth token invalidated"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 739
    const-string v0, "US: Handler message: AUTH_TOKEN_INVALIDATED"

    #calls: Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->access$100(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateService;

    #calls: Lcom/google/android/apps/googlevoice/UpdateService;->doStop()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->access$300(Lcom/google/android/apps/googlevoice/UpdateService;)V

    goto :goto_1b

    .line 744
    :pswitch_50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/VoiceApplication;->updateComponentSettings(Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    goto :goto_1b

    .line 722
    :pswitch_data_5a
    .packed-switch 0x3e8
        :pswitch_1c
        :pswitch_30
        :pswitch_40
        :pswitch_50
    .end packed-switch
.end method
