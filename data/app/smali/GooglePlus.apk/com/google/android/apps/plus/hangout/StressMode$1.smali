.class Lcom/google/android/apps/plus/hangout/StressMode$1;
.super Ljava/lang/Object;
.source "StressMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/StressMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/StressMode;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/StressMode;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/StressMode$1;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 84
    const-string v1, "StressMode: launchGreenRoom: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/plus/hangout/StressMode;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lcom/google/android/apps/plus/hangout/StressMode;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$1;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$500(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/StressMode$1;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/StressMode;->access$600(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/StressMode$1;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/StressMode;->access$700(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$1;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$500(Lcom/google/android/apps/plus/hangout/StressMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3d
    return-void
.end method
