.class Lax/N;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/hz;


# instance fields
.field final synthetic a:Lax/bz;

.field final synthetic b:Lax/by;

.field final synthetic c:Lax/x;


# direct methods
.method constructor <init>(Lax/x;Lax/bz;Lax/by;)V
    .registers 4

    iput-object p1, p0, Lax/N;->c:Lax/x;

    iput-object p2, p0, Lax/N;->a:Lax/bz;

    iput-object p3, p0, Lax/N;->b:Lax/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/16 v0, 0x4f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    iget-object v0, p0, Lax/N;->a:Lax/bz;

    iget-object v1, p0, Lax/N;->b:Lax/by;

    invoke-virtual {v1}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/bz;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lax/N;->c:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->c()LaX/a;

    move-result-object v0

    invoke-virtual {v0}, LaX/a;->b()V

    iget-object v0, p0, Lax/N;->c:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->bK()V

    iget-object v0, p0, Lax/N;->c:Lax/x;

    invoke-static {v0}, Lax/x;->e(Lax/x;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->e()V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/O;

    iget-object v2, p0, Lax/N;->b:Lax/by;

    invoke-direct {v1, p0, v2}, Lax/O;-><init>(Lax/N;Lax/by;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
