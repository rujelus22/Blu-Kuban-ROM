.class Lcom/google/googlenav/ui/wizard/S;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aG;


# instance fields
.field final synthetic a:Lcom/google/googlenav/h;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;Lcom/google/googlenav/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/R;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/S;->a:Lcom/google/googlenav/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->a:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/h;Lax/j;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ad;->a()V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/lang/String;)V

    return-void
.end method
