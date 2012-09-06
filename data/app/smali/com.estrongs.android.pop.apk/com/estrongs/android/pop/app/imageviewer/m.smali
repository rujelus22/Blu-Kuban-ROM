.class Lcom/estrongs/android/pop/app/imageviewer/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/l;

.field private final synthetic b:I

.field private final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/l;ILandroid/widget/ImageView;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->a:Lcom/estrongs/android/pop/app/imageviewer/l;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->b:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/m;)Lcom/estrongs/android/pop/app/imageviewer/l;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->a:Lcom/estrongs/android/pop/app/imageviewer/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;)V
    .registers 7

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->b:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->a:Lcom/estrongs/android/pop/app/imageviewer/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/l;->a(Lcom/estrongs/android/pop/app/imageviewer/l;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->a:Lcom/estrongs/android/pop/app/imageviewer/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/l;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/n;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->b:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/m;->c:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, p2, v3}, Lcom/estrongs/android/pop/app/imageviewer/n;-><init>(Lcom/estrongs/android/pop/app/imageviewer/m;ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->a(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method
