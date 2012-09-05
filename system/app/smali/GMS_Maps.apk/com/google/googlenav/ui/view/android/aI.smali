.class Lcom/google/googlenav/ui/view/android/aI;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aH;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aI;->b:Lcom/google/googlenav/ui/view/android/aH;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/aI;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aI;->b:Lcom/google/googlenav/ui/view/android/aH;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aI;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/aH;->a(Lcom/google/googlenav/ui/view/android/aH;I)V

    return-void
.end method
