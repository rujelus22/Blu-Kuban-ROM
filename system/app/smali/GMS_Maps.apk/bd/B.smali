.class Lbd/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:I

.field final synthetic c:[Lcom/google/googlenav/au;

.field final synthetic d:Lbd/x;


# direct methods
.method constructor <init>(Lbd/x;Lcom/google/googlenav/ui/p;I[Lcom/google/googlenav/au;)V
    .registers 5

    iput-object p1, p0, Lbd/B;->d:Lbd/x;

    iput-object p2, p0, Lbd/B;->a:Lcom/google/googlenav/ui/p;

    iput p3, p0, Lbd/B;->b:I

    iput-object p4, p0, Lbd/B;->c:[Lcom/google/googlenav/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/B;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x90a

    iget v2, p0, Lbd/B;->b:I

    iget-object v3, p0, Lbd/B;->c:[Lcom/google/googlenav/au;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
