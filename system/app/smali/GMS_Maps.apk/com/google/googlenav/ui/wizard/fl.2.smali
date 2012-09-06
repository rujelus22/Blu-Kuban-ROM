.class public Lcom/google/googlenav/ui/wizard/fL;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private A:Z

.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:Lcom/google/googlenav/ui/wizard/fU;

.field private d:Landroid/widget/ArrayAdapter;

.field private e:Landroid/app/Dialog;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ListView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Ljava/lang/String;

.field private final z:Lcom/google/googlenav/ui/view/android/aK;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 161
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/android/aK;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    const v0, 0x7f0f0018

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 149
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    .line 150
    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/fL;->A:Z

    .line 151
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fL;->w_()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100025

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/aK;->b()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/fL;->a(Ljava/lang/CharSequence;II)V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/view/android/aK;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fL;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fL;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 5
    .parameter

    .prologue
    .line 551
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 552
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/fT;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fT;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 582
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 216
    const v0, 0x7f1001a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 217
    const v0, 0x7f1001a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/aK;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/fM;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fM;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1, v2}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 230
    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->m:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/aK;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v0, 0x7f1000a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->n:Landroid/view/View;

    .line 234
    const v0, 0x7f1000a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    .line 235
    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->p:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fN;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fN;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fL;)Lcom/google/googlenav/ui/wizard/fU;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/wizard/fU;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 249
    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->r:Landroid/view/View;

    .line 252
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_55

    .line 253
    const v0, 0x7f1003f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    const/16 v1, 0x500

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 256
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fO;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fO;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 266
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fP;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fP;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 278
    const v0, 0x7f1003f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->t:Landroid/widget/ImageButton;

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fQ;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fQ;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_55
    const v0, 0x7f100036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    .line 289
    const v0, 0x7f1000b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->v:Landroid/widget/TextView;

    .line 291
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fL;->o()V

    .line 292
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fL;->v()V

    .line 294
    new-instance v0, Lcom/google/googlenav/ui/wizard/fV;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fL;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/fV;-><init>(Lcom/google/googlenav/ui/wizard/fL;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/fM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:Landroid/widget/ArrayAdapter;

    .line 295
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fR;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fR;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 312
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/fL;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/fL;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/fL;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/fL;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/fL;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private o()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->w:Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->w:Landroid/view/View;

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    const/16 v1, 0x25

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->w:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->w:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/wizard/fS;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fS;-><init>(Lcom/google/googlenav/ui/wizard/fL;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Landroid/view/LayoutInflater;

    const v1, 0x1090004

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->x:Landroid/view/View;

    .line 341
    return-void
.end method

.method private v()V
    .registers 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->u:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->x:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 353
    return-void
.end method


# virtual methods
.method public I_()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aK;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aK;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/aK;->e()Lag/f;

    move-result-object v1

    new-array v2, v5, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/view/android/aK;->d()I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/fL;->a(ZILag/f;[I)V

    .line 172
    :cond_23
    return-void
.end method

.method protected K_()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 185
    :cond_11
    return-void
.end method

.method protected N_()V
    .registers 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fL;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 178
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 437
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 438
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 442
    :cond_1f
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/fU;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/wizard/fU;

    .line 361
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 367
    if-nez p1, :cond_4

    .line 368
    const-string p1, ""

    .line 370
    :cond_4
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fL;->y:Ljava/lang/String;

    .line 371
    const/16 v0, 0x4f6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fL;->a(I)V

    .line 372
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 373
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 375
    :cond_1d
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 381
    if-eqz p1, :cond_28

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 383
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 384
    new-instance v2, Lcom/google/googlenav/h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 385
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 383
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 387
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 389
    :cond_28
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 596
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1001de

    if-ne v0, v1, :cond_19

    .line 598
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/wizard/fU;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fU;->a()V

    .line 600
    const/4 v0, 0x1

    .line 602
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 587
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_12

    .line 589
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 591
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 450
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 451
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 455
    :cond_20
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fL;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->w:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 462
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Landroid/view/LayoutInflater;

    .line 191
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 197
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/fL;->a(Landroid/view/View;)V

    .line 203
    :goto_27
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/fL;->b(Landroid/view/View;)V

    .line 206
    const v0, 0x7f100087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    const/16 v3, 0x4f6

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 208
    return-object v1

    .line 199
    :cond_3f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fL;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/aK;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_c

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->c:Lcom/google/googlenav/ui/wizard/fU;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fU;->b()V

    .line 409
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public m()V
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->q:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setHidden()V

    .line 424
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 425
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->o:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 429
    :cond_1e
    return-void
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 526
    sget-object v0, Lcom/google/googlenav/ui/wizard/fL;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 528
    const v0, 0x7f1001de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_1e

    .line 530
    const/16 v1, 0x439

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 533
    :cond_1e
    const v0, 0x7f1004b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 534
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/fL;->A:Z

    if-eqz v1, :cond_42

    .line 535
    if-eqz v0, :cond_34

    .line 536
    const/16 v1, 0x256

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 543
    :cond_34
    :goto_34
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_40

    .line 545
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fL;->a(Landroid/view/MenuItem;)V

    .line 547
    :cond_40
    const/4 v0, 0x1

    return v0

    .line 539
    :cond_42
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_34
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fL;->z:Lcom/google/googlenav/ui/view/android/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aK;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
