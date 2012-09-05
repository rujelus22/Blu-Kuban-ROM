.class LF/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:LF/p;


# direct methods
.method private constructor <init>(LF/p;)V
    .registers 2

    iput-object p1, p0, LF/s;->a:LF/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LF/p;LF/q;)V
    .registers 3

    invoke-direct {p0, p1}, LF/s;-><init>(LF/p;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    move v0, v2

    :goto_8
    return v0

    :pswitch_9
    iget-object v2, p0, LF/s;->a:LF/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LF/r;

    invoke-static {v2, v0}, LF/p;->a(LF/p;LF/r;)V

    move v0, v1

    goto :goto_8

    :pswitch_14
    iget-object v2, p0, LF/s;->a:LF/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LF/r;

    invoke-static {v2, v0}, LF/p;->b(LF/p;LF/r;)V

    move v0, v1

    goto :goto_8

    :pswitch_1f
    iget-object v2, p0, LF/s;->a:LF/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LF/R;

    invoke-static {v2, v0}, LF/p;->a(LF/p;LF/R;)V

    move v0, v1

    goto :goto_8

    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, LF/s;->a:LF/p;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-static {v3, v2, v0}, LF/p;->a(LF/p;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :pswitch_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, LF/s;->a:LF/p;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-static {v3, v2, v0}, LF/p;->b(LF/p;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :pswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, LF/s;->a:LF/p;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v0, v4}, LF/p;->a(LF/p;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_8

    :pswitch_5f
    iget-object v0, p0, LF/s;->a:LF/p;

    invoke-static {v0}, LF/p;->a(LF/p;)V

    move v0, v1

    goto :goto_8

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_9
        :pswitch_14
        :pswitch_1f
        :pswitch_2a
        :pswitch_3b
        :pswitch_4c
        :pswitch_5f
    .end packed-switch
.end method
