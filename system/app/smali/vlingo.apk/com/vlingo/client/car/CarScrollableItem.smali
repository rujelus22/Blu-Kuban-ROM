.class public abstract Lcom/vlingo/client/car/CarScrollableItem;
.super Landroid/widget/RelativeLayout;
.source "CarScrollableItem.java"

# interfaces
.implements Lcom/vlingo/client/scroller/ScrollableItem;
.implements Lcom/vlingo/client/car/asr/RecoResponder;


# instance fields
.field protected autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field protected autoListenEnabled:Z

.field protected autoListenShouldTrigger:Z

.field protected container:Lcom/vlingo/client/scroller/ScrollableContainer;

.field protected controller:Lcom/vlingo/client/car/TaskController;

.field protected delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field protected overloadingBottomContainer:Z

.field protected shown:Z

.field protected shownForTheFirstTime:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarScrollableItem;->shown:Z

    .line 32
    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shownForTheFirstTime:Z

    .line 34
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarScrollableItem;->overloadingBottomContainer:Z

    .line 35
    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->autoListenEnabled:Z

    .line 36
    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->autoListenShouldTrigger:Z

    .line 41
    return-void
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public displayTryAgain()Z
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public getAutoListenDemand()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method public getFieldID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->controller:Lcom/vlingo/client/car/TaskController;

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->controller:Lcom/vlingo/client/car/TaskController;

    invoke-interface {v0, p0}, Lcom/vlingo/client/car/TaskController;->getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHintDelay()I
    .registers 2

    .prologue
    .line 191
    const/16 v0, 0x5dc

    return v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecoButtonDisplayLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarScrollableItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09041e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, tapAndSpeak:Ljava/lang/String;
    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 216
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarScrollableItem;->getFieldID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScrollableContainer()Lcom/vlingo/client/scroller/ScrollableContainer;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->container:Lcom/vlingo/client/scroller/ScrollableContainer;

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskController()Lcom/vlingo/client/car/TaskController;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->controller:Lcom/vlingo/client/car/TaskController;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreBackKey()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoListenOnErrorSupported()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public isOverloadingBottomContainer()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->overloadingBottomContainer:Z

    return v0
.end method

.method public isRecognitionSupported()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public isShown()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shown:Z

    return v0
.end method

.method public isTalkButtonEnabled()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 69
    return-void
.end method

.method public onDelegateAttached()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shown:Z

    .line 163
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onRemoved()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shown:Z

    .line 173
    iput-object v1, p0, Lcom/vlingo/client/car/CarScrollableItem;->container:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 174
    iput-object v1, p0, Lcom/vlingo/client/car/CarScrollableItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 175
    iput-object v1, p0, Lcom/vlingo/client/car/CarScrollableItem;->controller:Lcom/vlingo/client/car/TaskController;

    .line 176
    return-void
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shown:Z

    .line 150
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shownForTheFirstTime:Z

    if-eqz v0, :cond_a

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->shownForTheFirstTime:Z

    .line 157
    :cond_a
    return-void
.end method

.method public removeOnTaskStart()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoListenShouldTrigger(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/vlingo/client/car/CarScrollableItem;->autoListenShouldTrigger:Z

    .line 105
    return-void
.end method

.method public setCarActivityDelegate(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vlingo/client/car/CarScrollableItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 65
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 66
    return-void
.end method

.method public setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V
    .registers 2
    .parameter "container"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vlingo/client/car/CarScrollableItem;->container:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 140
    return-void
.end method

.method public setTaskController(Lcom/vlingo/client/car/TaskController;)V
    .registers 2
    .parameter "controller"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vlingo/client/car/CarScrollableItem;->controller:Lcom/vlingo/client/car/TaskController;

    .line 45
    return-void
.end method

.method public shouldAutoListenTrigger()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->autoListenShouldTrigger:Z

    return v0
.end method

.method public supportsAutoListen()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarScrollableItem;->autoListenEnabled:Z

    return v0
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method
