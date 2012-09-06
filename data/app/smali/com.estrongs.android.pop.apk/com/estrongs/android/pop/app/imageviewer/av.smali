.class Lcom/estrongs/android/pop/app/imageviewer/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/av;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/av;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->a()V

    const/4 v0, 0x0

    return v0
.end method
