.class Lcom/google/googlenav/ui/wizard/af;
.super Ljava/lang/Object;

# interfaces
.implements LaD/c;


# instance fields
.field final synthetic a:LaD/i;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ad;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ad;LaD/i;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/af;->b:Lcom/google/googlenav/ui/wizard/ad;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/af;->a:LaD/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->b:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ah;->a(ZLaD/n;)V

    return-void
.end method

.method public a(LaD/n;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->a:LaD/i;

    invoke-virtual {p1}, LaD/n;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LaD/i;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(LaD/n;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/af;->b:Lcom/google/googlenav/ui/wizard/ad;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/ah;->a(ZLaD/n;)V

    return-void
.end method
