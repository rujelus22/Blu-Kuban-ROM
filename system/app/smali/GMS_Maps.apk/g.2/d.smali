.class Lg/d;
.super Lcom/google/android/location/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lg/c;


# direct methods
.method constructor <init>(Lg/c;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lg/d;->a:Lg/c;

    invoke-direct {p0}, Lcom/google/android/location/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 115
    iget-object v0, p0, Lg/d;->a:Lg/c;

    invoke-static {v0}, Lg/c;->a(Lg/c;)Lg/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/a;->a(Landroid/location/Location;)V

    .line 116
    return-void
.end method

.method public onProviderDisabled()V
    .registers 2

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 133
    iget-object v0, p0, Lg/d;->a:Lg/c;

    invoke-static {v0}, Lg/c;->a(Lg/c;)Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->b()V

    .line 134
    return-void
.end method

.method public onProviderEnabled()V
    .registers 2

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 127
    iget-object v0, p0, Lg/d;->a:Lg/c;

    invoke-static {v0}, Lg/c;->a(Lg/c;)Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->a()V

    .line 128
    return-void
.end method

.method public onStatusChanged(ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 121
    iget-object v0, p0, Lg/d;->a:Lg/c;

    invoke-static {v0}, Lg/c;->a(Lg/c;)Lg/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg/a;->a(ILandroid/os/Bundle;)V

    .line 122
    return-void
.end method
