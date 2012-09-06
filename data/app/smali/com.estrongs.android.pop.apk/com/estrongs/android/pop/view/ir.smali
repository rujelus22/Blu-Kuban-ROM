.class Lcom/estrongs/android/pop/view/ir;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/OpenRecomm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/a/i;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/estrongs/android/pop/view/a/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->c(Lcom/estrongs/android/pop/view/OpenRecomm;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/OpenRecomm;->d(Lcom/estrongs/android/pop/view/OpenRecomm;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/view/a/j;

    iget-object v4, v0, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/i;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/estrongs/android/pop/view/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/a/j;)V

    :cond_3a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ir;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_10

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
