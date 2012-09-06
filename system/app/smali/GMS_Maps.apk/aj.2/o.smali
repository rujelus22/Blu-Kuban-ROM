.class Laj/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Laj/n;


# direct methods
.method constructor <init>(Laj/n;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Laj/o;->a:Laj/n;

    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 256
    return-void
.end method

.method constructor <init>(Laj/n;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Laj/o;->a:Laj/n;

    .line 259
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 281
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

    .line 266
    :pswitch_1e
    iget-object v0, p0, Laj/o;->a:Laj/n;

    invoke-static {v0}, Laj/n;->b(Laj/n;)Laj/q;

    move-result-object v0

    iget-object v1, p0, Laj/o;->a:Laj/n;

    invoke-static {v1}, Laj/n;->a(Laj/n;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Laj/q;->f(Landroid/view/MotionEvent;)V

    .line 283
    :cond_2d
    :goto_2d
    return-void

    .line 270
    :pswitch_2e
    iget-object v0, p0, Laj/o;->a:Laj/n;

    invoke-static {v0}, Laj/n;->c(Laj/n;)V

    goto :goto_2d

    .line 275
    :pswitch_34
    iget-object v0, p0, Laj/o;->a:Laj/n;

    invoke-static {v0}, Laj/n;->d(Laj/n;)Laj/p;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Laj/o;->a:Laj/n;

    invoke-static {v0}, Laj/n;->e(Laj/n;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 276
    iget-object v0, p0, Laj/o;->a:Laj/n;

    invoke-static {v0}, Laj/n;->d(Laj/n;)Laj/p;

    move-result-object v0

    iget-object v1, p0, Laj/o;->a:Laj/n;

    invoke-static {v1}, Laj/n;->a(Laj/n;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Laj/p;->b(Landroid/view/MotionEvent;)Z

    goto :goto_2d

    .line 264
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method
