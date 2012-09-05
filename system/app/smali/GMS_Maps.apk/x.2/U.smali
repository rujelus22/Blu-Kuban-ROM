.class Lx/U;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lx/T;


# direct methods
.method constructor <init>(Lx/T;)V
    .registers 2

    iput-object p1, p0, Lx/U;->a:Lx/T;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lx/U;->a:Lx/T;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lx/V;

    invoke-static {v1, v0}, Lx/T;->a(Lx/T;Lx/V;)V

    goto :goto_5

    :pswitch_10
    iget-object v0, p0, Lx/U;->a:Lx/T;

    invoke-static {v0}, Lx/T;->a(Lx/T;)V

    goto :goto_5

    :pswitch_16
    iget-object v1, p0, Lx/U;->a:Lx/T;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lx/S;

    invoke-static {v1, v0}, Lx/T;->a(Lx/T;Lx/S;)V

    goto :goto_5

    :pswitch_20
    iget-object v1, p0, Lx/U;->a:Lx/T;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lx/S;

    invoke-static {v1, v0}, Lx/T;->b(Lx/T;Lx/S;)V

    goto :goto_5

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method
