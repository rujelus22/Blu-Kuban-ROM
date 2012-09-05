.class public Lcom/google/googlenav/ui/wizard/dY;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;

.field private final g:LaR/i;

.field private h:LaY/Y;

.field private i:Lcom/google/googlenav/ui/wizard/ed;

.field private j:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaR/i;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dY;->g:LaR/i;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dY;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method private a(Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;
    .registers 6

    new-instance v1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dY;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0201c8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x2b4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/google/googlenav/ui/wizard/dZ;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/googlenav/ui/wizard/dZ;-><init>(Lcom/google/googlenav/ui/wizard/dY;Landroid/widget/EditText;Lcom/google/googlenav/prefetch/android/n;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/16 v0, 0x2b2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_46
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object v2

    :cond_4d
    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/n;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_46
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dY;->a(Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dY;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->j:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dY;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dY;->j:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/ui/wizard/ed;)Lcom/google/googlenav/ui/wizard/ed;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dY;->i:Lcom/google/googlenav/ui/wizard/ed;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dY;)LaR/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->g:LaR/i;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dY;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x2b0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/googlenav/ui/wizard/eb;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/eb;-><init>(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/prefetch/android/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dY;->b(Lcom/google/googlenav/prefetch/android/n;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dY;)Lcom/google/googlenav/ui/wizard/ed;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->i:Lcom/google/googlenav/ui/wizard/ed;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/dY;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->h:LaY/Y;

    return-object v0
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(LaY/Y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dY;->h:LaY/Y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dY;->l()V

    return-void
.end method

.method protected b()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/eh;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eh;-><init>(Lcom/google/googlenav/ui/wizard/dY;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    const-string v0, "wo"

    invoke-static {v0}, Lcom/google/googlenav/ui/aG;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->i()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dY;->a()V

    return-void
.end method
