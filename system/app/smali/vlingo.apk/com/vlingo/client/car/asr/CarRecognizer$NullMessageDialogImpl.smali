.class Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/asr/CarRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullMessageDialogImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/asr/CarRecognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "content"
    .parameter "errorCode"
    .parameter "type"

    .prologue
    .line 336
    const/4 v0, 0x4

    if-ne p3, v0, :cond_11

    .line 337
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl$1;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_11
    return-void
.end method

.method public isDisplayed()Z
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method
