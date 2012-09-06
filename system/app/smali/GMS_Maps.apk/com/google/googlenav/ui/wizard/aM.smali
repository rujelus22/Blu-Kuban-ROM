.class public Lcom/google/googlenav/ui/wizard/am;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/ViewGroup;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/EditText;

.field private H:Lcom/google/android/apps/circles/people/AudienceView;

.field private I:Landroid/widget/CheckBox;

.field private J:Landroid/widget/CheckBox;

.field private K:Lcom/google/android/apps/plusone/widgets/ActionButton;

.field private L:Ljava/lang/String;

.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:Lcom/google/googlenav/ui/wizard/aB;

.field private d:Landroid/widget/ArrayAdapter;

.field private e:Ljava/lang/Boolean;

.field private m:Z

.field private n:Landroid/app/Dialog;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/View;

.field private t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/ListView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 217
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 218
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->e:Ljava/lang/Boolean;

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/am;->m:Z

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/g;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    const v0, 0x7f0f0018

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 211
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->e:Ljava/lang/Boolean;

    .line 212
    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/am;->m:Z

    .line 213
    return-void
.end method

.method private A()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04000a

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->z:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->z:Landroid/view/View;

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 511
    const/16 v1, 0x25

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->z:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ar;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ar;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Landroid/view/LayoutInflater;

    const v1, 0x1090004

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->A:Landroid/view/View;

    .line 528
    return-void
.end method

.method private B()V
    .registers 5

    .prologue
    .line 535
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 536
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 542
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->A:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 543
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->c:Lcom/google/googlenav/ui/wizard/aB;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/am;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/am;->L:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)V
    .registers 5
    .parameter

    .prologue
    .line 861
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 862
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/as;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/as;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 894
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 272
    const v0, 0x7f1001a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 273
    const v0, 0x7f1001a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02020d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/an;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/an;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1, v2}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 286
    const v0, 0x7f100039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->p:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->p:Landroid/widget/TextView;

    const/16 v1, 0x8e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v0, 0x7f1000a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->q:Landroid/view/View;

    .line 289
    const v0, 0x7f1000a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    .line 290
    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->s:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/at;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/at;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 497
    const/16 v0, 0x5c

    const-string v1, "cno"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 304
    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->u:Landroid/view/View;

    .line 307
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_55

    .line 308
    const v0, 0x7f1003f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    const/16 v1, 0x500

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 311
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    new-instance v1, Lcom/google/googlenav/ui/wizard/au;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/au;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    new-instance v1, Lcom/google/googlenav/ui/wizard/av;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/av;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 333
    const v0, 0x7f1003f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->w:Landroid/widget/ImageButton;

    .line 335
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->w:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/googlenav/ui/wizard/aw;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aw;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_55
    const v0, 0x7f100036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    .line 344
    const v0, 0x7f1000b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->y:Landroid/widget/TextView;

    .line 346
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/am;->A()V

    .line 347
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/am;->B()V

    .line 349
    new-instance v0, Lcom/google/googlenav/ui/wizard/aC;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/aC;-><init>(Lcom/google/googlenav/ui/wizard/am;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/an;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->d:Landroid/widget/ArrayAdapter;

    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ax;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ax;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->x:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 367
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->d:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 373
    const v0, 0x7f1000ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/circles/people/AudienceView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->H:Lcom/google/android/apps/circles/people/AudienceView;

    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->H:Lcom/google/android/apps/circles/people/AudienceView;

    new-instance v2, Lcom/google/googlenav/ui/wizard/ay;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ay;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/circles/people/AudienceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v0, 0x7f1000a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->C:Landroid/view/ViewGroup;

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->C:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/am;->m:Z

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->C:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/am;->m:Z

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 384
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/am;->m:Z

    if-eqz v0, :cond_3d

    .line 385
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->C:Landroid/view/ViewGroup;

    new-instance v2, Lcom/google/googlenav/ui/wizard/az;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/az;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :cond_3d
    const v0, 0x7f1000a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->D:Landroid/view/View;

    .line 397
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/am;->D:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/am;->m:Z

    if-eqz v0, :cond_105

    move v0, v1

    :goto_4d
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    const v0, 0x7f1000a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->B:Landroid/view/View;

    .line 400
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->E:Landroid/widget/TextView;

    .line 401
    const v0, 0x7f1000ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->F:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f1000ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->G:Landroid/widget/EditText;

    .line 403
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->G:Landroid/widget/EditText;

    const/16 v2, 0xbd

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 404
    const v0, 0x7f1000b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    .line 405
    const v0, 0x7f1000b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    .line 409
    const v0, 0x7f1000af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 410
    const/16 v2, 0xa0

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/googlenav/ui/wizard/aA;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/aA;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    const/16 v2, 0xb8

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/googlenav/ui/wizard/ao;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ao;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    const/16 v2, 0xb9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 432
    const v0, 0x7f1000ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plusone/widgets/ActionButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    .line 433
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    const/16 v1, 0x9b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ap;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ap;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    return-void

    .line 397
    :cond_105
    const/16 v0, 0x8

    goto/16 :goto_4d
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 457
    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->o:Landroid/view/View;

    .line 459
    const-string v0, "d"

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Ljava/lang/String;)V

    .line 462
    const v0, 0x7f1001a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 463
    const/16 v1, 0xa1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const v0, 0x7f1001a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 466
    const v1, 0x7f1001a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 468
    const/16 v2, 0xa3

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/16 v2, 0xa2

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 471
    new-instance v2, Lcom/google/googlenav/ui/wizard/aq;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/aq;-><init>(Lcom/google/googlenav/ui/wizard/am;)V

    .line 489
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/am;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected K_()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 233
    :cond_11
    return-void
.end method

.method protected N_()V
    .registers 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 226
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 695
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 696
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 697
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 701
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    .line 702
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .registers 2
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/am;->n:Landroid/app/Dialog;

    .line 783
    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 557
    if-eqz p1, :cond_52

    .line 558
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->F:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->h()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 583
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    if-eqz p2, :cond_4e

    move v0, v1

    :goto_37
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 585
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    if-eqz p2, :cond_50

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 597
    :goto_4a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->l()V

    .line 598
    return-void

    :cond_4e
    move v0, v2

    .line 583
    goto :goto_37

    :cond_50
    move v1, v2

    .line 585
    goto :goto_47

    .line 588
    :cond_52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    .line 592
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 593
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 595
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4a
.end method

.method public a(Lcom/google/googlenav/ui/wizard/aB;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/am;->c:Lcom/google/googlenav/ui/wizard/aB;

    .line 551
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 618
    if-eqz p1, :cond_28

    .line 619
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 620
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 621
    new-instance v2, Lcom/google/googlenav/h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 622
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 620
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 624
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 626
    :cond_28
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 911
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001de

    if-ne v1, v2, :cond_19

    .line 913
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->c:Lcom/google/googlenav/ui/wizard/aB;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/aB;->a()V

    .line 920
    :goto_18
    return v0

    .line 916
    :cond_19
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1004b1

    if-ne v1, v2, :cond_28

    .line 917
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->c:Lcom/google/googlenav/ui/wizard/aB;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/aB;->b()V

    goto :goto_18

    .line 920
    :cond_28
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 899
    const/4 v0, 0x0

    .line 906
    :goto_7
    return v0

    .line 902
    :cond_8
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_1a

    .line 904
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 906
    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 710
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 711
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 715
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    .line 716
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 604
    if-nez p1, :cond_4

    .line 605
    const-string p1, ""

    .line 607
    :cond_4
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/am;->L:Ljava/lang/String;

    .line 608
    const/16 v0, 0x4f6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/am;->a(I)V

    .line 609
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 610
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 612
    :cond_1d
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->H:Lcom/google/android/apps/circles/people/AudienceView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/circles/people/AudienceView;->setAudience(Ljava/util/List;)V

    .line 667
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 726
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Landroid/view/LayoutInflater;

    .line 239
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 244
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 245
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/am;->d(Landroid/view/View;)V

    .line 248
    :cond_29
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 250
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/am;->a(Landroid/view/View;)V

    .line 256
    :goto_32
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(Landroid/view/View;)V

    .line 259
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/am;->c(Landroid/view/View;)V

    .line 262
    const v0, 0x7f100087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    .line 263
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    const/16 v3, 0x4f6

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 264
    return-object v1

    .line 252
    :cond_4d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method

.method public c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/am;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 635
    return-void
.end method

.method public c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->z:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 733
    return-void
.end method

.method public d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 764
    return-void
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 925
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 641
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_c

    .line 642
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->c:Lcom/google/googlenav/ui/wizard/aB;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aB;->g()V

    .line 647
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 653
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 654
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->c:Lcom/google/googlenav/ui/wizard/aB;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aB;->g()V

    .line 659
    return-void
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

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

.method public n()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 681
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->t:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setHidden()V

    .line 682
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 683
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 687
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->K:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    .line 688
    return-void
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->u:Landroid/view/View;

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
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 837
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/am;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 857
    :cond_7
    :goto_7
    return v2

    .line 840
    :cond_8
    sget-object v0, Lcom/google/googlenav/ui/wizard/am;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 842
    const v0, 0x7f1001de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 843
    if-eqz v0, :cond_26

    .line 844
    const/16 v1, 0x439

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 847
    :cond_26
    const v0, 0x7f1004b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 848
    if-eqz v0, :cond_38

    .line 849
    const/16 v1, 0x256

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 853
    :cond_38
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_7

    .line 855
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/am;->a(Landroid/view/MenuItem;)V

    goto :goto_7
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->B:Landroid/view/View;

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

.method public w()Z
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 787
    return-void
.end method
