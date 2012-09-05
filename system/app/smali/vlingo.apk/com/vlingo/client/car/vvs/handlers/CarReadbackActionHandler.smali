.class public Lcom/vlingo/client/car/vvs/handlers/CarReadbackActionHandler;
.super Ljava/lang/Object;
.source "CarReadbackActionHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarReadbackActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 6
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 31
    const-string v2, "Type"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, type:Ljava/lang/String;
    const-string v2, "schedule"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 34
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/handlers/CarReadbackActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/car/vvs/handlers/CarReadbackActionHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2, v1, v3}, Lcom/vlingo/client/samsung/ScheduleUtil;->handleRequestFutureSchedule(Landroid/content/Context;ILcom/vlingo/client/car/CarActivityDelegate;)V

    .line 38
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method
