.class Lcom/google/googlenav/ui/view/dialog/aZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/google/googlenav/ui/bx;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/aY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aY;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->c:Lcom/google/googlenav/ui/view/dialog/aY;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->b:Lcom/google/googlenav/ui/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->c:Lcom/google/googlenav/ui/view/dialog/aY;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aY;->a(Lcom/google/googlenav/ui/view/dialog/aY;)Lah/s;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->b:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v2}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aZ;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 126
    return-void
.end method
