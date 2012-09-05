.class Lcom/google/googlenav/ui/view/android/y;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/y;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/y;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/r;->e(Lcom/google/googlenav/ui/view/android/r;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/y;->a:Lcom/google/googlenav/ui/view/android/r;

    const/16 v1, 0xec

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/r;->d(I)V

    :cond_f
    return-void
.end method
