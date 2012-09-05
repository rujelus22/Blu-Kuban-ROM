.class public Lcom/google/googlenav/ui/wizard/fV;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/A;

.field private b:Lcom/google/googlenav/ui/wizard/C;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/A;Lcom/google/googlenav/ui/wizard/C;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/c;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fV;->a:Lcom/google/googlenav/ui/wizard/A;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fV;->b:Lcom/google/googlenav/ui/wizard/C;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fV;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fV;->h()V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fV;->a:Lcom/google/googlenav/ui/wizard/A;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fV;->b:Lcom/google/googlenav/ui/wizard/C;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/A;->a(Lcom/google/googlenav/ui/wizard/C;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fV;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fV;->b:Lcom/google/googlenav/ui/wizard/C;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/fW;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fW;-><init>(Lcom/google/googlenav/ui/wizard/fV;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xd5

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fV;->a:Lcom/google/googlenav/ui/wizard/A;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->e()V

    return-void
.end method
