.class Lcom/vlingo/client/car/CarActivity$4;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->startDoubleTapMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$4;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .parameter "motionEvent"

    .prologue
    .line 1274
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 1285
    :cond_7
    :goto_7
    return-void

    .line 1276
    :pswitch_8
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$4;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->isCurrentApp()Z
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$1900(Lcom/vlingo/client/car/CarActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1277
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$4;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$900(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/asr/CarRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->getState()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 1278
    const-string v0, "VLG_CarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop TWO_TAPPING because state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity$4;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;
    invoke-static {v2}, Lcom/vlingo/client/car/CarActivity;->access$900(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/asr/CarRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1280
    :cond_3f
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$4;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->onRecognitionStartRequested()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$2000(Lcom/vlingo/client/car/CarActivity;)V

    goto :goto_7

    .line 1274
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
