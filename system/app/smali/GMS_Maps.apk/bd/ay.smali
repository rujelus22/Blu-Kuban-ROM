.class Lbd/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbd/av;


# direct methods
.method constructor <init>(Lbd/av;)V
    .registers 2

    iput-object p1, p0, Lbd/ay;->a:Lbd/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lbd/ay;->a:Lbd/av;

    invoke-static {v0}, Lbd/av;->b(Lbd/av;)Lcom/google/googlenav/ui/wizard/gY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gY;->e()V

    return-void
.end method
