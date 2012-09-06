.class Lcom/estrongs/android/pop/app/imageviewer/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/an;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/am;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bn;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/am;->a(Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    goto :goto_6
.end method
