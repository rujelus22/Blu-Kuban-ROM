.class public Lcom/estrongs/android/pop/app/CompressActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/Spinner;

.field private B:Z

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field a:Z

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/estrongs/io/archive/i;

.field d:Ljava/lang/Object;

.field private e:Landroid/widget/EditText;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/RadioGroup;

.field private j:Landroid/content/res/Resources;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/estrongs/io/archive/d;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Lcom/estrongs/io/a/a/b;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/CheckBox;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->a:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->n:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->w:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->x:Landroid/widget/CheckBox;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->B:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x0

    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->y:Landroid/view/View;

    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->w:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->w:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/estrongs/android/pop/app/be;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/be;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Lcom/estrongs/android/pop/app/bf;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/bf;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->x:Landroid/widget/CheckBox;

    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->z:Landroid/view/View;

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->A:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->A:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x1

    const-string v0, ""

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2e

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "current_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_28

    :cond_26
    const-string v0, "allfiles"

    :cond_28
    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2e
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->j:Landroid/content/res/Resources;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/CompressActivity;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/CompressActivity;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->a:Z

    if-nez v0, :cond_46

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->d()V

    :cond_46
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->e()V

    return-void
.end method

.method private d()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->a:Z

    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->n:Landroid/widget/ProgressBar;

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->s:Landroid/widget/Button;

    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->t:Landroid/widget/Button;

    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_80
    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    if-nez v0, :cond_d8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_8c
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    new-instance v0, Lcom/estrongs/io/archive/d;

    const-string v1, "\u7cfb\u7edf\u9519\u8bef\uff0c\u538b\u7f29\u5931\u8d25"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/io/archive/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9d} :catch_ec

    :goto_9d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->b(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->c(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->a(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->d(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->e(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->f(Landroid/widget/TextView;)V

    new-instance v0, Lcom/estrongs/io/a/a/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    invoke-direct {v0, v1}, Lcom/estrongs/io/a/a/b;-><init>(Lcom/estrongs/io/archive/d;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->v:Lcom/estrongs/io/a/a/b;

    return-void

    :cond_d8
    :try_start_d8
    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    goto :goto_8c

    :cond_db
    new-instance v0, Lcom/estrongs/io/archive/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->j:Landroid/content/res/Resources;

    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/io/archive/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_eb} :catch_ec

    goto :goto_9d

    :catch_ec
    move-exception v0

    goto :goto_9d
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/CompressActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/CompressActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/bi;

    const-string v2, "ArchiveCompress"

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/bi;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/bi;->start()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/CompressActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->m:Lcom/estrongs/io/archive/d;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->A:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/a/a/b;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->v:Lcom/estrongs/io/a/a/b;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070035

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/CompressActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->finish()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const v1, 0x7f070034

    if-ne v0, v1, :cond_f6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_47

    :cond_34
    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->j:Landroid/content/res/Resources;

    const v1, 0x7f09014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11

    :cond_47
    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090022

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/CompressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/app/bg;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bg;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/app/bh;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/bh;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_11

    :cond_f1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->c()V

    goto/16 :goto_11

    :cond_f6
    const v1, 0x7f070040

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->v:Lcom/estrongs/io/a/a/b;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->finish()V

    goto/16 :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/16 v5, 0x9

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "files_selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_33

    :cond_21
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->finish()V

    :goto_32
    return-void

    :cond_33
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->j:Landroid/content/res/Resources;

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/pop/app/bc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bc;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->i:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->i:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/estrongs/android/pop/app/bd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bd;-><init>(Lcom/estrongs/android/pop/app/CompressActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->l:Landroid/view/View;

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->k:Landroid/view/View;

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/CompressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_d9

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_bb
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->b()V

    new-array v0, v5, [I

    fill-array-data v0, :array_100

    new-array v1, v5, [I

    fill-array-data v1, :array_116

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/CompressActivity;->a([I[I)V

    const v0, 0x7f070031

    const v1, 0x7f0901ab

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/CompressActivity;->b(II)V

    goto/16 :goto_32

    :cond_d9
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_ee

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f2

    :cond_ee
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->finish()V

    goto :goto_bb

    :cond_f2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_bb

    :cond_fc
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_bb

    :array_100
    .array-data 0x4
        0x2dt 0x0t 0x7t 0x7ft
        0x30t 0x0t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
        0x34t 0x0t 0x7t 0x7ft
        0x35t 0x0t 0x7t 0x7ft
        0x39t 0x0t 0x7t 0x7ft
        0x3et 0x0t 0x7t 0x7ft
        0x3ft 0x0t 0x7t 0x7ft
        0x40t 0x0t 0x7t 0x7ft
    .end array-data

    :array_116
    .array-data 0x4
        0xbct 0x1t 0x9t 0x7ft
        0x62t 0x0t 0x9t 0x7ft
        0xa6t 0x1t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
        0x56t 0x1t 0x9t 0x7ft
        0x47t 0x1t 0x9t 0x7ft
        0x48t 0x1t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->v:Lcom/estrongs/io/a/a/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/CompressActivity;->v:Lcom/estrongs/io/a/a/b;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->f()V

    :cond_10
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/CompressActivity;->finish()V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
