.class Lcom/google/googlenav/ui/view/dialog/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/al;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/al;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/an;->a:Lcom/google/googlenav/ui/view/dialog/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/16 v0, 0x42

    if-ne p2, v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/an;->a:Lcom/google/googlenav/ui/view/dialog/al;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/al;->a(Lcom/google/googlenav/ui/view/dialog/al;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    const/16 v1, 0xd6

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
