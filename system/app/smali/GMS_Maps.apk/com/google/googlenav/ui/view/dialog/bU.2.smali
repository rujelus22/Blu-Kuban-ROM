.class Lcom/google/googlenav/ui/view/dialog/bU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laz/f;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;Laz/f;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bU;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bU;->a:Laz/f;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bU;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bU;->a:Laz/f;

    invoke-virtual {v0}, Laz/f;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bU;->a:Laz/f;

    invoke-virtual {v1, v0}, Laz/f;->a(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bU;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/bO;->e(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/bV;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/view/dialog/bV;-><init>(Lcom/google/googlenav/ui/view/dialog/bU;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 299
    return-void
.end method
