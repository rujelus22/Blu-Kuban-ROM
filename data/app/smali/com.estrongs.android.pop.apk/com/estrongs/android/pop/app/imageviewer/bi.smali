.class Lcom/estrongs/android/pop/app/imageviewer/bi;
.super Lcom/estrongs/android/pop/app/imageviewer/o;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/bh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/bh;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bi;->a:Lcom/estrongs/android/pop/app/imageviewer/bh;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/o;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/graphics/Bitmap;
    .registers 6

    const/16 v0, 0x320

    const/high16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
