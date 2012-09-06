.class Lcom/estrongs/android/pop/view/hj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/hh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/hh;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hj;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hj;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hj;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/hh;->b(Lcom/estrongs/android/pop/view/hh;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hj;->a:Lcom/estrongs/android/pop/view/hh;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/hh;->a(Lcom/estrongs/android/pop/view/hh;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
