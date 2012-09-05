.class Lcom/google/googlenav/ui/wizard/L;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/J;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/J;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/L;->a:Lcom/google/googlenav/ui/wizard/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/L;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_26

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/M;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/M;-><init>(Lcom/google/googlenav/ui/wizard/L;)V

    invoke-virtual {v1, v0, v2}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    :cond_26
    return-void
.end method
