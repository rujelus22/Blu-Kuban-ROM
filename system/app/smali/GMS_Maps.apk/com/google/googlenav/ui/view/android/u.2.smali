.class Lcom/google/googlenav/ui/view/android/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/u;->a:Lcom/google/googlenav/ui/view/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/16 v0, 0x42

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/u;->a:Lcom/google/googlenav/ui/view/android/r;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/r;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0xd6

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
