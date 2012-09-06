.class Lcom/google/googlenav/ui/android/m;
.super Lcom/google/android/maps/driveabout/vector/cu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cu;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/m;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 5
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    .line 743
    iget-object v1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    if-eqz v1, :cond_14

    .line 744
    iget-object v1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    .line 745
    iget-object v1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->n()V

    .line 748
    :cond_14
    iget-object v1, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    new-instance v2, Lcom/google/googlenav/ui/android/n;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/android/n;-><init>(Lcom/google/googlenav/ui/android/m;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->post(Ljava/lang/Runnable;)Z

    .line 776
    if-nez v0, :cond_2b

    .line 777
    iget-object v0, p0, Lcom/google/googlenav/ui/android/m;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->screenDrawn()V

    .line 782
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method
