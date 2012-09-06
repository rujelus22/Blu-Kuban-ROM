.class Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;
.super Landroid/os/Handler;
.source "CallConnectingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CallConnectingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Lcom/google/android/apps/googlevoice/CallConnectingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;-><init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 507
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_32

    .line 527
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 529
    :goto_8
    return-void

    .line 509
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$100(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    const-string v1, "CallConnectionActivity: auth token had been invalidated"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticationTokenWasInvalidated:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$1102(Lcom/google/android/apps/googlevoice/CallConnectingActivity;Z)Z

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->authenticateIfNecessaryAndPossible()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$1200(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    goto :goto_8

    .line 515
    :sswitch_20
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCallPrepared()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$1300(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    goto :goto_8

    .line 519
    :sswitch_26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCallPreparationFailure()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$1400(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    goto :goto_8

    .line 523
    :sswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #calls: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCallPreparationAuthenticationFailure()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$1500(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V

    goto :goto_8

    .line 507
    :sswitch_data_32
    .sparse-switch
        0x3e9 -> :sswitch_9
        0x7d1 -> :sswitch_20
        0x7d2 -> :sswitch_26
        0x7d3 -> :sswitch_2c
    .end sparse-switch
.end method
