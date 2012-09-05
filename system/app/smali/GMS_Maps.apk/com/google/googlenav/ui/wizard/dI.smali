.class public Lcom/google/googlenav/ui/wizard/dI;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private volatile a:I

.field private final g:Landroid/view/View$OnClickListener;

.field private final h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dI;->a:I

    new-instance v0, Lcom/google/googlenav/ui/wizard/dJ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dJ;-><init>(Lcom/google/googlenav/ui/wizard/dI;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/google/googlenav/ui/wizard/dK;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dK;-><init>(Lcom/google/googlenav/ui/wizard/dI;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dI;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dI;I)I
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/wizard/dI;->a:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dI;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dI;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dI;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dI;->a:I

    return v0
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    iput p1, p0, Lcom/google/googlenav/ui/wizard/dI;->a:I

    const-string v0, "OFFER_SETTINGS_PREFERENCE"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/dL;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dL;-><init>(Lcom/google/googlenav/ui/wizard/dI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dI;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    const/16 v0, 0x29f

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    :goto_14
    return-void

    :cond_15
    new-instance v0, Lcom/google/googlenav/ui/wizard/dN;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dN;-><init>(Lcom/google/googlenav/ui/wizard/dI;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dI;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_14
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dI;->a:I

    return v0
.end method

.method protected f()V
    .registers 4

    const-string v0, "OFFER_SETTINGS_PREFERENCE"

    const/4 v1, 0x0

    new-instance v2, Lcom/google/googlenav/ui/wizard/dM;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dM;-><init>(Lcom/google/googlenav/ui/wizard/dI;)V

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bj;)V

    return-void
.end method
