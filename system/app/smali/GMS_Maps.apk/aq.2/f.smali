.class Laq/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Laq/e;


# direct methods
.method constructor <init>(Laq/e;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Laq/f;->a:Laq/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 282
    :goto_5
    return-void

    .line 270
    :pswitch_6
    iget-object v1, p0, Laq/f;->a:Laq/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    invoke-virtual {v1, v0}, Laq/e;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_5

    .line 273
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laq/g;

    .line 274
    iget-object v1, p0, Laq/f;->a:Laq/e;

    iget-object v2, v0, Laq/g;->a:Landroid/location/Location;

    iget-object v0, v0, Laq/g;->b:Ln/B;

    invoke-virtual {v1, v2, v0}, Laq/e;->b(Landroid/location/Location;Ln/B;)V

    goto :goto_5

    .line 277
    :pswitch_1e
    iget-object v0, p0, Laq/f;->a:Laq/e;

    invoke-static {v0}, Laq/e;->a(Laq/e;)V

    goto :goto_5

    .line 268
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_1e
    .end packed-switch
.end method
