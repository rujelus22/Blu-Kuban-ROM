.class Lcom/google/googlenav/ui/view/android/aD;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aB;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Lcom/google/googlenav/ui/view/android/aB;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aD;->b:Lcom/google/googlenav/ui/view/android/aB;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/view/android/aB;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aD;->a:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ap;->d(I)V

    return-void
.end method
