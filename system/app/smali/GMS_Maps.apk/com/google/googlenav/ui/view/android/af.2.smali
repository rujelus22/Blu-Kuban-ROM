.class Lcom/google/googlenav/ui/view/android/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aw;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;Lcom/google/googlenav/aw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/af;->b:Lcom/google/googlenav/ui/view/android/Z;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->b:Lcom/google/googlenav/ui/view/android/Z;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x6b1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/af;->a:Lcom/google/googlenav/aw;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method
