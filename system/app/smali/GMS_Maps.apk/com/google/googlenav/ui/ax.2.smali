.class Lcom/google/googlenav/ui/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/av;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/av;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/ax;->a:Lcom/google/googlenav/ui/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->h()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->e()V

    :cond_f
    return-void
.end method
