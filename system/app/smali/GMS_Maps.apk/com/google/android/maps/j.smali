.class Lcom/google/android/maps/j;
.super Lcom/google/googlenav/x;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/j;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->d()V

    return-void
.end method
