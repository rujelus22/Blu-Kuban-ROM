.class Lcom/estrongs/android/widget/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/af;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/estrongs/android/widget/FileBrowserDialog;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    iput-object p2, p0, Lcom/estrongs/android/widget/s;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/s;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->n(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_58

    instance-of v0, p1, Lcom/estrongs/android/widget/MountPointFile;

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/widget/MountPointFile;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/MountPointFile;->getIconResId()I

    move-result v1

    if-gez v1, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/widget/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4f

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4f

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->o(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_58
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->j(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->k(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->p(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1d

    :cond_7e
    move-object v1, v0

    goto :goto_4f
.end method
