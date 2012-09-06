.class Lcom/estrongs/android/pop/view/hu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/HideList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/HideList;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v4, 0x0

    const v6, 0x7f030024

    const v2, 0x7f02006e

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, -0x7c00

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_17
    return v5

    :cond_18
    if-ne v0, v5, :cond_ab

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_17

    :cond_2b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/HideList;->a(Lcom/estrongs/android/pop/view/HideList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/HideList;->b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;

    move-result-object v2

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/estrongs/android/util/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {}, Lcom/estrongs/android/util/g;->d()[Lcom/estrongs/android/util/i;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/HideList;->a(Lcom/estrongs/android/pop/view/HideList;[Lcom/estrongs/android/util/i;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/HideList;->b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/HideList;->b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9b

    :cond_5c
    new-array v2, v5, [Lcom/estrongs/android/util/i;

    new-instance v0, Lcom/estrongs/android/util/i;

    invoke-direct {v0, v4, v3, v4}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v2, v3

    new-instance v0, Lcom/estrongs/android/pop/view/hx;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/estrongs/android/pop/view/hx;-><init>(Lcom/estrongs/android/pop/view/HideList;Landroid/content/Context;I[Lcom/estrongs/android/util/i;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/HideList;->c(Lcom/estrongs/android/pop/view/HideList;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_79
    iget-object v2, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/HideList;->a(Lcom/estrongs/android/pop/view/HideList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hx;->notifyDataSetChanged()V

    :try_start_85
    iget-object v0, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/HideList;->a(Lcom/estrongs/android/pop/view/HideList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8e} :catch_b3

    :goto_8e
    :try_start_8e
    const-string v0, "/sdcard/.estrongs/hide2.txt"

    invoke-static {v0}, Lcom/estrongs/android/util/g;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/util/g;->b:Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_96} :catch_98

    goto/16 :goto_14

    :catch_98
    move-exception v0

    goto/16 :goto_14

    :cond_9b
    new-instance v0, Lcom/estrongs/android/pop/view/hx;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/hu;->a:Lcom/estrongs/android/pop/view/HideList;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/HideList;->b(Lcom/estrongs/android/pop/view/HideList;)[Lcom/estrongs/android/util/i;

    move-result-object v4

    invoke-direct {v0, v2, v3, v6, v4}, Lcom/estrongs/android/pop/view/hx;-><init>(Lcom/estrongs/android/pop/view/HideList;Landroid/content/Context;I[Lcom/estrongs/android/util/i;)V

    goto :goto_79

    :cond_ab
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_14

    :catch_b3
    move-exception v0

    goto :goto_8e
.end method
