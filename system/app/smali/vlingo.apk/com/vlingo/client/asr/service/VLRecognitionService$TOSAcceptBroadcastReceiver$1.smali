.class Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver$1;->this$1:Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    #calls: Lcom/vlingo/client/asr/service/VLRecognitionService;->startRecognition()V
    invoke-static {v0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->access$700(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    .line 353
    return-void
.end method
