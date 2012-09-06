.class Lcom/estrongs/android/pop/app/imageviewer/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/e;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/e;->a:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->h(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)V

    return-void
.end method
