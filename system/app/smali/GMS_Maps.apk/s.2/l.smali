.class Ls/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Ls/k;


# direct methods
.method constructor <init>(Ls/k;)V
    .registers 2

    iput-object p1, p0, Ls/l;->a:Ls/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Ls/l;->a:Ls/k;

    invoke-static {v0, p1}, Ls/k;->a(Ls/k;Landroid/os/Message;)V

    return-void
.end method
