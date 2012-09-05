.class Lcom/google/googlenav/ui/view/android/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lbb/f;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/ay;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ay;Lbb/f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/az;->b:Lcom/google/googlenav/ui/view/android/ay;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/az;->a:Lbb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/az;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->e:Lbb/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/az;->b:Lcom/google/googlenav/ui/view/android/ay;

    invoke-interface {v0, v1}, Lbb/q;->a(Landroid/app/Dialog;)V

    return-void
.end method
