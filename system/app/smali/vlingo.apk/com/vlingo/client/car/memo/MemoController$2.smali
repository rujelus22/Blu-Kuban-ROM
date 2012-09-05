.class Lcom/vlingo/client/car/memo/MemoController$2;
.super Ljava/lang/Object;
.source "MemoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/memo/MemoController;->onSaveMemo(Lcom/vlingo/client/car/memo/MemoMessageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/memo/MemoController;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/memo/MemoController;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    iput-object p2, p0, Lcom/vlingo/client/car/memo/MemoController$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    #getter for: Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoController;->access$000(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    #getter for: Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/memo/MemoController;->access$000(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 128
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    iget-object v0, v0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController$2;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vlingo/client/ClientConfiguration;->trySamsungMemoDBSave(Landroid/content/Context;Ljava/lang/String;)Z

    .line 129
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController$2;->val$message:Ljava/lang/String;

    #calls: Lcom/vlingo/client/car/memo/MemoController;->sendAcceptedText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/car/memo/MemoController;->access$100(Lcom/vlingo/client/car/memo/MemoController;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_SAVED:Lcom/vlingo/client/core/tts/TTSDemand;

    #setter for: Lcom/vlingo/client/car/memo/MemoController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/memo/MemoController;->access$202(Lcom/vlingo/client/car/memo/MemoController;Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSDemand;

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    iget-object v0, v0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    iget-object v0, v0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController$2;->this$0:Lcom/vlingo/client/car/memo/MemoController;

    #getter for: Lcom/vlingo/client/car/memo/MemoController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {v1}, Lcom/vlingo/client/car/memo/MemoController;->access$200(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 134
    :cond_49
    return-void
.end method
