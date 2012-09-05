.class public final Lcom/google/android/youtube/core/utils/DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dockState:I

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final listener:Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->registered:Z

    .line 39
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->context:Landroid/content/Context;

    .line 40
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->listener:Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;

    .line 41
    return-void
.end method


# virtual methods
.method public getDockState()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->dockState:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 46
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->dockState:I

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->listener:Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;

    iget v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->dockState:I

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/utils/DockReceiver$DockListener;->onDockState(I)V

    .line 51
    :goto_1c
    return-void

    .line 49
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
    .line 54
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->registered:Z

    if-nez v0, :cond_e

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->registered:Z

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    :cond_e
    return-void
.end method

.method public unregister()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->registered:Z

    if-eqz v0, :cond_e

    .line 62
    iput-boolean v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->registered:Z

    .line 63
    iput v1, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->dockState:I

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/DockReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    :cond_e
    return-void
.end method
