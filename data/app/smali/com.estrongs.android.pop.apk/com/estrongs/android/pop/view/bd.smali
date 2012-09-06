.class public Lcom/estrongs/android/pop/view/bd;
.super Lcom/estrongs/android/widget/as;


# instance fields
.field protected a:Landroid/widget/CheckBox;

.field protected b:Landroid/widget/CheckBox;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Z

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Landroid/view/View;

.field protected l:Lcom/estrongs/android/widget/at;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/widget/as;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/bd;->e:Ljava/lang/String;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const v1, 0x7f0700b9

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0700bc

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->c:Landroid/widget/TextView;

    const v1, 0x7f0700bf

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->d:Landroid/widget/TextView;

    const v1, 0x7f0700ba

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->a:Landroid/widget/CheckBox;

    const v1, 0x7f0700bd

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->b:Landroid/widget/CheckBox;

    const v1, 0x7f0700c0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->h:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/view/be;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/be;-><init>(Lcom/estrongs/android/pop/view/bd;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700c1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->i:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/view/bf;

    invoke-direct {v2, p0, p3}, Lcom/estrongs/android/pop/view/bf;-><init>(Lcom/estrongs/android/pop/view/bd;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700c2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/view/bg;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/bg;-><init>(Lcom/estrongs/android/pop/view/bd;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700bb

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->j:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->j:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/view/bh;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/bh;-><init>(Lcom/estrongs/android/pop/view/bd;Landroid/text/ClipboardManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/bd;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/bd;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->k:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bd;->k:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/view/bi;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/bi;-><init>(Lcom/estrongs/android/pop/view/bd;Landroid/text/ClipboardManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v4, [I

    fill-array-data v0, :array_ca

    new-array v1, v4, [I

    fill-array-data v1, :array_d6

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/bd;->a([I[I)V

    return-void

    nop

    :array_ca
    .array-data 0x4
        0xb8t 0x0t 0x7t 0x7ft
        0xc0t 0x0t 0x7t 0x7ft
        0xc1t 0x0t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
    .end array-data

    :array_d6
    .array-data 0x4
        0x73t 0x0t 0x9t 0x7ft
        0x14t 0x2t 0x9t 0x7ft
        0x7ct 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bd;->o:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/bd;->g:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bd;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bd;->f:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_c
    return-void
.end method

.method public a(Lcom/estrongs/android/widget/at;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bd;->l:Lcom/estrongs/android/widget/at;

    return-void
.end method

.method protected b()I
    .registers 2

    const v0, 0x7f030014

    return v0
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bd;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bd;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_a
    new-instance v0, Lcom/estrongs/android/pop/view/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/bj;-><init>(Lcom/estrongs/android/pop/view/bd;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/bd;->f:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bd;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
