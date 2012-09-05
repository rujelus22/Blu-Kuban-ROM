.class LaY/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/c;


# instance fields
.field final synthetic a:LaY/bl;


# direct methods
.method constructor <init>(LaY/bl;)V
    .registers 2

    iput-object p1, p0, LaY/bm;->a:LaY/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 3

    iget-object v0, p0, LaY/bm;->a:LaY/bl;

    iget-object v0, v0, LaY/bl;->a:LaY/bh;

    iget-object v0, v0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aD()Lcom/google/googlenav/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/f;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
