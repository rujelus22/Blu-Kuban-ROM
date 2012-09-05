.class Lcom/google/googlenav/ui/view/android/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->f(Lcom/google/googlenav/ui/view/android/Z;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f030c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v3, 0x6ae

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/am;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/view/android/Z;->a(Lcom/google/googlenav/ui/view/android/Z;Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_8
.end method
