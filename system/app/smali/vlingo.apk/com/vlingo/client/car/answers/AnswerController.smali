.class public Lcom/vlingo/client/car/answers/AnswerController;
.super Ljava/lang/Object;
.source "AnswerController.java"

# interfaces
.implements Lcom/vlingo/client/car/TaskController;


# instance fields
.field private delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vlingo/client/car/answers/AnswerController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 30
    return-void
.end method


# virtual methods
.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 40
    const-string v0, "answers"

    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string v0, "Answer"

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeAnswer:Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public startAnswerView(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "question"
    .parameter "answer"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/vlingo/client/car/answers/AnswerController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/answers/AnswerView;

    .line 34
    .local v0, view:Lcom/vlingo/client/car/answers/AnswerView;
    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/car/answers/AnswerView;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/vlingo/client/car/answers/AnswerView;->setupAutoClose()V

    .line 36
    iget-object v1, p0, Lcom/vlingo/client/car/answers/AnswerController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 37
    return-void
.end method
