.class Lcom/estrongs/android/pop/app/dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_68

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x108003f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_15
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->k(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v2, v1, 0x2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->l(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    if-gez v2, :cond_3f

    move v2, v0

    :cond_3f
    if-gez v1, :cond_89

    :goto_41
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->m(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_61
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_67
    return-void

    :cond_68
    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_79

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    :cond_79
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->j(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dg;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->i(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15

    :cond_89
    move v0, v1

    goto :goto_41
.end method
