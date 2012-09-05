.class Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VLRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOSAcceptBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->lastTOSReceiver:Landroid/content/BroadcastReceiver;

    if-eq v0, p0, :cond_c

    .line 343
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    :cond_b
    :goto_b
    return-void

    .line 346
    :cond_c
    sget-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_ACCEPTED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 349
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$1;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 355
    :cond_2a
    sget-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_DECLINED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 358
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$2;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method
