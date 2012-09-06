.class Lcom/google/googlenav/ui/android/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/BaseAndroidView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/googlenav/ui/android/C;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/android/C;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_e

    .line 80
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->screenDrawn()V

    .line 85
    :goto_d
    return-void

    .line 82
    :cond_e
    const-string v0, "AndroidView"

    const-string v1, "View Activity should be the MapsActivity, but was null"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
