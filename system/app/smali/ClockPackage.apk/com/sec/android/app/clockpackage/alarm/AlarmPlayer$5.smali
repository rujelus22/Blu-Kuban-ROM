.class Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoicePlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 614
    if-nez p1, :cond_38

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 616
    const-string v0, "AlarmPlayer"

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

    .line 617
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    move-result-object v1

    const/16 v2, 0x4001

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    :cond_37
    :goto_37
    return-void

    .line 620
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_37
.end method
