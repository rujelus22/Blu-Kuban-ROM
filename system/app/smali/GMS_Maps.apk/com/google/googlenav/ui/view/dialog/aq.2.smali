.class Lcom/google/googlenav/ui/view/dialog/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/ao;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/ao;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aq;->a:Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aq;->a:Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/ao;->a(Lcom/google/googlenav/ui/view/dialog/ao;)LaY/m;

    move-result-object v0

    const/16 v1, 0x2ef

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaY/m;->a(IILjava/lang/Object;)Z

    return-void
.end method
