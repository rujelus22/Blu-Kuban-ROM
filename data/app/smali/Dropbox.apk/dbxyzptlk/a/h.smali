.class final Ldbxyzptlk/a/h;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/a/g;


# direct methods
.method constructor <init>(Ldbxyzptlk/a/g;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Ldbxyzptlk/a/h;->a:Ldbxyzptlk/a/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_8
    return-void

    .line 116
    :pswitch_9
    iget-object v0, p0, Ldbxyzptlk/a/h;->a:Ldbxyzptlk/a/g;

    invoke-static {v0}, Ldbxyzptlk/a/g;->a(Ldbxyzptlk/a/g;)V

    goto :goto_8

    .line 114
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
