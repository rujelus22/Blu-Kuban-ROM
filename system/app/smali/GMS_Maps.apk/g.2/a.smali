.class Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lg/b;

    invoke-direct {v0, p0, p2, p1}, Lg/b;-><init>(Lg/a;Landroid/os/Looper;Landroid/location/LocationListener;)V

    iput-object v0, p0, Lg/a;->a:Landroid/os/Handler;

    .line 64
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lg/a;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 76
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lg/a;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lg/a;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lg/a;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    return-void
.end method
