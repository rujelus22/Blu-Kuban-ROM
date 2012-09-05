.class Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->onPhraseSpotted()Z
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
    .line 1217
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1219
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 1220
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->disableOrientationChange()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1600(Lcom/vlingo/client/car/CarActivity;)V

    .line 1221
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1222
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->setListeningRequested(Z)V

    .line 1223
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "wake-up-word-spotted"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity;->playWordSpottedTone()V

    .line 1226
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler$2;->this$1:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v1

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1228
    return-void
.end method
