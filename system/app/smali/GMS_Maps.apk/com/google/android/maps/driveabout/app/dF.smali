.class Lcom/google/android/maps/driveabout/app/dF;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/dD;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->c(Lcom/google/android/maps/driveabout/app/dD;)V

    goto :goto_5

    :pswitch_18
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/x;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;Lu/x;)V

    goto :goto_5

    :pswitch_22
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lu/I;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;Lu/I;I)V

    goto :goto_5

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->d(Lcom/google/android/maps/driveabout/app/dD;)V

    goto :goto_5

    :pswitch_34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Lcom/google/android/maps/driveabout/app/dD;I)V

    goto :goto_5

    :pswitch_3c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->e(Lcom/google/android/maps/driveabout/app/dD;)V

    goto :goto_5

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_22
        :pswitch_2e
        :pswitch_34
        :pswitch_3c
    .end packed-switch
.end method
