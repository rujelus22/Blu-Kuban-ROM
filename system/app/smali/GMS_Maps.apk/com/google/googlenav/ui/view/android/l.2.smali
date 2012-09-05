.class Lcom/google/googlenav/ui/view/android/l;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/l;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/l;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/i;->h()Lbb/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/l;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/i;->a(Lcom/google/googlenav/ui/view/android/i;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/l;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/i;->b(Lcom/google/googlenav/ui/view/android/i;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lau/l;->a(Ljava/util/Date;I)Lau/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/i;->a(Lau/l;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/l;->a:Lcom/google/googlenav/ui/view/android/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/l;->a:Lcom/google/googlenav/ui/view/android/i;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/i;->h()Lbb/i;

    move-result-object v1

    iget-object v1, v1, Lbb/i;->k:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/i;->b(Lcom/google/googlenav/ui/bb;)Z

    return-void
.end method
