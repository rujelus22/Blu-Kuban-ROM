.class Lcom/estrongs/android/pop/app/imageviewer/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;ILandroid/widget/LinearLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->b:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/bo;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;)V
    .registers 10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->b:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_16
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v6, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bp;

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->b:I

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/bo;->c:Landroid/widget/LinearLayout;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/bp;-><init>(Lcom/estrongs/android/pop/app/imageviewer/bo;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;ILandroid/graphics/Bitmap;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v0}, Lcom/estrongs/android/pop/app/imageviewer/k;->a(Ljava/lang/Runnable;)V

    goto :goto_1b
.end method
