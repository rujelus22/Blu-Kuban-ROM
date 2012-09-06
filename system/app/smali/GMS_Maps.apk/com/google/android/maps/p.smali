.class Lcom/google/android/maps/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 263
    iget-object v0, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/B;->f:Lcom/google/android/maps/B;

    #setter for: Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;
    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->access$002(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/B;)Lcom/google/android/maps/B;

    .line 272
    :cond_13
    :goto_13
    return-void

    .line 264
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 265
    iget-object v0, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->stopPowerConsumers()V
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$100(Lcom/google/android/maps/MapsActivity;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z
    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->access$202(Lcom/google/android/maps/MapsActivity;Z)Z

    .line 267
    iget-object v0, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$300(Lcom/google/android/maps/MapsActivity;)LY/d;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 268
    iget-object v0, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$300(Lcom/google/android/maps/MapsActivity;)LY/d;

    move-result-object v0

    invoke-virtual {v0}, LY/d;->c()I

    .line 269
    iget-object v0, p0, Lcom/google/android/maps/p;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;
    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->access$302(Lcom/google/android/maps/MapsActivity;LY/d;)LY/d;

    goto :goto_13
.end method
