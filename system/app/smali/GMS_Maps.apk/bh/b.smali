.class Lbh/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lbh/a;


# direct methods
.method constructor <init>(Lbh/a;)V
    .registers 2

    iput-object p1, p0, Lbh/b;->a:Lbh/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lbh/b;->a:Lbh/a;

    invoke-static {v0}, Lbh/a;->a(Lbh/a;)Lcom/google/googlenav/wallpaper/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/f;->b()V

    :cond_d
    return-void
.end method
