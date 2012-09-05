.class Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/RecognitionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/VLRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/VLRecognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/asr/VLRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/asr/VLRecognizer;Lcom/vlingo/client/asr/VLRecognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/asr/VLRecognizer;)V

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
    .line 167
    const/4 v0, -0x1

    .line 168
    .local v0, error:I
    sparse-switch p2, :sswitch_data_54

    .line 229
    :cond_4
    :goto_4
    :sswitch_4
    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    .line 230
    move v1, v0

    .line 231
    .local v1, realError:I
    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;

    invoke-direct {v3, p0, v1}, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$3;-><init>(Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    .end local v1           #realError:I
    :cond_16
    return-void

    .line 170
    :sswitch_17
    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    invoke-static {v2}, Lcom/vlingo/client/asr/VLRecognizer;->access$500(Lcom/vlingo/client/asr/VLRecognizer;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 173
    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$1;-><init>(Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 189
    :sswitch_2f
    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    invoke-static {v2}, Lcom/vlingo/client/asr/VLRecognizer;->access$500(Lcom/vlingo/client/asr/VLRecognizer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 190
    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;

    invoke-direct {v3, p0}, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl$2;-><init>(Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 210
    :sswitch_47
    const/4 v0, 0x1

    .line 211
    goto :goto_4

    .line 213
    :sswitch_49
    const/4 v0, 0x6

    .line 214
    goto :goto_4

    .line 216
    :sswitch_4b
    const/4 v0, 0x7

    .line 217
    goto :goto_4

    .line 219
    :sswitch_4d
    const/4 v0, 0x2

    .line 220
    goto :goto_4

    .line 222
    :sswitch_4f
    const/4 v0, 0x3

    .line 223
    goto :goto_4

    .line 225
    :sswitch_51
    const/16 v0, 0xb

    goto :goto_4

    .line 168
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
    .line 247
    const/4 v0, 0x0

    return v0
.end method
