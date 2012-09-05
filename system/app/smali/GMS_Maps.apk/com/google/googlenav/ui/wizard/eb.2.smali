.class Lcom/google/googlenav/ui/wizard/eb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/n;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/prefetch/android/n;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eb;->b:Lcom/google/googlenav/ui/wizard/dY;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eb;->a:Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eb;->b:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->b(Lcom/google/googlenav/ui/wizard/dY;)LaR/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eb;->a:Lcom/google/googlenav/prefetch/android/n;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LaR/i;->a(Lcom/google/googlenav/prefetch/android/n;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eb;->b:Lcom/google/googlenav/ui/wizard/dY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x2af

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eb;->b:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->c(Lcom/google/googlenav/ui/wizard/dY;)Lcom/google/googlenav/ui/wizard/ed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ed;->a()V

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/ec;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ec;-><init>(Lcom/google/googlenav/ui/wizard/eb;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    return-void
.end method
