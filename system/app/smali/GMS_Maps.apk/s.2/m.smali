.class Ls/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ls/k;


# direct methods
.method constructor <init>(Ls/k;)V
    .registers 2

    iput-object p1, p0, Ls/m;->a:Ls/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ls/m;->a:Ls/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls/k;->a(Ls/k;I)I

    iget-object v0, p0, Ls/m;->a:Ls/k;

    iget-object v1, p0, Ls/m;->a:Ls/k;

    invoke-static {v1}, Ls/k;->a(Ls/k;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls/k;->a(ILandroid/os/Bundle;)V

    return-void
.end method
