.class Lcom/google/googlenav/ui/wizard/bK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:[B

.field final synthetic c:Lcom/google/googlenav/ui/wizard/bI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bI;Landroid/widget/ImageView;[B)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bK;->c:Lcom/google/googlenav/ui/wizard/bI;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bK;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bK;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bK;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bK;->a:Landroid/widget/ImageView;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bK;->b:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bK;->b:[B

    array-length v4, v4

    invoke-interface {v0, v2, v3, v4}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
