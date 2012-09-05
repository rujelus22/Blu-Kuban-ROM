.class Lcom/google/googlenav/ui/au;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/v;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/at;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/at;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/au;->a:Lcom/google/googlenav/ui/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/au;->a:Lcom/google/googlenav/ui/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/au;->a:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->v()V

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/au;->a:Lcom/google/googlenav/ui/at;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/at;Z)Z

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method
