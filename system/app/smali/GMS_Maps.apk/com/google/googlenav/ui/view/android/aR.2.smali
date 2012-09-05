.class Lcom/google/googlenav/ui/view/android/aR;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aP;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Lcom/google/googlenav/ui/view/android/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aR;->a:Lcom/google/googlenav/ui/view/android/aP;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aP;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x25b

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
