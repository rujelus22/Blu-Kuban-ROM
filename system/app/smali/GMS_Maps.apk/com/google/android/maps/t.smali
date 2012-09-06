.class Lcom/google/android/maps/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/MapsActivity;

    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    #setter for: Lcom/google/android/maps/MapsActivity;->hasDataConnection:Z
    invoke-static {v1, v0}, Lcom/google/android/maps/MapsActivity;->access$402(Lcom/google/android/maps/MapsActivity;Z)Z

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/MapsActivity;

    #getter for: Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$500(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 289
    return-void
.end method
