.class public Lcom/estrongs/android/pop/app/ArchiveProgressActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static d:Z

.field private static r:Landroid/os/HandlerThread;

.field private static y:Landroid/content/Intent;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/res/Resources;

.field c:Lcom/estrongs/io/archive/d;

.field e:Z

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/content/Intent;

.field private o:Lcom/estrongs/io/a/a/a;

.field private p:Landroid/app/AlertDialog;

.field private q:Lcom/estrongs/android/pop/app/cp;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/estrongs/io/archive/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->r:Landroid/os/HandlerThread;

    sput-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->y:Landroid/content/Intent;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->g:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->s:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Lcom/estrongs/io/archive/h;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/android/pop/app/cp;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d:Z

    new-instance v0, Lcom/estrongs/android/pop/app/f;

    const-string v1, "ArchiveExtract"

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/f;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Ljava/lang/String;I)V

    sput-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->r:Landroid/os/HandlerThread;

    sget-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->s:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/archive/h;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/io/a/a/a;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    if-nez v0, :cond_31

    new-instance v0, Lcom/estrongs/android/pop/app/cp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/cp;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    const/4 v1, -0x1

    const v2, 0x7f09005e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/j;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/j;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/cp;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    const/4 v1, -0x2

    const v2, 0x7f090060

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/k;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/k;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/cp;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_31
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    if-nez v0, :cond_27

    new-instance v0, Lcom/estrongs/android/pop/app/bj;

    new-instance v1, Lcom/estrongs/android/pop/app/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/h;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/bj;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/bm;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    const v1, 0x7f090022

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    new-instance v1, Lcom/estrongs/android/pop/app/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/i;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_27
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0900bd

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->r:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->f()V

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->d()V

    :cond_20
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->setResult(I)V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "archive_file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->y:Landroid/content/Intent;

    :cond_12
    sget-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->y:Landroid/content/Intent;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07003e

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->n:Landroid/content/Intent;

    const-string v1, "cmd_name"

    const-string v2, "runInBG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->n:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->finish()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const v1, 0x7f07003f

    if-ne v0, v1, :cond_52

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->e:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f090148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->e()V

    goto :goto_1a

    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->d()V

    goto :goto_1a

    :cond_52
    const v1, 0x7f070040

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->x:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->d()V

    :cond_60
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->finish()V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b:Landroid/content/res/Resources;

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "archive_file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "charset_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->v:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->u:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->finish()V

    :goto_e6
    return-void

    :cond_e7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "output_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "files_selected"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->w:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "reload"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->s:Z

    new-instance v1, Lcom/estrongs/android/pop/app/c;

    const v2, 0x7f090150

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/estrongs/android/pop/app/c;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->c(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->a(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->a(Landroid/widget/ProgressBar;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->d(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->e(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->f(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->c:Lcom/estrongs/io/archive/d;

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/d;-><init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Lcom/estrongs/io/archive/d;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    sget-object v0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->r:Landroid/os/HandlerThread;

    if-nez v0, :cond_17f

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b()V

    :cond_17f
    new-array v0, v4, [I

    fill-array-data v0, :array_18e

    new-array v1, v4, [I

    fill-array-data v1, :array_198

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a([I[I)V

    goto/16 :goto_e6

    :array_18e
    .array-data 0x4
        0x3et 0x0t 0x7t 0x7ft
        0x3ft 0x0t 0x7t 0x7ft
        0x40t 0x0t 0x7t 0x7ft
    .end array-data

    :array_198
    .array-data 0x4
        0x47t 0x1t 0x9t 0x7ft
        0x48t 0x1t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->p:Landroid/app/AlertDialog;

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a()V

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->q:Lcom/estrongs/android/pop/app/cp;

    goto :goto_4

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->o:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->finish()V

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
