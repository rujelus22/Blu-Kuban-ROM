.class Lcom/estrongs/android/pop/app/imageviewer/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/view/ld;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/az;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/az;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setSelection(I)V

    return-void
.end method

.method public b(I)V
    .registers 2

    return-void
.end method
