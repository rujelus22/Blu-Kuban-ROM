.class Lcom/google/googlenav/ui/android/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/BaseAndroidView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->q()V

    :goto_d
    return-void

    :cond_e
    const-string v0, "AndroidView"

    const-string v1, "View Activity should be the MapsActivity, but was null"

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d
.end method
