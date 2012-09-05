.class Lcom/google/googlenav/ui/view/android/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->b(Lcom/google/googlenav/ui/view/android/Z;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->b(Lcom/google/googlenav/ui/view/android/Z;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/Z;->a(Lcom/google/googlenav/ui/view/android/Z;Z)V

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    const-string v1, "s"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/Z;->a(Lcom/google/googlenav/ui/view/android/Z;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x6a7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ad;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/android/Z;->i(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
