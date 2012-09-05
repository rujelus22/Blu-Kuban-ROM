.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$2;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$2;->this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 575
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$2;->this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    iget-object v1, v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 576
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$2;->this$1:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->access$1700(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 578
    return-void
.end method
