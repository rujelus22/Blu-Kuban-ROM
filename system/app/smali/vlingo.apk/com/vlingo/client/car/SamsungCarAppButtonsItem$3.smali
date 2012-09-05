.class Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;
.super Ljava/lang/Object;
.source "SamsungCarAppButtonsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    #calls: Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->stopMusic()V
    invoke-static {v0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->access$000(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    .line 82
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/core/recognizer/SRContext;

    const-string v2, "vp_car_main_memo"

    invoke-direct {v1, v2}, Lcom/vlingo/client/core/recognizer/SRContext;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v3}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    invoke-virtual {v4}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/vlingo/client/car/PromptContent;->getMemoPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 84
    return-void
.end method
