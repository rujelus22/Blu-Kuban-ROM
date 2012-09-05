.class Lcom/google/googlenav/ui/view/android/bZ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bU;Lcom/google/googlenav/ui/p;Landroid/widget/TextView;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bZ;->c:Lcom/google/googlenav/ui/view/android/bU;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/ui/p;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x6ab

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
