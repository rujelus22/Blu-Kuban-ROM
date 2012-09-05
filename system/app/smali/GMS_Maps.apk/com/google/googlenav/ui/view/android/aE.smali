.class Lcom/google/googlenav/ui/view/android/aE;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bl;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aB;Lcom/google/googlenav/ui/bl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aE;->b:Lcom/google/googlenav/ui/view/android/aB;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aE;->a:Lcom/google/googlenav/ui/bl;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aE;->b:Lcom/google/googlenav/ui/view/android/aB;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/view/android/aB;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ay;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aE;->a:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ay;->b(Lcom/google/googlenav/ui/bb;)Z

    return-void
.end method
