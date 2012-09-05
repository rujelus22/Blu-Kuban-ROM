.class final Lcom/vlingo/client/safereader/SafeReaderAPI$2;
.super Landroid/content/BroadcastReceiver;
.source "SafeReaderAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderAPI;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    const-string v0, "com.vlingo.client.samsung.safereader.STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V

    .line 108
    :cond_10
    :goto_10
    return-void

    .line 106
    :cond_11
    const-string v0, "com.vlingo.client.samsung.safereader.STOPPED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V

    goto :goto_10
.end method
