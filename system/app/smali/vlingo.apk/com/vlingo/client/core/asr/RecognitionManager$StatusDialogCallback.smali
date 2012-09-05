.class Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/asr/RecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusDialogCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    return-void
.end method


# virtual methods
.method public onStatusDialogClose(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v1, 0xf03

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 553
    return-void
.end method

.method public onStatusDialogPainted(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v1, 0xf04

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 547
    return-void
.end method
