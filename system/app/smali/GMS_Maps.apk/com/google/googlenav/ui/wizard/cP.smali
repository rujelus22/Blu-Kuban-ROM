.class Lcom/google/googlenav/ui/wizard/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:[B

.field final synthetic c:Lcom/google/googlenav/ui/wizard/cn;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cn;Landroid/widget/ImageView;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cp;->c:Lcom/google/googlenav/ui/wizard/cn;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cp;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cp;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cp;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 419
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cp;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cp;->b:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/cp;->b:[B

    array-length v4, v4

    invoke-interface {v0, v2, v3, v4}, LS/h;->a([BII)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    return-void
.end method
