.class final LaY/H;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;

.field final synthetic b:Lau/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;Lau/v;)V
    .registers 3

    iput-object p1, p0, LaY/H;->a:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, LaY/H;->b:Lau/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "r"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaY/H;->a:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, LaY/H;->b:Lau/v;

    invoke-static {v0, v1}, LaY/G;->a(Lcom/google/googlenav/ui/D;Lau/b;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "u"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaY/H;->b:Lau/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lau/v;->c(Z)V

    iget-object v0, p0, LaY/H;->a:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, LaY/H;->b:Lau/v;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lau/v;)V

    return-void
.end method

.method public c(Z)V
    .registers 5

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
