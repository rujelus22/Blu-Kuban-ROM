.class Lu/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lu/r;


# direct methods
.method constructor <init>(Lu/r;)V
    .registers 2

    iput-object p1, p0, Lu/s;->a:Lu/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lu/s;->a:Lu/r;

    invoke-static {v0, p1}, Lu/r;->a(Lu/r;Landroid/os/Message;)V

    return-void
.end method
