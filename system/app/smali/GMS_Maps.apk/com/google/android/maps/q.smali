.class Lcom/google/android/maps/q;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/google/android/maps/q;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/x;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 2446
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    sget-object v1, Lax/I;->e:Lax/I;

    invoke-interface {v0, v1}, Lax/m;->a(Lax/I;)V

    .line 2447
    return-void
.end method
