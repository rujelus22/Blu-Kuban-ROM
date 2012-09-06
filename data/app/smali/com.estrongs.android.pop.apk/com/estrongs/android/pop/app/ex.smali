.class Lcom/estrongs/android/pop/app/ex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ew;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ew;->a(Lcom/estrongs/android/pop/app/ew;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->f(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ew;->a(Lcom/estrongs/android/pop/app/ew;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ew;->a(Lcom/estrongs/android/pop/app/ew;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ew;->a(Lcom/estrongs/android/pop/app/ew;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ZipViewer;->g(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ew;->a(Lcom/estrongs/android/pop/app/ew;)Lcom/estrongs/android/pop/app/ZipViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ZipViewer;->f(Lcom/estrongs/android/pop/app/ZipViewer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/ZipViewer;->a(Lcom/estrongs/android/pop/app/ZipViewer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_37
    return-void
.end method
