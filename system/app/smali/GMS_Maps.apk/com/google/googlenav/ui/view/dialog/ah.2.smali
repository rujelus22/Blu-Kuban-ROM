.class Lcom/google/googlenav/ui/view/dialog/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/af;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/af;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ah;->a:Lcom/google/googlenav/ui/view/dialog/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ah;->a:Lcom/google/googlenav/ui/view/dialog/af;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/af;->b(Lcom/google/googlenav/ui/view/dialog/af;)Lcom/google/googlenav/ui/view/dialog/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aj;->a()V

    return-void
.end method
