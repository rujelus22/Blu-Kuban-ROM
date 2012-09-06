.class Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetBroadcastReceiver"
.end annotation


# instance fields
.field private headsetPluggedIn:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 3
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    return-void
.end method


# virtual methods
.method isHeadsetPluggedIn()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 182
    :cond_e
    :goto_e
    return-void

    .line 177
    :cond_f
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$400(Lcom/google/android/apps/plus/hangout/GCommApp;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$500(Lcom/google/android/apps/plus/hangout/GCommApp;)Landroid/media/AudioManager;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    if-nez v3, :cond_3a

    :goto_34
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_e

    :cond_38
    move v0, v2

    .line 177
    goto :goto_18

    :cond_3a
    move v1, v2

    .line 180
    goto :goto_34
.end method
