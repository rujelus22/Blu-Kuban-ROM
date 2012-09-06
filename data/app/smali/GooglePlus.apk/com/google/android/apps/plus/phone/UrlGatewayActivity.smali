.class public Lcom/google/android/apps/plus/phone/UrlGatewayActivity;
.super Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;
.source "UrlGatewayActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsUrlGatewayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 44
    :goto_9
    return-void

    .line 28
    :cond_a
    iget v1, p0, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->mRequestType:I

    if-nez v1, :cond_12

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->redirectToBrowser()V

    goto :goto_9

    .line 33
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->isReadyToRedirect()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->redirect()V

    goto :goto_9

    .line 38
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/plus/phone/UrlGatewayLoaderActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    const/high16 v1, 0x4280

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/UrlGatewayActivity;->finish()V

    goto :goto_9
.end method
