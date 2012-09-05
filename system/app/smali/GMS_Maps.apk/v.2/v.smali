.class Lv/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lv/u;


# direct methods
.method constructor <init>(Lv/u;)V
    .registers 2

    iput-object p1, p0, Lv/v;->a:Lv/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lv/v;->a:Lv/u;

    invoke-static {v0, p1}, Lv/u;->a(Lv/u;Landroid/os/Message;)V

    return-void
.end method
