.class LaA/o;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:LaA/n;


# direct methods
.method constructor <init>(LaA/n;)V
    .registers 2

    iput-object p1, p0, LaA/o;->a:LaA/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(LaA/n;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, LaA/o;->a:LaA/n;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    iget-object v0, p0, LaA/o;->a:LaA/n;

    invoke-static {v0}, LaA/n;->b(LaA/n;)LaA/q;

    move-result-object v0

    iget-object v1, p0, LaA/o;->a:LaA/n;

    invoke-static {v1}, LaA/n;->a(LaA/n;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, LaA/q;->f(Landroid/view/MotionEvent;)V

    :cond_2d
    :goto_2d
    return-void

    :pswitch_2e
    iget-object v0, p0, LaA/o;->a:LaA/n;

    invoke-static {v0}, LaA/n;->c(LaA/n;)V

    goto :goto_2d

    :pswitch_34
    iget-object v0, p0, LaA/o;->a:LaA/n;

    invoke-static {v0}, LaA/n;->d(LaA/n;)LaA/p;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, LaA/o;->a:LaA/n;

    invoke-static {v0}, LaA/n;->e(LaA/n;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, LaA/o;->a:LaA/n;

    invoke-static {v0}, LaA/n;->d(LaA/n;)LaA/p;

    move-result-object v0

    iget-object v1, p0, LaA/o;->a:LaA/n;

    invoke-static {v1}, LaA/n;->a(LaA/n;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, LaA/p;->b(Landroid/view/MotionEvent;)Z

    goto :goto_2d

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method
