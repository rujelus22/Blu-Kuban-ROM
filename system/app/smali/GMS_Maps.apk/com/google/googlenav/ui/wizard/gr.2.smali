.class public Lcom/google/googlenav/ui/wizard/gr;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/gu;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gr;)Lcom/google/googlenav/ui/wizard/gu;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gu;

    return-object v0
.end method


# virtual methods
.method public W_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gu;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gr;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gu;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gr;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gr;->o()V

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gr;->e:I

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gr;->e:I

    return v0
.end method

.method protected b()V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gr;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gr;->e()Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->f:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v1, Lcom/google/googlenav/ui/wizard/gs;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/gs;-><init>(Lcom/google/googlenav/ui/wizard/gr;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gu;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/android/ap;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/gv;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/gv;-><init>(Lcom/google/googlenav/ui/wizard/gr;Lcom/google/googlenav/ui/p;)V

    return-object v0
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gu;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gu;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gu;->a:Lcom/google/googlenav/ui/wizard/gt;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gt;->a()V

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gr;->a()V

    return-void
.end method
