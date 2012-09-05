.class Lcom/google/android/maps/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/u;->f:Lcom/google/android/maps/u;

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/u;)Lcom/google/android/maps/u;

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;)V

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->b(Lcom/google/android/maps/MapsActivity;)Lap/d;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->b(Lcom/google/android/maps/MapsActivity;)Lap/d;

    move-result-object v0

    invoke-virtual {v0}, Lap/d;->c()I

    iget-object v0, p0, Lcom/google/android/maps/l;->a:Lcom/google/android/maps/MapsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->a(Lcom/google/android/maps/MapsActivity;Lap/d;)Lap/d;

    goto :goto_13
.end method
