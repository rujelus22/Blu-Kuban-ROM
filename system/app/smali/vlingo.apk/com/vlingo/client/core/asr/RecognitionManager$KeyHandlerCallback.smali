.class Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/asr/RecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    return-void
.end method


# virtual methods
.method public isRecognitionActive()Z
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->isIdle()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onRecognitionKeyHandlerKeyEvent(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;III)Z
    .registers 6
    .parameter "handler"
    .parameter "event"
    .parameter "keycode"
    .parameter "time"

    .prologue
    .line 653
    packed-switch p2, :pswitch_data_1a

    .line 661
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 655
    :pswitch_5
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->processASRKeyDown()Z
    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$1100(Lcom/vlingo/client/core/asr/RecognitionManager;)Z

    move-result v0

    goto :goto_4

    .line 657
    :pswitch_c
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->processASRKeyUp()Z
    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$1200(Lcom/vlingo/client/core/asr/RecognitionManager;)Z

    move-result v0

    goto :goto_4

    .line 659
    :pswitch_13
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->processAbortKey()Z
    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$1300(Lcom/vlingo/client/core/asr/RecognitionManager;)Z

    move-result v0

    goto :goto_4

    .line 653
    :pswitch_data_1a
    .packed-switch 0xbb9
        :pswitch_5
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_13
    .end packed-switch
.end method
