.class public Lcom/google/googlenav/ui/wizard/hE;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/D;

.field private b:Lcom/google/googlenav/ui/wizard/F;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/D;Lcom/google/googlenav/ui/wizard/F;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/D;

    .line 24
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hE;->b:Lcom/google/googlenav/ui/wizard/F;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hE;)V
    .registers 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hE;->i()V

    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/D;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hE;->b:Lcom/google/googlenav/ui/wizard/F;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/D;->a(Lcom/google/googlenav/ui/wizard/F;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    const v0, 0x7f100191

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hE;->b:Lcom/google/googlenav/ui/wizard/F;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v2, Lcom/google/googlenav/ui/wizard/hF;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hF;-><init>(Lcom/google/googlenav/ui/wizard/hE;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-object v1
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hE;->a:Lcom/google/googlenav/ui/wizard/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->e()V

    .line 34
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0xe3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
