.class public Lcom/estrongs/android/pop/view/MultiFilesProperty;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private g:Lcom/estrongs/android/pop/d/e;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->g:Lcom/estrongs/android/pop/d/e;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->j:Z

    new-instance v0, Lcom/estrongs/android/pop/view/ii;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ii;-><init>(Lcom/estrongs/android/pop/view/MultiFilesProperty;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .registers 6

    const v0, 0x7f0700d1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700d0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v1, 0x7f0700d5

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0700d9

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0700d7

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090198

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/view/ij;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->i:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/pop/view/ij;-><init>(Lcom/estrongs/android/pop/view/MultiFilesProperty;Ljava/util/List;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ij;->start()V

    return-void
.end method

.method private a(Landroid/widget/TextView;J)V
    .registers 9

    invoke-static {p2, p3}, Lcom/estrongs/android/util/a/b;->a(J)J

    move-result-wide v0

    const-string v2, ""

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6d

    const-wide/16 v0, 0x1

    move-wide v1, v0

    :goto_f
    const-wide/32 v3, 0x40000000

    cmp-long v0, v1, v3

    if-ltz v0, :cond_57

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->c:Ljava/lang/String;

    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2, p3, v1, v2}, Lcom/estrongs/android/util/a/b;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/estrongs/android/util/a/b;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_57
    const-wide/32 v3, 0x100000

    cmp-long v0, v1, v3

    if-ltz v0, :cond_61

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->d:Ljava/lang/String;

    goto :goto_18

    :cond_61
    const-wide/16 v3, 0x400

    cmp-long v0, v1, v3

    if-ltz v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->e:Ljava/lang/String;

    goto :goto_18

    :cond_6a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->f:Ljava/lang/String;

    goto :goto_18

    :cond_6d
    move-wide v1, v0

    goto :goto_f
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/MultiFilesProperty;Landroid/widget/TextView;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/MultiFilesProperty;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/MultiFilesProperty;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->j:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x6

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f090044

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setTitle(I)V

    const v0, 0x7f03002f

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->a:Ljava/lang/String;

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->b:Ljava/lang/String;

    const-string v0, "GB"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->c:Ljava/lang/String;

    const-string v0, "MB"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->d:Ljava/lang/String;

    const-string v0, "KB"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->e:Ljava/lang/String;

    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "G\ufffd\ufffd"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->c:Ljava/lang/String;

    const-string v0, "M\ufffd\ufffd"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->d:Ljava/lang/String;

    const-string v0, "K\ufffd\ufffd"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->e:Ljava/lang/String;

    :cond_5f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_INFORMATION_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->h:Ljava/lang/String;

    if-nez v0, :cond_73

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->finish()V

    :cond_72
    :goto_72
    return-void

    :cond_73
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "files_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->i:Ljava/util/List;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_72

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->a()V

    const v0, 0x7f0700ee

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v2, [I

    fill-array-data v0, :array_ac

    new-array v1, v2, [I

    fill-array-data v1, :array_bc

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->a([I[I)V

    goto :goto_72

    nop

    :array_ac
    .array-data 0x4
        0xd4t 0x0t 0x7t 0x7ft
        0xd6t 0x0t 0x7t 0x7ft
        0xd7t 0x0t 0x7t 0x7ft
        0xd8t 0x0t 0x7t 0x7ft
        0xd9t 0x0t 0x7t 0x7ft
        0xeet 0x0t 0x7t 0x7ft
    .end array-data

    :array_bc
    .array-data 0x4
        0x46t 0x0t 0x9t 0x7ft
        0x48t 0x0t 0x9t 0x7ft
        0x7bt 0x0t 0x9t 0x7ft
        0x47t 0x0t 0x9t 0x7ft
        0x7bt 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/MultiFilesProperty;->j:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/MultiFilesProperty;->finish()V

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
