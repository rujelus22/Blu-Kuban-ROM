.class Lcom/estrongs/android/pop/view/fv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fv;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ff;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fv;->a:Lcom/estrongs/android/pop/view/ff;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    return-void
.end method
