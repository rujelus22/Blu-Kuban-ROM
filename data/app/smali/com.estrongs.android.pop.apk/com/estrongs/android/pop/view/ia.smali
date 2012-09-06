.class Lcom/estrongs/android/pop/view/ia;
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
.field final synthetic a:Lcom/estrongs/android/pop/view/hy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/hy;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ia;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->e()V

    :goto_16
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ia;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hy;->b()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_8

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_21
    :try_start_21
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ah;->b(I)Lcom/estrongs/android/util/ak;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ia;->a:Lcom/estrongs/android/pop/view/hy;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/hy;->a(Lcom/estrongs/android/pop/view/hy;Lcom/estrongs/android/util/ak;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_1c

    goto :goto_16
.end method
