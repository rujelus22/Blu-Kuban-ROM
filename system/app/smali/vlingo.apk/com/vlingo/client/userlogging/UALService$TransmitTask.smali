.class Lcom/vlingo/client/userlogging/UALService$TransmitTask;
.super Ljava/util/TimerTask;
.source "UALService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/userlogging/UALService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransmitTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/userlogging/UALService;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/userlogging/UALService;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vlingo/client/userlogging/UALService$TransmitTask;->this$0:Lcom/vlingo/client/userlogging/UALService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/userlogging/UALService;Lcom/vlingo/client/userlogging/UALService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/vlingo/client/userlogging/UALService$TransmitTask;-><init>(Lcom/vlingo/client/userlogging/UALService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$TransmitTask;->this$0:Lcom/vlingo/client/userlogging/UALService;

    #getter for: Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/vlingo/client/userlogging/UALService;->access$100(Lcom/vlingo/client/userlogging/UALService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 76
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$TransmitTask;->this$0:Lcom/vlingo/client/userlogging/UALService;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/userlogging/UALService;->transmitTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/vlingo/client/userlogging/UALService;->access$102(Lcom/vlingo/client/userlogging/UALService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/userlogging/UALService$TransmitTask;->this$0:Lcom/vlingo/client/userlogging/UALService;

    #calls: Lcom/vlingo/client/userlogging/UALService;->transmitData()V
    invoke-static {v0}, Lcom/vlingo/client/userlogging/UALService;->access$200(Lcom/vlingo/client/userlogging/UALService;)V

    .line 78
    return-void
.end method
