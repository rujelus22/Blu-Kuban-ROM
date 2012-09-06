.class Lcom/estrongs/android/pop/view/ip;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/OpenRecomm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ip;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ip;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ip;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->c(Lcom/estrongs/android/pop/view/OpenRecomm;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :goto_b
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a(Lcom/estrongs/android/pop/view/OpenRecomm;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ip;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->c(Lcom/estrongs/android/pop/view/OpenRecomm;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ip;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->e(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_22
    return-void

    :cond_23
    const/4 v0, 0x1

    goto :goto_b

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ip;->a:Lcom/estrongs/android/pop/view/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->e(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22
.end method
