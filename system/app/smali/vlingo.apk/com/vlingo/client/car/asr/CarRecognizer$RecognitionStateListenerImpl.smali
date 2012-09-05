.class Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/RecognitionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/asr/CarRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/asr/CarRecognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer;Lcom/vlingo/client/car/asr/CarRecognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V

    return-void
.end method


# virtual methods
.method public onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 12
    .parameter "manager"
    .parameter "state"
    .parameter "type"
    .parameter "message"
    .parameter "note"
    .parameter "recognizing"
    .parameter "recording"

    .prologue
    .line 183
    const/4 v0, -0x1

    .line 184
    .local v0, error:I
    sparse-switch p2, :sswitch_data_54

    .line 245
    :cond_4
    :goto_4
    :sswitch_4
    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    .line 246
    move v1, v0

    .line 247
    .local v1, realError:I
    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;

    invoke-direct {v3, p0, v1}, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$3;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    .end local v1           #realError:I
    :cond_16
    return-void

    .line 186
    :sswitch_17
    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
    invoke-static {v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$500(Lcom/vlingo/client/car/asr/CarRecognizer;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 189
    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$1;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 205
    :sswitch_2f
    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
    invoke-static {v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$500(Lcom/vlingo/client/car/asr/CarRecognizer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 206
    iget-object v2, p0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl$2;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 226
    :sswitch_47
    const/4 v0, 0x1

    .line 227
    goto :goto_4

    .line 229
    :sswitch_49
    const/4 v0, 0x6

    .line 230
    goto :goto_4

    .line 232
    :sswitch_4b
    const/4 v0, 0x7

    .line 233
    goto :goto_4

    .line 235
    :sswitch_4d
    const/4 v0, 0x2

    .line 236
    goto :goto_4

    .line 238
    :sswitch_4f
    const/4 v0, 0x3

    .line 239
    goto :goto_4

    .line 241
    :sswitch_51
    const/16 v0, 0xb

    goto :goto_4

    .line 184
    :sswitch_data_54
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_17
        0x66 -> :sswitch_4
        0x67 -> :sswitch_2f
        0x68 -> :sswitch_4
        0x69 -> :sswitch_51
        0x6a -> :sswitch_4d
        0x6b -> :sswitch_47
        0x6c -> :sswitch_4f
        0x6d -> :sswitch_4b
        0x6e -> :sswitch_49
        0x6f -> :sswitch_4
        0x70 -> :sswitch_4
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z
    .registers 4
    .parameter "manager"
    .parameter "results"

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method
