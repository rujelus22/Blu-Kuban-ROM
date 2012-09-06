.class public Lcom/google/android/location/internal/NlpNetworkProviderSettingsUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/NlpNetworkProviderSettingsUpdateReceiver;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 28
    if-eqz p2, :cond_1c

    .line 29
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 30
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/android/location/internal/NlpNetworkProviderSettingsUpdateReceiver;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/location/internal/NlpNetworkProviderSettingsUpdateReceiver;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_1d

    .line 45
    :cond_1c
    :goto_1c
    return-void

    .line 35
    :cond_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/NlpNetworkProviderSettingsUpdateReceiver;->a:Ljava/lang/Boolean;

    .line 40
    iget-object v0, p0, Lcom/google/android/location/internal/NlpNetworkProviderSettingsUpdateReceiver;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.location.internal.GMM_NLP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1c
.end method
