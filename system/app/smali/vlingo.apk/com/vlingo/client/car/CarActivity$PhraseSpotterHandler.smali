.class Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhraseSpotterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhraseSpotted()Z
    .registers 2

    .prologue
    .line 1217
    new-instance v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;-><init>(Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1230
    const/4 v0, 0x1

    return v0
.end method

.method public phraseSpottingStarted()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1236
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1700(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarHeaderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarHeaderView;->setPhraseSpotting(Z)V

    .line 1237
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1800(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarRecoButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarRecoButton;->setWakeUpEnabled(Z)V

    .line 1238
    return-void
.end method

.method public phraseSpottingStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1243
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1700(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarHeaderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarHeaderView;->setPhraseSpotting(Z)V

    .line 1244
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1800(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarRecoButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarRecoButton;->setWakeUpEnabled(Z)V

    .line 1245
    return-void
.end method

.method public setStartPhraseDelay(I)V
    .registers 3
    .parameter "delay"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->startPhraseSpotDelay:I
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$700(Lcom/vlingo/client/car/CarActivity;)I

    move-result v0

    if-le p1, v0, :cond_19

    .line 1154
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #setter for: Lcom/vlingo/client/car/CarActivity;->startPhraseSpotDelay:I
    invoke-static {v0, p1}, Lcom/vlingo/client/car/CarActivity;->access$702(Lcom/vlingo/client/car/CarActivity;I)I

    .line 1156
    :cond_19
    return-void
.end method

.method public startPhraseSpotting()V
    .registers 2

    .prologue
    .line 1169
    new-instance v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;-><init>(Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1204
    return-void
.end method

.method public startPhraseSpottingDelayed()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1161
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v2}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->startPhraseSpotDelay:I
    invoke-static {v2}, Lcom/vlingo/client/car/CarActivity;->access$700(Lcom/vlingo/client/car/CarActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1163
    return-void
.end method

.method public stopPhraseSpotting()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1209
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1210
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->setListeningRequested(Z)V

    .line 1211
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->stopDoubleTapMonitor()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1400(Lcom/vlingo/client/car/CarActivity;)V

    .line 1212
    return-void
.end method
