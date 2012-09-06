.class public Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field private static p:Z


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/Spinner;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/app/AlertDialog$Builder;

.field private l:Landroid/view/View;

.field private m:Lcom/estrongs/android/pop/l;

.field private n:Lcom/estrongs/android/pop/l;

.field private o:Z

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->e:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->f:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->g:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->i:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->j:Landroid/widget/CheckBox;

    new-instance v0, Lcom/estrongs/android/pop/l;

    invoke-direct {v0}, Lcom/estrongs/android/pop/l;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m:Lcom/estrongs/android/pop/l;

    new-instance v0, Lcom/estrongs/android/pop/l;

    invoke-direct {v0}, Lcom/estrongs/android/pop/l;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->n:Lcom/estrongs/android/pop/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->o:Z

    new-instance v0, Lcom/estrongs/android/pop/view/lk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/lk;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .registers 5

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;I)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/estrongs/android/pop/a/f;->b()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    invoke-static {}, Lcom/estrongs/android/pop/a/f;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    invoke-static {}, Lcom/estrongs/android/pop/a/f;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_31
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    invoke-static {}, Lcom/estrongs/android/pop/a/f;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_3f
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->o:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->m:Lcom/estrongs/android/pop/l;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Lcom/estrongs/android/pop/l;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->n:Lcom/estrongs/android/pop/l;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->j:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 7

    const v5, 0x1090009

    const v4, 0x1090008

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f0701f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f0701f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_WORKING_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    :try_start_3b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_60} :catch_176

    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_82

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    :cond_82
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_154

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_136

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    :goto_97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090143

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_158

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_b8
    :goto_b8
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b:Landroid/widget/Spinner;

    new-instance v1, Lcom/estrongs/android/pop/view/lu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/lu;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const v2, 0x7f09013c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f09018f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c:Landroid/widget/Spinner;

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->T()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_97

    :cond_154
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    goto/16 :goto_97

    :cond_158
    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_167

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_b8

    :cond_167
    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->c(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_b8

    :catch_176
    move-exception v0

    goto/16 :goto_60
.end method

.method a(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/view/lt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/lt;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v0, Lcom/estrongs/android/util/p;

    invoke-direct {v0}, Lcom/estrongs/android/util/p;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1a
    if-lt v0, v2, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method b()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f070203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->e:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->j:Landroid/widget/CheckBox;

    new-instance v0, Lcom/estrongs/android/pop/view/ll;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->d:Landroid/widget/Spinner;

    const v2, 0x7f0a000d

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/view/ll;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V

    new-instance v0, Lcom/estrongs/android/pop/view/lm;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->e:Landroid/widget/Spinner;

    const v2, 0x7f0a000e

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/view/lm;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;Landroid/widget/Spinner;I)V

    return-void
.end method

.method b(Ljava/util/List;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1c
    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, p2}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/ba;->A()[Ljcifs/smb/ba;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-eqz v1, :cond_2f

    array-length v3, v1

    :goto_2d
    if-lt v0, v3, :cond_36

    :cond_2f
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_35
    return-void

    :cond_36
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljcifs/smb/ba;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljcifs/smb/ba;->v()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v4}, Ljcifs/smb/ba;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_5a} :catch_5d
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_5a} :catch_62

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_35

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_35
.end method

.method c(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_25
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_87

    move-result v0

    const/16 v2, 0x226

    if-ne v0, v2, :cond_42

    if-eqz v1, :cond_3c

    :try_start_36
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :cond_42
    :try_start_42
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "."

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    if-eqz v3, :cond_5d

    array-length v4, v3

    const/4 v0, 0x0

    :goto_55
    if-lt v0, v4, :cond_6b

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5d} :catch_87

    :cond_5d
    if-eqz v1, :cond_3c

    :try_start_5f
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_65} :catch_66

    goto :goto_3c

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :cond_6b
    :try_start_6b
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_84} :catch_87

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_99

    if-eqz v1, :cond_3c

    :try_start_8d
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_93} :catch_94

    goto :goto_3c

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catchall_99
    move-exception v0

    if-eqz v1, :cond_a2

    :try_start_9c
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a2} :catch_a3

    :cond_a2
    :goto_a2
    throw v0

    :catch_a3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030044

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f0701fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/ln;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ln;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/view/lo;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/lo;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/lp;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/lp;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/lq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/lq;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    sget-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t:[Ljava/lang/String;

    sget v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:I

    aget-object v1, v1, v2

    new-instance v2, Lcom/estrongs/android/pop/view/lr;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/lr;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/estrongs/android/pop/view/ls;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ls;-><init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    sget-boolean v0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->p:Z

    if-nez v0, :cond_bd

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->k:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    sput-boolean v3, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->p:Z

    :goto_93
    new-array v0, v5, [I

    fill-array-data v0, :array_d8

    new-array v1, v5, [I

    fill-array-data v1, :array_ea

    iget-object v2, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    invoke-static {p0, v2, v0, v1}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    const v1, 0x7f0701f5

    const v2, 0x7f09014a

    invoke-static {p0, v0, v1, v2}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->b(Landroid/app/Activity;Landroid/view/View;II)V

    new-array v2, v4, [I

    fill-array-data v2, :array_fc

    new-array v3, v4, [I

    fill-array-data v3, :array_108

    const/4 v0, 0x0

    move v1, v0

    :goto_b9
    array-length v0, v2

    if-lt v1, v0, :cond_c1

    return-void

    :cond_bd
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->finish()V

    goto :goto_93

    :cond_c1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->l:Landroid/view/View;

    aget v4, v2, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    aget v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b9

    :array_d8
    .array-data 0x4
        0xf4t 0x1t 0x7t 0x7ft
        0xf6t 0x1t 0x7t 0x7ft
        0xf8t 0x1t 0x7t 0x7ft
        0xa8t 0x1t 0x7t 0x7ft
        0xfdt 0x1t 0x7t 0x7ft
        0xfft 0x1t 0x7t 0x7ft
        0x2t 0x2t 0x7t 0x7ft
    .end array-data

    :array_ea
    .array-data 0x4
        0x9bt 0x1t 0x9t 0x7ft
        0x87t 0x0t 0x9t 0x7ft
        0x9ct 0x1t 0x9t 0x7ft
        0x91t 0x1t 0x9t 0x7ft
        0x9at 0x1t 0x9t 0x7ft
        0x92t 0x1t 0x9t 0x7ft
        0x93t 0x1t 0x9t 0x7ft
    .end array-data

    :array_fc
    .array-data 0x4
        0xf7t 0x1t 0x7t 0x7ft
        0xf9t 0x1t 0x7t 0x7ft
        0x0t 0x2t 0x7t 0x7ft
        0x3t 0x2t 0x7t 0x7ft
    .end array-data

    :array_108
    .array-data 0x4
        0x7t 0x1t 0x9t 0x7ft
        0x7t 0x1t 0x9t 0x7ft
        0x92t 0x1t 0x9t 0x7ft
        0x93t 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->p:Z

    return-void
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

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;->p:Z

    return-void
.end method
