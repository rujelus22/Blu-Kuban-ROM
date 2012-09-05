.class Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    iput-object p2, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    iget-object v1, v0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    monitor-enter v1

    .line 260
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$500(Lcom/vlingo/client/asr/VLRecognizer;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 261
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;->this$1:Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    iget-object v0, v0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/vlingo/client/asr/VLRecognizerListener;->onStatusMessage(Ljava/lang/String;)V

    .line 263
    :cond_1c
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method
