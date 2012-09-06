.class final Ldbxyzptlk/a/q;
.super Landroid/os/Handler;
.source "panda.py"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldbxyzptlk/a/l;)V
    .registers 2
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Ldbxyzptlk/a/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldbxyzptlk/a/p;

    .line 471
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 480
    :goto_9
    return-void

    .line 474
    :pswitch_a
    iget-object v1, v0, Ldbxyzptlk/a/p;->a:Ldbxyzptlk/a/k;

    iget-object v0, v0, Ldbxyzptlk/a/p;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Ldbxyzptlk/a/k;->c(Ldbxyzptlk/a/k;Ljava/lang/Object;)V

    goto :goto_9

    .line 477
    :pswitch_15
    iget-object v1, v0, Ldbxyzptlk/a/p;->a:Ldbxyzptlk/a/k;

    iget-object v0, v0, Ldbxyzptlk/a/p;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ldbxyzptlk/a/k;->b([Ljava/lang/Object;)V

    goto :goto_9

    .line 471
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
