.class Lcom/google/googlenav/ui/wizard/bG;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bC;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bG;->b:Lcom/google/googlenav/ui/wizard/bC;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bG;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bG;->b:Lcom/google/googlenav/ui/wizard/bC;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bG;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/bC;->b(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V

    return-void
.end method
