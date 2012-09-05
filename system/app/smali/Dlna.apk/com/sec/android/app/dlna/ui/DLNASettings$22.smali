.class Lcom/sec/android/app/dlna/ui/DLNASettings$22;
.super Landroid/content/BroadcastReceiver;
.source "DLNASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$22;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$22;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 973
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->acquireWakeLock()V

    .line 974
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->acquireWifiLock()V

    .line 976
    :cond_16
    return-void
.end method
