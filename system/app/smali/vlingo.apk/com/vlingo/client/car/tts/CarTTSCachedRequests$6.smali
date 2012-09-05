.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->handleTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V
    .registers 2
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 455
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 456
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z
    invoke-static {v2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$6;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->running:Z
    invoke-static {v2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 458
    return-void
.end method
