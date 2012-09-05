.class public Lcom/vlingo/client/car/checkschedule/CheckScheduleController;
.super Ljava/lang/Object;
.source "CheckScheduleController.java"

# interfaces
.implements Lcom/vlingo/client/car/TaskController;
.implements Lcom/vlingo/client/car/asr/RecoResponder;


# instance fields
.field protected final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 33
    return-void
.end method


# virtual methods
.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 78
    const-string v0, "Schedule"

    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 74
    const-string v0, "vp_car_main_cal"

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090363

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public startCheckScheduleFlow()V
    .registers 5

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, mainScreen:Lcom/vlingo/client/car/checkschedule/CheckScheduleView;
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #mainScreen:Lcom/vlingo/client/car/checkschedule/CheckScheduleView;
    check-cast v0, Lcom/vlingo/client/car/checkschedule/CheckScheduleView;

    .line 39
    .restart local v0       #mainScreen:Lcom/vlingo/client/car/checkschedule/CheckScheduleView;
    iget-object v1, p0, Lcom/vlingo/client/car/checkschedule/CheckScheduleController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 40
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-cal-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 41
    return-void
.end method
