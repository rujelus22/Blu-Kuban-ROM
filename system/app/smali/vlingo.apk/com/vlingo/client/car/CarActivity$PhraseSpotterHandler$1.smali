.class Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpotting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1173
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v1

    if-nez v1, :cond_a0

    invoke-static {}, Lcom/vlingo/client/car/iux/CarIUXManager;->requiresIUX()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1174
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$900(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/asr/CarRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/car/asr/CarRecognizer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1175
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$1000(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/scroller/ScrollableContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1178
    .local v0, item:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->isRecognitionSupported()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1179
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$1100(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$RecoState;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    if-ne v1, v2, :cond_a0

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    if-nez v1, :cond_a0

    .line 1180
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v1, v3}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1181
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->setListeningRequested(Z)V

    .line 1184
    invoke-static {}, Lcom/vlingo/client/car/CarActivity;->access$1200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$1300(Lcom/vlingo/client/car/CarActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 1186
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->stopDoubleTapMonitor()V
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$1400(Lcom/vlingo/client/car/CarActivity;)V

    .line 1188
    :cond_8f
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #setter for: Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1, v4}, Lcom/vlingo/client/car/CarActivity;->access$1302(Lcom/vlingo/client/car/CarActivity;Landroid/hardware/motion/MRListener;)Landroid/hardware/motion/MRListener;

    .line 1189
    invoke-static {v4}, Lcom/vlingo/client/car/CarActivity;->access$1202(Landroid/hardware/motion/MotionRecognitionManager;)Landroid/hardware/motion/MotionRecognitionManager;

    .line 1190
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$1;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->startDoubleTapMonitor()V
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$1500(Lcom/vlingo/client/car/CarActivity;)V

    .line 1202
    .end local v0           #item:Lcom/vlingo/client/car/CarScrollableItem;
    :cond_a0
    return-void
.end method
