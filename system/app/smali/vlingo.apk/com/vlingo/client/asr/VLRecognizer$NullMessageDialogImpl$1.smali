.class Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;

    iput-object p2, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 318
    const-string v0, "/res/text/cantConnect.xml"

    iget-object v1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 319
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/vlingo/client/asr/VLRecognizerListener;->onError(I)V

    .line 324
    :cond_16
    :goto_16
    return-void

    .line 321
    :cond_17
    const-string v0, "/res/text/phoneInUse.xml"

    iget-object v1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 322
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/vlingo/client/asr/VLRecognizerListener;->onError(I)V

    goto :goto_16
.end method
