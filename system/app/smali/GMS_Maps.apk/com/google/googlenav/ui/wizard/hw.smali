.class Lcom/google/googlenav/ui/wizard/hw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/aJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hz;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/hv;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hv;Lcom/google/googlenav/ui/wizard/hz;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hw;->b:Lcom/google/googlenav/ui/wizard/hv;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hw;->a:Lcom/google/googlenav/ui/wizard/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/hx;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hx;-><init>(Lcom/google/googlenav/ui/wizard/hw;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/hy;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hy;-><init>(Lcom/google/googlenav/ui/wizard/hw;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
