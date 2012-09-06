.class Lcom/estrongs/android/pop/app/ew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ew;)Lcom/estrongs/android/pop/app/ZipViewer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    new-instance v0, Lcom/estrongs/android/util/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->f(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/ex;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/ex;-><init>(Lcom/estrongs/android/pop/app/ew;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->a()V

    return-void
.end method
