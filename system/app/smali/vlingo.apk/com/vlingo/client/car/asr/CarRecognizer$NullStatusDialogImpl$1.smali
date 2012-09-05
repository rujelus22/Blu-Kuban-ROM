.class Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iput-object p2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iget-object v1, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    monitor-enter v1

    .line 276
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$500(Lcom/vlingo/client/car/asr/CarRecognizer;)I

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 277
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onStatusMessage(Ljava/lang/String;)V

    .line 279
    :cond_26
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0
.end method
