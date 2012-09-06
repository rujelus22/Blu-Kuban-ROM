.class Lcom/estrongs/android/pop/view/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bg;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bg;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/bd;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bg;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->l:Lcom/estrongs/android/widget/at;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bg;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bd;->l:Lcom/estrongs/android/widget/at;

    invoke-interface {v0}, Lcom/estrongs/android/widget/at;->a()V

    :cond_12
    return-void
.end method
