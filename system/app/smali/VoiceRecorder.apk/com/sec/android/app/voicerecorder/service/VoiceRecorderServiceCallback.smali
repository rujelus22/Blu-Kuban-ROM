.class public Lcom/sec/android/app/voicerecorder/service/VoiceRecorderServiceCallback;
.super Landroid/app/Service;
.source "VoiceRecorderServiceCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 14
    const-string v0, "VoiceRecorderServiceCallback"

    const-string v1, "Binded"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
