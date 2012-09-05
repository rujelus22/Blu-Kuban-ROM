.class Lcom/swype/android/voice/VLingoSpeechManager$2;
.super Ljava/lang/Object;
.source "VLingoSpeechManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/voice/VLingoSpeechManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/voice/VLingoSpeechManager;


# direct methods
.method constructor <init>(Lcom/swype/android/voice/VLingoSpeechManager;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/swype/android/voice/VLingoSpeechManager$2;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager$2;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    if-nez p2, :cond_d

    const/4 v0, 0x0

    :goto_5
    iput-object v0, v1, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    .line 170
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$2;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VLingoSpeechManager;->startListening()V

    .line 171
    return-void

    .line 169
    :cond_d
    const-string v0, "com.vlingo.client.asr.service.IVLRecognitionService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v2, v0, Lcom/vlingo/client/asr/service/IVLRecognitionService;

    if-eqz v2, :cond_1c

    check-cast v0, Lcom/vlingo/client/asr/service/IVLRecognitionService;

    goto :goto_5

    :cond_1c
    new-instance v0, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$2;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    .line 175
    return-void
.end method
