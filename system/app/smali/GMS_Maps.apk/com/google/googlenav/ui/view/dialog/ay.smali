.class Lcom/google/googlenav/ui/view/dialog/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/ax;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ay;->a:Lcom/google/googlenav/ui/view/dialog/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ay;->a:Lcom/google/googlenav/ui/view/dialog/ax;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/ax;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hp;->g()V

    return-void
.end method
