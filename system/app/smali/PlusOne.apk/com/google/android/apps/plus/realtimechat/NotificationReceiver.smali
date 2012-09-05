.class public Lcom/google/android/apps/plus/realtimechat/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 14
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p1, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->resetNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 15
    return-void
.end method
