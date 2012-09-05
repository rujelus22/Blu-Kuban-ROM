.class public interface abstract Lcom/vlingo/client/car/CarActivityDelegate;
.super Ljava/lang/Object;
.source "CarActivityDelegate.java"


# virtual methods
.method public abstract executeActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCurrentTaskController()Lcom/vlingo/client/car/TaskController;
.end method

.method public abstract getCurrentTaskItem()Lcom/vlingo/client/car/CarScrollableItem;
.end method

.method public abstract getLastResults()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
.end method

.method public abstract getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;
.end method

.method public abstract getTaskItems()[Lcom/vlingo/client/car/CarScrollableItem;
.end method

.method public abstract handleUnsupportedActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V
.end method

.method public abstract isRecoActive()Z
.end method

.method public abstract overloadBottomContainerWithView(Landroid/view/View;)V
.end method

.method public abstract playErrorTone()V
.end method

.method public abstract pushTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/CarScrollableItem;)V
.end method

.method public abstract removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V
.end method

.method public abstract scrollBack()V
.end method

.method public abstract scrollForward()V
.end method

.method public abstract scrollHome()V
.end method

.method public abstract speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end method

.method public abstract speak([Lcom/vlingo/client/core/tts/TTSDemand;)V
.end method

.method public abstract startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;)V
.end method

.method public abstract startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V
.end method

.method public abstract startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
.end method

.method public abstract startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
.end method

.method public abstract startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
.end method

.method public abstract startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
.end method

.method public abstract taskCleanup()V
.end method

.method public abstract taskFinished()V
.end method
