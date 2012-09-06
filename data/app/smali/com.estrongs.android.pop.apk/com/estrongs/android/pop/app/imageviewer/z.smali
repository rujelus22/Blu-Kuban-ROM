.class Lcom/estrongs/android/pop/app/imageviewer/z;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/y;

.field private final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

.field private final synthetic c:Landroid/os/Handler;

.field private final synthetic d:Landroid/app/Activity;

.field private final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/y;Lcom/estrongs/android/pop/app/imageviewer/gallery/a;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->a:Lcom/estrongs/android/pop/app/imageviewer/y;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->n()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->h()Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->c:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/aa;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/z;->e:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/aa;-><init>(Lcom/estrongs/android/pop/app/imageviewer/z;Lcom/estrongs/android/pop/app/imageviewer/gallery/a;Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
