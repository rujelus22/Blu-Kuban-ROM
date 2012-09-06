.class public Lcom/estrongs/android/widget/a;
.super Landroid/app/AlertDialog;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/Activity;

.field protected c:Lcom/estrongs/android/widget/e;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/estrongs/android/widget/a;->d:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/estrongs/android/widget/a;->e:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/estrongs/android/widget/a;->f:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/estrongs/android/widget/a;->g:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/estrongs/android/widget/a;->h:Landroid/widget/Button;

    iput-object v2, p0, Lcom/estrongs/android/widget/a;->i:Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/widget/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/b;-><init>(Lcom/estrongs/android/widget/a;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/estrongs/android/widget/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/c;-><init>(Lcom/estrongs/android/widget/a;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/widget/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/d;-><init>(Lcom/estrongs/android/widget/a;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->l:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/widget/a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/widget/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09002f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/a;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/widget/a;->setView(Landroid/view/View;)V

    const v0, 0x7f070157

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->d:Landroid/widget/EditText;

    const v0, 0x7f070159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->e:Landroid/widget/EditText;

    const v0, 0x7f07015b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->f:Landroid/widget/CheckBox;

    const v0, 0x7f07018f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->g:Landroid/widget/CheckBox;

    const v0, 0x7f0700c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->h:Landroid/widget/Button;

    const v0, 0x7f070166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/widget/a;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->f:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/estrongs/android/widget/a;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/widget/a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->i:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/widget/a;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v3, [I

    fill-array-data v0, :array_cc

    new-array v2, v3, [I

    fill-array-data v2, :array_dc

    invoke-static {p1, v1, v0, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Landroid/app/Activity;Landroid/view/View;[I[I)V

    return-void

    nop

    :array_cc
    .array-data 0x4
        0x8dt 0x1t 0x7t 0x7ft
        0x8et 0x1t 0x7t 0x7ft
        0x5bt 0x1t 0x7t 0x7ft
        0x8ft 0x1t 0x7t 0x7ft
        0x66t 0x1t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
    .end array-data

    :array_dc
    .array-data 0x4
        0x37t 0x0t 0x9t 0x7ft
        0x38t 0x0t 0x9t 0x7ft
        0x39t 0x0t 0x9t 0x7ft
        0x3at 0x0t 0x9t 0x7ft
        0x5et 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/widget/a;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->f:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/widget/a;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/a;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/a;->g:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/widget/e;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/a;->c:Lcom/estrongs/android/widget/e;

    return-void
.end method
