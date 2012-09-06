.class Lg/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/location/LocationListener;

.field final synthetic b:Lg/a;


# direct methods
.method constructor <init>(Lg/a;Landroid/os/Looper;Landroid/location/LocationListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lg/b;->b:Lg/a;

    iput-object p3, p0, Lg/b;->a:Landroid/location/LocationListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 62
    :goto_5
    return-void

    .line 41
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 42
    iget-object v1, p0, Lg/b;->a:Landroid/location/LocationListener;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_5

    .line 47
    :pswitch_10
    iget-object v1, p0, Lg/b;->a:Landroid/location/LocationListener;

    const-string v2, "network"

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v0}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_5

    .line 52
    :pswitch_1e
    iget-object v0, p0, Lg/b;->a:Landroid/location/LocationListener;

    const-string v1, "network"

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_5

    .line 56
    :pswitch_26
    iget-object v0, p0, Lg/b;->a:Landroid/location/LocationListener;

    const-string v1, "network"

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_5

    .line 39
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method
