.class public final Lcom/google/android/youtube/core/utils/HdmiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HdmiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private hdmiPlugged:Z

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final listener:Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 47
    iput-boolean v2, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->registered:Z

    .line 48
    iput-boolean v2, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->hdmiPlugged:Z

    .line 51
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->context:Landroid/content/Context;

    .line 52
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->listener:Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;

    .line 53
    return-void
.end method


# virtual methods
.method public isHdmiPlugged()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->hdmiPlugged:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 58
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->hdmiPlugged:Z

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->listener:Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->hdmiPlugged:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/utils/HdmiReceiver$HdmiListener;->onHdmiPluggedState(Z)V

    .line 63
    :goto_1c
    return-void

    .line 61
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public register()V
    .registers 3

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->registered:Z

    if-nez v0, :cond_e

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->registered:Z

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_e
    return-void
.end method

.method public unregister()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->registered:Z

    if-eqz v0, :cond_e

    .line 74
    iput-boolean v1, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->registered:Z

    .line 75
    iput-boolean v1, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->hdmiPlugged:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/HdmiReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_e
    return-void
.end method
