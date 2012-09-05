.class Lcom/google/googlenav/ui/view/android/w;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/w;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/w;->a:Lcom/google/googlenav/ui/view/android/r;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/r;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0}, Lcom/google/googlenav/ui/p;->o()V

    return-void
.end method
