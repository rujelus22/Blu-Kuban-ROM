.class public Lcom/google/googlenav/ui/wizard/gx;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/gA;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gx;)Lcom/google/googlenav/ui/wizard/gA;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    return-object v0
.end method


# virtual methods
.method public W_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gx;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gx;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gz;Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/wizard/gA;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/gA;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/gA;->a:Lcom/google/googlenav/ui/wizard/gz;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    iput-object p2, v0, Lcom/google/googlenav/ui/wizard/gA;->b:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/gA;->c:Ljava/util/EnumSet;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gx;->l()V

    return-void
.end method

.method protected b()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/gB;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/gB;-><init>(Lcom/google/googlenav/ui/wizard/gx;Lcom/google/googlenav/ui/p;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->b()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->f:Lcom/google/googlenav/ui/view/android/bs;

    const v1, 0x7f0f03d0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gA;->a:Lcom/google/googlenav/ui/wizard/gz;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gz;->a()V

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gx;->a()V

    return-void
.end method
