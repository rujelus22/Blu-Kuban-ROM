.class Lcom/estrongs/android/pop/view/iq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/OpenRecomm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const v4, 0x7f02002d

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->f(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_18
    :goto_18
    return v3

    :cond_19
    if-ne v0, v3, :cond_ab

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->f(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->g(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->g(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->h(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    const v2, 0x7f09025d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->i(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->j(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_18

    :cond_6d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->g(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/RecommendListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->h(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    const v2, 0x7f09025c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->i(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->j(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_18

    :cond_ab
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iq;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->f(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_18
.end method
