.class Lcom/google/googlenav/ui/view/dialog/j;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/d;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/j;->b:Lcom/google/googlenav/ui/view/dialog/d;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/j;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/j;->b:Lcom/google/googlenav/ui/view/dialog/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/j;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/d;->a(Lcom/google/googlenav/ui/view/dialog/d;Ljava/util/List;LaD/j;)V

    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/j;->b:Lcom/google/googlenav/ui/view/dialog/d;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/d;->c(Lcom/google/googlenav/ui/view/dialog/d;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_14
    return-void
.end method
