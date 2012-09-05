.class LaY/aa;
.super Lap/b;


# instance fields
.field final synthetic a:LaY/i;

.field final synthetic e:LaY/Y;


# direct methods
.method constructor <init>(LaY/Y;Lap/c;LaY/i;)V
    .registers 4

    iput-object p1, p0, LaY/aa;->e:LaY/Y;

    iput-object p3, p0, LaY/aa;->a:LaY/i;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, LaY/aa;->a:LaY/i;

    invoke-static {v1}, LaY/Y;->k(LaY/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    return-void
.end method
