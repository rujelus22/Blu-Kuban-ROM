.class Lcom/google/googlenav/ui/wizard/ef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/n;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ed;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ed;Lcom/google/googlenav/prefetch/android/n;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ef;->b:Lcom/google/googlenav/ui/wizard/ed;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ef;->a:Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ef;->b:Lcom/google/googlenav/ui/wizard/ed;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/dY;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ef;->a:Lcom/google/googlenav/prefetch/android/n;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/dY;->a(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/u;->b(Landroid/app/Dialog;)V

    const-string v0, "wr"

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Ljava/lang/String;)V

    return-void
.end method
