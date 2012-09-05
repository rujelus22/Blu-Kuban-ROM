.class Lcom/google/googlenav/ui/view/android/j;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/i;->a(I)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/i;->a(ILandroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/i;->a(Lcom/google/googlenav/ui/view/android/i;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
