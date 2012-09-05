.class Lcom/vlingo/client/car/CarActivity$6;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;

.field final synthetic val$mc:Lcom/vlingo/client/safereader/MessageContext;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$6;->this$0:Lcom/vlingo/client/car/CarActivity;

    iput-object p2, p0, Lcom/vlingo/client/car/CarActivity$6;->val$mc:Lcom/vlingo/client/safereader/MessageContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$6;->this$0:Lcom/vlingo/client/car/CarActivity;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$6;->val$mc:Lcom/vlingo/client/safereader/MessageContext;

    invoke-static {v0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderController;->startSafeReaderMessageViewTask(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/safereader/MessageContext;)V

    .line 1645
    return-void
.end method
