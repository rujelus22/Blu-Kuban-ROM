.class Lcom/google/googlenav/ui/view/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0304

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Lcom/google/googlenav/ui/view/android/Z;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ah;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/Z;->b(Lcom/google/googlenav/ui/view/android/Z;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_24

    const-string v0, "oi"

    :goto_1e
    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Ljava/lang/String;)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_a

    :cond_24
    const-string v0, "oo"

    goto :goto_1e
.end method
