.class Lcom/estrongs/android/pop/app/imageviewer/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

.field private final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ar;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;Lcom/estrongs/android/pop/app/imageviewer/ar;Z)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/u;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/u;->b:Lcom/estrongs/android/pop/app/imageviewer/ar;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/imageviewer/u;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/u;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/u;->b:Lcom/estrongs/android/pop/app/imageviewer/ar;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/u;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/ar;Z)V

    return-void
.end method
