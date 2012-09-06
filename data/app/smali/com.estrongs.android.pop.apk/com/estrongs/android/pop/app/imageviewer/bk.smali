.class Lcom/estrongs/android/pop/app/imageviewer/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bk;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d()V

    goto :goto_2b
.end method
