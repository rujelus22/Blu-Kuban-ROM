.class Lcom/google/googlenav/ui/view/android/bS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lbb/a;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bN;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/bN;Lbb/a;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bS;->b:Lcom/google/googlenav/ui/view/android/bN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bS;->b:Lcom/google/googlenav/ui/view/android/bN;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bN;->F:Lcom/google/googlenav/ui/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    invoke-virtual {v1}, Lbb/a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    invoke-virtual {v2}, Lbb/a;->b()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    invoke-virtual {v3}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_1d
    return-void
.end method
