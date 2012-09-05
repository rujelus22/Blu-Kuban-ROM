.class LaJ/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/bR;


# instance fields
.field final synthetic a:LaJ/h;


# direct methods
.method constructor <init>(LaJ/h;)V
    .registers 2

    iput-object p1, p0, LaJ/i;->a:LaJ/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, LaJ/i;->a:LaJ/h;

    invoke-virtual {v1, v0, v2, v2}, LaJ/h;->a(ZZZ)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, LaJ/i;->a:LaJ/h;

    invoke-virtual {v0}, LaJ/h;->l()V

    return-void
.end method
