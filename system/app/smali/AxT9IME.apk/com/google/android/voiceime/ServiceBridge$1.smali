.class Lcom/google/android/voiceime/ServiceBridge$1;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Lcom/google/android/voiceime/ServiceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/ServiceBridge;->startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;

.field final synthetic val$conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 5
    .parameter "recognitionResult"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    #getter for: Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    invoke-static {v1}, Lcom/google/android/voiceime/ServiceBridge;->access$100(Lcom/google/android/voiceime/ServiceBridge;)Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/voiceime/IntentApiTrigger$Callback;->onRecognitionResult(Ljava/lang/String;)V

    .line 55
    :try_start_9
    iget-object v1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_10} :catch_11

    .line 61
    :goto_10
    return-void

    .line 57
    :catch_11
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_10
.end method
