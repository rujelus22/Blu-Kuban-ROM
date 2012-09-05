.class Lcom/google/googlenav/ui/view/android/x;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/x;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/x;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/r;->e(Lcom/google/googlenav/ui/view/android/r;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/x;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/r;->k()V

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/x;->a:Lcom/google/googlenav/ui/view/android/r;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->d(I)V

    return-void
.end method
