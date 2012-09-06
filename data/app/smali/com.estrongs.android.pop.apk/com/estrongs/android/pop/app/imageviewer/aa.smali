.class Lcom/estrongs/android/pop/app/imageviewer/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/z;

.field private final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/z;Lcom/estrongs/android/pop/app/imageviewer/gallery/a;Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->a:Lcom/estrongs/android/pop/app/imageviewer/z;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    const-string v0, ""

    move-object v1, v0

    :goto_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->d:Landroid/view/View;

    const v2, 0x7f070123

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->b:Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V

    return-void

    :cond_27
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/aa;->c:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_f
.end method
