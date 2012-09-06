.class Lcom/estrongs/android/pop/view/lf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/le;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/le;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lf;->a:Lcom/estrongs/android/pop/view/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lf;->a:Lcom/estrongs/android/pop/view/le;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/le;->a(Lcom/estrongs/android/pop/view/le;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lf;->a:Lcom/estrongs/android/pop/view/le;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/le;->a(Lcom/estrongs/android/pop/view/le;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->c()V

    return-void
.end method
