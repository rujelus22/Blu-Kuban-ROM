.class Lax/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lax/bw;


# instance fields
.field final synthetic a:Lax/bq;


# direct methods
.method private constructor <init>(Lax/bq;)V
    .registers 2

    iput-object p1, p0, Lax/bt;->a:Lax/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lax/bq;Lax/br;)V
    .registers 3

    invoke-direct {p0, p1}, Lax/bt;-><init>(Lax/bq;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    iget-object v0, v0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/bt;->a:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lax/bq;->a(Lax/bq;Z)Z

    return-void
.end method

.method public a(I)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/login/g;->a(I)V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 3

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    invoke-virtual {v0, p1}, Lax/bq;->b(Lam/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    iget-object v0, v0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    const/16 v0, 0x253

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lax/bq;->a(Lax/bq;Z)Z

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    iget-object v0, v0, Lax/bq;->c:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->f()V

    const/16 v0, 0x252

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    iget-object v0, p0, Lax/bt;->a:Lax/bq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lax/bq;->a(Lax/bq;Z)Z

    return-void
.end method
