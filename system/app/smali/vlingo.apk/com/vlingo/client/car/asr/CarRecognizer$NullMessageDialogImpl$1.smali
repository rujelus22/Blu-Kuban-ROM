.class Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;

    iput-object p2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 339
    const-string v0, "/res/text/cantConnect.xml"

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 340
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onError(I)V

    .line 345
    :cond_16
    :goto_16
    return-void

    .line 342
    :cond_17
    const-string v0, "/res/text/phoneInUse.xml"

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 343
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;->this$1:Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onError(I)V

    goto :goto_16
.end method
