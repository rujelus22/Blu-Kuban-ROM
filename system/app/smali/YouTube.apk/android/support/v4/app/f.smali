.class final Landroid/support/v4/app/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    :cond_8
    :goto_8
    return-void

    .line 85
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->e:Z

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->a(Z)V

    goto :goto_8

    .line 90
    :pswitch_16
    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a_()V

    .line 91
    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    goto :goto_8

    .line 83
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method
