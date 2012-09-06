.class Lcom/estrongs/android/pop/view/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1b

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x4461

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e5

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_cd

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    :goto_a2
    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    :goto_bf
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(I)V

    move v1, v0

    goto/16 :goto_1b

    :cond_cd
    iget-object v2, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)I

    move-result v3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;I)V

    goto :goto_a2

    :cond_e5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bs;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;F)V

    move v0, v1

    goto :goto_bf
.end method
