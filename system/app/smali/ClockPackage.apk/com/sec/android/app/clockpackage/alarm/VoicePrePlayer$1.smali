.class Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;
.super Ljava/lang/Object;
.source "VoicePrePlayer.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 83
    if-nez p1, :cond_37

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 85
    const-string v0, "VoicePrePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTTS onInit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$200(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$200(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    move-result-object v1

    const/16 v2, 0x4001

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    :cond_37
    return-void
.end method
