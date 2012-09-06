.class public Lcom/estrongs/android/widget/ag;
.super Landroid/app/AlertDialog;


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Ljava/text/NumberFormat;

.field protected f:Landroid/widget/TextView;

.field protected g:J

.field protected h:J

.field protected i:Ljava/lang/CharSequence;

.field j:Landroid/os/Handler;

.field private k:I

.field private l:Lcom/estrongs/android/widget/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/ag;->k:I

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->e:Ljava/text/NumberFormat;

    new-instance v0, Lcom/estrongs/android/widget/ak;

    invoke-direct {v0}, Lcom/estrongs/android/widget/ak;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->l:Lcom/estrongs/android/widget/aj;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/widget/ag;->setView(Landroid/view/View;)V

    const v0, 0x7f070210

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f07006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->b:Landroid/widget/TextView;

    const v0, 0x7f070211

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->d:Landroid/widget/TextView;

    const v0, 0x7f070037

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->c:Landroid/widget/TextView;

    const v0, 0x7f070213

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/widget/ag;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ag;->b:Landroid/widget/TextView;

    const v1, 0x7f090156

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/widget/ah;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ah;-><init>(Lcom/estrongs/android/widget/ag;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ag;)Lcom/estrongs/android/widget/aj;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ag;->l:Lcom/estrongs/android/widget/aj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    const-wide/16 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/widget/ag;->i:Ljava/lang/CharSequence;

    iput-wide v1, p0, Lcom/estrongs/android/widget/ag;->h:J

    iput-wide v1, p0, Lcom/estrongs/android/widget/ag;->g:J

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/widget/ag;->k:I

    return-void
.end method

.method public a(J)V
    .registers 5

    iput-wide p1, p0, Lcom/estrongs/android/widget/ag;->g:J

    iget-object v0, p0, Lcom/estrongs/android/widget/ag;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/ag;->l:Lcom/estrongs/android/widget/aj;

    return-void
.end method

.method public b(J)V
    .registers 5

    iput-wide p1, p0, Lcom/estrongs/android/widget/ag;->h:J

    iget-object v0, p0, Lcom/estrongs/android/widget/ag;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/widget/ag;->i:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/estrongs/android/widget/ag;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
