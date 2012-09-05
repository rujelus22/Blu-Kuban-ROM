.class public Lcom/google/googlenav/ui/wizard/hv;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Landroid/content/Context;

.field private g:LaX/i;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaX/i;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->h()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->a:Landroid/content/Context;

    :cond_f
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hv;->g:LaX/i;

    return-void
.end method


# virtual methods
.method public a(Lax/by;Lcom/google/googlenav/ui/wizard/hz;)V
    .registers 7

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aI;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hv;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hv;->g:LaX/i;

    new-instance v3, Lcom/google/googlenav/ui/wizard/hw;

    invoke-direct {v3, p0, p2}, Lcom/google/googlenav/ui/wizard/hw;-><init>(Lcom/google/googlenav/ui/wizard/hv;Lcom/google/googlenav/ui/wizard/hz;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/aI;-><init>(Landroid/content/Context;Lax/by;Lcom/google/googlenav/ui/ai;Lcom/google/googlenav/ui/view/dialog/aJ;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hv;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hv;->l()V

    return-void
.end method
