.class Lbd/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Landroid/util/Pair;

.field final synthetic c:Lbd/x;


# direct methods
.method constructor <init>(Lbd/x;Lcom/google/googlenav/ui/p;Landroid/util/Pair;)V
    .registers 4

    iput-object p1, p0, Lbd/z;->c:Lbd/x;

    iput-object p2, p0, Lbd/z;->a:Lcom/google/googlenav/ui/p;

    iput-object p3, p0, Lbd/z;->b:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/z;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x2ce

    const/16 v2, 0x12

    iget-object v3, p0, Lbd/z;->b:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
