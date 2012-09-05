.class Lcom/google/googlenav/ui/wizard/ee;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/n;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ed;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ed;Lcom/google/googlenav/prefetch/android/n;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ee;->b:Lcom/google/googlenav/ui/wizard/ed;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->a()Lt/af;

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0}, Lt/V;->f()Lt/L;

    move-result-object v0

    new-instance v1, LaJ/B;

    invoke-virtual {v0}, Lt/L;->a()I

    move-result v2

    invoke-virtual {v0}, Lt/L;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, LaJ/B;-><init>(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->b:Lcom/google/googlenav/ui/wizard/ed;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->d(Lcom/google/googlenav/ui/wizard/dY;)LaY/Y;

    move-result-object v0

    invoke-virtual {v0, v1}, LaY/Y;->a(LaJ/B;)LaY/al;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->b:Lcom/google/googlenav/ui/wizard/ed;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dY;->a()V

    const-string v0, "wv"

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Ljava/lang/String;)V

    return-void
.end method
