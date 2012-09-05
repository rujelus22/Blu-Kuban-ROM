.class Lcom/vlingo/client/car/CarActivity$7;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->handleLPAction(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$7;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$7;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->TASK_CANCELLED:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 1808
    return-void
.end method
