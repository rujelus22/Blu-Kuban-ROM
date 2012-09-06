.class Lr/R;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lr/Q;


# direct methods
.method constructor <init>(Lr/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lr/R;->a:Lr/Q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 257
    :goto_5
    return-void

    .line 243
    :pswitch_6
    iget-object v1, p0, Lr/R;->a:Lr/Q;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr/S;

    invoke-static {v1, v0}, Lr/Q;->a(Lr/Q;Lr/S;)V

    goto :goto_5

    .line 246
    :pswitch_10
    iget-object v0, p0, Lr/R;->a:Lr/Q;

    invoke-static {v0}, Lr/Q;->a(Lr/Q;)V

    goto :goto_5

    .line 249
    :pswitch_16
    iget-object v1, p0, Lr/R;->a:Lr/Q;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr/P;

    invoke-static {v1, v0}, Lr/Q;->a(Lr/Q;Lr/P;)V

    goto :goto_5

    .line 252
    :pswitch_20
    iget-object v1, p0, Lr/R;->a:Lr/Q;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr/P;

    invoke-static {v1, v0}, Lr/Q;->b(Lr/Q;Lr/P;)V

    goto :goto_5

    .line 241
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method
