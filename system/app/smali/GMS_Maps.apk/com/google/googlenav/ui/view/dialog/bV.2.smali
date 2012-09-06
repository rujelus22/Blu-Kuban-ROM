.class Lcom/google/googlenav/ui/view/dialog/bV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bU;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bV;->b:Lcom/google/googlenav/ui/view/dialog/bU;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bV;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bV;->b:Lcom/google/googlenav/ui/view/dialog/bU;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bU;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bV;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    return-void
.end method
