.class Ly/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ly/C;


# direct methods
.method constructor <init>(Ly/C;)V
    .registers 2

    iput-object p1, p0, Ly/D;->a:Ly/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Ly/D;->a:Ly/C;

    invoke-static {v0}, Ly/C;->a(Ly/C;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ly/D;->a:Ly/C;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ly/C;->h:Z

    iget-object v0, p0, Ly/D;->a:Ly/C;

    invoke-virtual {v0}, Ly/C;->d()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Ly/D;->a:Ly/C;

    invoke-static {v0}, Ly/C;->b(Ly/C;)V

    goto :goto_12
.end method
