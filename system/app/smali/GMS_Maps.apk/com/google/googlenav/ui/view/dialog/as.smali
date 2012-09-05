.class Lcom/google/googlenav/ui/view/dialog/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/ba;

.field final synthetic d:Lcom/google/googlenav/ui/view/dialog/ao;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/ao;IILcom/google/googlenav/ba;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/as;->d:Lcom/google/googlenav/ui/view/dialog/ao;

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/as;->a:I

    iput p3, p0, Lcom/google/googlenav/ui/view/dialog/as;->b:I

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/as;->c:Lcom/google/googlenav/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/as;->d:Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/ao;->c(Lcom/google/googlenav/ui/view/dialog/ao;)LaY/m;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/as;->a:I

    iget v2, p0, Lcom/google/googlenav/ui/view/dialog/as;->b:I

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/as;->c:Lcom/google/googlenav/ba;

    invoke-virtual {v0, v1, v2, v3}, LaY/m;->a(IILjava/lang/Object;)Z

    return-void
.end method
