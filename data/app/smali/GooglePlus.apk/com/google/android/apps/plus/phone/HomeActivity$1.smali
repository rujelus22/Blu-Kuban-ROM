.class Lcom/google/android/apps/plus/phone/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/HomeActivity$1;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShakeDetected()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity$1;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/HomeActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 177
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity$1;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    .local v1, context:Landroid/content/Context;
    if-eqz v0, :cond_15

    invoke-static {v1, v0, v4}, Lcom/google/android/apps/plus/service/Hangout;->isHangoutCreationSupported(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Z

    move-result v3

    if-nez v3, :cond_27

    :cond_15
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-ne v3, v4, :cond_3e

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 185
    :cond_27
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    .line 187
    .local v2, hostIntent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/HomeActivity$1;->this$0:Lcom/google/android/apps/plus/phone/HomeActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    .end local v2           #hostIntent:Landroid/content/Intent;
    :cond_3e
    return-void
.end method
