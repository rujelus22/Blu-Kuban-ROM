.class Lcom/google/googlenav/ui/android/n;
.super Lcom/google/android/maps/driveabout/vector/ca;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/n;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;->d:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()V

    :cond_14
    iget-object v1, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    new-instance v2, Lcom/google/googlenav/ui/android/o;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/android/o;-><init>(Lcom/google/googlenav/ui/android/n;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->q()V

    :cond_2b
    const/4 v0, 0x1

    return v0
.end method
