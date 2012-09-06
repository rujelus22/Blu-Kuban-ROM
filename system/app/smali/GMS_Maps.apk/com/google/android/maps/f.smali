.class Lcom/google/android/maps/f;
.super LY/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/google/android/maps/f;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 1423
    const/4 v0, 0x0

    .line 1425
    new-instance v1, Lcom/google/android/maps/g;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/f;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3}, Lcom/google/android/maps/MapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/maps/g;-><init>(Lcom/google/android/maps/f;LY/c;Lcom/google/googlenav/android/Y;Z)V

    invoke-virtual {v1}, Lcom/google/android/maps/g;->g()V

    .line 1434
    return-void
.end method
