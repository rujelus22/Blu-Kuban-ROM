.class Lcom/google/googlenav/ui/view/dialog/S;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/Q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/Q;Landroid/os/Handler;Landroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/S;->c:Lcom/google/googlenav/ui/view/dialog/Q;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/S;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/S;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/S;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/T;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/T;-><init>(Lcom/google/googlenav/ui/view/dialog/S;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
