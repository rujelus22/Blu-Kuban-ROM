.class LaY/ag;
.super Lbb/b;


# instance fields
.field final synthetic a:LaY/ae;


# direct methods
.method constructor <init>(LaY/ae;)V
    .registers 2

    iput-object p1, p0, LaY/ag;->a:LaY/ae;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 4

    iget-object v0, p0, LaY/ag;->a:LaY/ae;

    invoke-virtual {v0}, LaY/ae;->b()V

    iget-object v0, p0, LaY/ag;->a:LaY/ae;

    iget-object v0, v0, LaY/ae;->b:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x262

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    iget-object v0, p0, LaY/ag;->a:LaY/ae;

    invoke-static {v0}, LaY/ae;->a(LaY/ae;)V

    const/4 v0, 0x1

    return v0
.end method
