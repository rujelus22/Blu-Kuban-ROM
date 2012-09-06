.class Lcom/estrongs/android/pop/view/kw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Property;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Property;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kw;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "path"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/kw;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/Property;->a(Lcom/estrongs/android/pop/view/Property;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "perm"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/kw;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/Property;->b(Lcom/estrongs/android/pop/view/Property;)Lcom/estrongs/android/pop/d/e;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/kw;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/Property;->c(Lcom/estrongs/android/pop/view/Property;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/ChangePermActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/kw;->a:Lcom/estrongs/android/pop/view/Property;

    const v2, 0x10001015

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/Property;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
