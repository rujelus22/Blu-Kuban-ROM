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
    .line 154
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    return-void
.end method


# virtual methods
.method isHeadsetPluggedIn()Z
    .registers 2

    .prologue
    .line 161
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

    .line 166
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 175
    :cond_e
    :goto_e
    return-void

    .line 170
    :cond_f
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_40

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->audioFocus:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$400(Lcom/google/android/apps/plus/hangout/GCommApp;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->isHermes:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$500(Lcom/google/android/apps/plus/hangout/GCommApp;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$600(Lcom/google/android/apps/plus/hangout/GCommApp;)Landroid/media/AudioManager;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;->headsetPluggedIn:Z

    if-nez v3, :cond_42

    :goto_3c
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_e

    :cond_40
    move v0, v2

    .line 170
    goto :goto_18

    :cond_42
    move v1, v2

    .line 173
    goto :goto_3c
.end method
