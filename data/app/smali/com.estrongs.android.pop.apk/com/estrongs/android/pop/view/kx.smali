.class Lcom/estrongs/android/pop/view/kx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Property;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Property;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kx;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kx;->a:Lcom/estrongs/android/pop/view/Property;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/Property;->a(Lcom/estrongs/android/pop/view/Property;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kx;->a:Lcom/estrongs/android/pop/view/Property;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/Property;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kx;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/Property;->finish()V

    return-void
.end method
