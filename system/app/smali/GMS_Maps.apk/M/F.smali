.class public Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/c;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lm/c;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lm/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lm/f;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lm/f;->b:Lm/c;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lm/D;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    new-instance v0, Lm/b;

    invoke-direct {v0, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 44
    iget-object v1, p0, Lm/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lm/b;->setProvider(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lm/f;->b:Lm/c;

    invoke-interface {v1, v0}, Lm/c;->onLocationChanged(Landroid/location/Location;)V

    .line 46
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    return-void
.end method
