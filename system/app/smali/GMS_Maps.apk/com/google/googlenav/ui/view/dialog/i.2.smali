.class Lcom/google/googlenav/ui/view/dialog/i;
.super Ljava/lang/Object;

# interfaces
.implements LaD/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/d;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/i;->b:Lcom/google/googlenav/ui/view/dialog/d;

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/i;->b:Lcom/google/googlenav/ui/view/dialog/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;Z)V

    return-void
.end method

.method public a(LaD/n;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/i;->b:Lcom/google/googlenav/ui/view/dialog/d;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/i;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;I)LaD/d;

    move-result-object v0

    invoke-virtual {p1}, LaD/n;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LaD/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(LaD/n;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/i;->b:Lcom/google/googlenav/ui/view/dialog/d;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/i;->a:I

    invoke-virtual {p1}, LaD/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/i;->b:Lcom/google/googlenav/ui/view/dialog/d;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/i;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/d;->b(Lcom/google/googlenav/ui/view/dialog/d;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/i;->b:Lcom/google/googlenav/ui/view/dialog/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;Z)V

    return-void
.end method
