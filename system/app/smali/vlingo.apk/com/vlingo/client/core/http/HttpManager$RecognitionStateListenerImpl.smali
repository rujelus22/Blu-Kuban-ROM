.class Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/RecognitionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/http/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionStateListenerImpl"
.end annotation


# instance fields
.field private volatile paused:Z

.field final synthetic this$0:Lcom/vlingo/client/core/http/HttpManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/http/HttpManager;)V
    .registers 3
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/core/http/HttpManager;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z

    return v0
.end method

.method private pause()V
    .registers 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z

    if-nez v0, :cond_c

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z

    .line 428
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpManager;->onListenerPaused()V

    .line 430
    :cond_c
    return-void
.end method

.method private resume()V
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z

    if-eqz v0, :cond_c

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z

    .line 435
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpManager;->onListenerResume()V

    .line 437
    :cond_c
    return-void
.end method


# virtual methods
.method public onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8
    .parameter "manager"
    .parameter "state"
    .parameter "type"
    .parameter "message"
    .parameter "note"
    .parameter "recognizing"
    .parameter "recording"

    .prologue
    .line 402
    packed-switch p2, :pswitch_data_c

    .line 415
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->resume()V

    .line 418
    :goto_6
    return-void

    .line 404
    :pswitch_7
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->pause()V

    goto :goto_6

    .line 402
    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method

.method public onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z
    .registers 4
    .parameter "manager"
    .parameter "results"

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->resume()V

    .line 422
    const/4 v0, 0x0

    return v0
.end method
