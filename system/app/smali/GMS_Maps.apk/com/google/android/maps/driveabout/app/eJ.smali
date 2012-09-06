.class Lcom/google/android/maps/driveabout/app/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dW;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ej;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ej;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ls/q;->b(FF)V

    .line 729
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ej;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ls/q;->b(FFF)V

    .line 739
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ej;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Ls/q;->b(Ln/Q;)V

    .line 734
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Ln/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 744
    return-void
.end method
