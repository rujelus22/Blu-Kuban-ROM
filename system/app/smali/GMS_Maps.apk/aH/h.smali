.class LaH/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:LaH/g;


# direct methods
.method constructor <init>(LaH/g;)V
    .registers 2

    iput-object p1, p0, LaH/h;->a:LaH/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, LaH/h;->a:LaH/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    invoke-virtual {v1, v0}, LaH/g;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_5

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LaH/i;

    iget-object v1, p0, LaH/h;->a:LaH/g;

    iget-object v2, v0, LaH/i;->a:Landroid/location/Location;

    iget-object v0, v0, LaH/i;->b:Lt/y;

    invoke-virtual {v1, v2, v0}, LaH/g;->b(Landroid/location/Location;Lt/y;)V

    goto :goto_5

    :pswitch_1e
    iget-object v0, p0, LaH/h;->a:LaH/g;

    invoke-static {v0}, LaH/g;->a(LaH/g;)V

    goto :goto_5

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_1e
    .end packed-switch
.end method
