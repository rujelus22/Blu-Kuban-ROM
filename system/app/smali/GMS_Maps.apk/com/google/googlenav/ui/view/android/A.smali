.class Lcom/google/googlenav/ui/view/android/A;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/r;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/r;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/A;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/r;->f(Lcom/google/googlenav/ui/view/android/r;)Lbb/k;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/A;->a:I

    iput v1, v0, Lbb/k;->i:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/r;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/r;->h:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->a(Lcom/google/googlenav/ui/view/android/r;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/A;->b:Lcom/google/googlenav/ui/view/android/r;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/r;->h:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->b(Lcom/google/googlenav/ui/view/android/r;Landroid/view/View;)V

    return-void
.end method
