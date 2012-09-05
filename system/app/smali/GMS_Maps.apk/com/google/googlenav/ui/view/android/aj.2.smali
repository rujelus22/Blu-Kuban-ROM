.class Lcom/google/googlenav/ui/view/android/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Lcom/google/googlenav/ui/view/android/Z;I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x6a5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->e(Lcom/google/googlenav/ui/view/android/Z;)V

    return-void
.end method
