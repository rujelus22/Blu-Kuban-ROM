.class LaY/aO;
.super Lbb/b;


# instance fields
.field final synthetic a:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;)V
    .registers 2

    iput-object p1, p0, LaY/aO;->a:LaY/aG;

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 3

    iget-object v0, p0, LaY/aO;->a:LaY/aG;

    invoke-static {v0}, LaY/aG;->c(LaY/aG;)V

    instance-of v0, p1, Lbb/a;

    if-nez v0, :cond_e

    iget-object v0, p0, LaY/aO;->a:LaY/aG;

    invoke-static {v0}, LaY/aG;->d(LaY/aG;)V

    :cond_e
    const/4 v0, 0x1

    return v0
.end method
