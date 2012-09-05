.class public Lcom/google/android/gsf/update/SystemUpdateService$SecretCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretCodeReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 241
    const-string v1, "SystemUpdateService"

    const-string v2, "wiping cache from SecretCodeReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_7
    invoke-static {p1}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    .line 247
    :goto_a
    return-void

    .line 244
    :catch_b
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SystemUpdateService"

    const-string v2, "failed to reboot to wipe cache:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method
