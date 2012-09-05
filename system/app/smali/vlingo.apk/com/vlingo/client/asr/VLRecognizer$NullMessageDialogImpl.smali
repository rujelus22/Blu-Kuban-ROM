.class Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/VLRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullMessageDialogImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/VLRecognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

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
    .line 315
    const/4 v0, 0x4

    if-ne p3, v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;-><init>(Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_11
    return-void
.end method

.method public isDisplayed()Z
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method
