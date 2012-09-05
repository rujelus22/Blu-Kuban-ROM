.class Lcom/google/googlenav/ui/view/dialog/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/google/googlenav/ui/bG;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/af;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/af;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bG;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ag;->c:Lcom/google/googlenav/ui/view/dialog/af;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/ag;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/ag;->b:Lcom/google/googlenav/ui/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ag;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ag;->c:Lcom/google/googlenav/ui/view/dialog/af;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/af;->a(Lcom/google/googlenav/ui/view/dialog/af;)Lay/r;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/ag;->b:Lcom/google/googlenav/ui/bG;

    invoke-virtual {v0, v2}, Lay/r;->a(Lcom/google/googlenav/ui/bG;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ag;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
