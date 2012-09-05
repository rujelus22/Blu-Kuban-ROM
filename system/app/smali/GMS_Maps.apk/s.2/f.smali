.class public Ls/f;
.super Ljava/lang/Object;

# interfaces
.implements Ls/c;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ls/c;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ls/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/f;->a:Ljava/lang/String;

    iput-object p2, p0, Ls/f;->b:Ls/c;

    return-void
.end method


# virtual methods
.method public a(Ls/C;)V
    .registers 2

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    new-instance v0, Ls/b;

    invoke-direct {v0, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, Ls/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ls/b;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Ls/f;->b:Ls/c;

    invoke-interface {v1, v0}, Ls/c;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
