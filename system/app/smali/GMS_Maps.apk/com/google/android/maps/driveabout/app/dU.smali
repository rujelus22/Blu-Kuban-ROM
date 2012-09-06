.class Lcom/google/android/maps/driveabout/app/du;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/ds;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 338
    :goto_5
    return-void

    .line 314
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Lcom/google/android/maps/driveabout/app/ds;)V

    goto :goto_5

    .line 317
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->b(Lcom/google/android/maps/driveabout/app/ds;)V

    goto :goto_5

    .line 320
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->c(Lcom/google/android/maps/driveabout/app/ds;)V

    goto :goto_5

    .line 323
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/x;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Lcom/google/android/maps/driveabout/app/ds;Lo/x;)V

    goto :goto_5

    .line 326
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lo/I;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/ds;->a(Lcom/google/android/maps/driveabout/app/ds;Lo/I;I)V

    goto :goto_5

    .line 329
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->d(Lcom/google/android/maps/driveabout/app/ds;)V

    goto :goto_5

    .line 332
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->b(Lcom/google/android/maps/driveabout/app/ds;I)V

    goto :goto_5

    .line 335
    :pswitch_3c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->a:Lcom/google/android/maps/driveabout/app/ds;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->e(Lcom/google/android/maps/driveabout/app/ds;)V

    goto :goto_5

    .line 312
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
