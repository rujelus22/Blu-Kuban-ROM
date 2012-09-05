.class LaY/af;
.super Lbb/b;


# instance fields
.field final synthetic a:LaY/ae;


# direct methods
.method constructor <init>(LaY/ae;)V
    .registers 2

    iput-object p1, p0, LaY/af;->a:LaY/ae;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, LaY/af;->a:LaY/ae;

    invoke-virtual {v0, v1}, LaY/ae;->i(Z)V

    iget-object v0, p0, LaY/af;->a:LaY/ae;

    invoke-static {v0}, LaY/ae;->a(LaY/ae;)V

    return v1
.end method
