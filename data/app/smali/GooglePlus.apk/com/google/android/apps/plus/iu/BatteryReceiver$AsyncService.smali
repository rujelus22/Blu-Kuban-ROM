.class public Lcom/google/android/apps/plus/iu/BatteryReceiver$AsyncService;
.super Landroid/app/IntentService;
.source "BatteryReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/BatteryReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    const-string v0, "InstantUploadSyncBatteryReceiverAsync"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 26
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    .local v0, plugged:Z
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->onBatteryStateChanged(Z)V

    .line 28
    return-void
.end method
