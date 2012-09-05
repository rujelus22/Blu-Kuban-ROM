.class public Lcom/google/googlenav/ui/wizard/aj;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/ViewGroup;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/EditText;

.field private G:Lcom/google/android/apps/circles/people/AudienceView;

.field private H:Landroid/widget/CheckBox;

.field private I:Landroid/widget/CheckBox;

.field private J:Lcom/google/android/apps/plusone/widgets/ActionButton;

.field private K:Ljava/lang/String;

.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:Lcom/google/googlenav/ui/wizard/ay;

.field private d:Landroid/widget/ArrayAdapter;

.field private k:Ljava/lang/Boolean;

.field private l:Z

.field private m:Landroid/app/Dialog;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ListView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7f0d001a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->k:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/aj;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;ZZ)V
    .registers 5

    const v0, 0x7f0d001a

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->k:Ljava/lang/Boolean;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/aj;->l:Z

    return-void
.end method

.method private A()V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->z:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->c:Lcom/google/googlenav/ui/wizard/ay;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aj;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aj;->K:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0f017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0201c9

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/ak;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ak;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1, v2}, Law/g;->a(Landroid/view/View;Law/f;)V

    const v0, 0x7f0f0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->o:Landroid/widget/TextView;

    const/16 v1, 0x84

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->p:Landroid/view/View;

    const v0, 0x7f0f007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    const v0, 0x7f0f0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/aq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aq;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

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

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0f0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->t:Landroid/view/View;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_55

    const v0, 0x7f0f0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    const/16 v1, 0x414

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ar;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ar;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/google/googlenav/ui/wizard/as;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/as;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0f0366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->v:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->v:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/googlenav/ui/wizard/at;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/at;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_55
    const v0, 0x7f0f0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    const v0, 0x7f0f0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->x:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/aj;->z()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/aj;->A()V

    new-instance v0, Lcom/google/googlenav/ui/wizard/az;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/az;-><init>(Lcom/google/googlenav/ui/wizard/aj;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/ak;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->d:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/au;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/au;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/ArrayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->d:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f0081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/circles/people/AudienceView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->G:Lcom/google/android/apps/circles/people/AudienceView;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->G:Lcom/google/android/apps/circles/people/AudienceView;

    new-instance v1, Lcom/google/googlenav/ui/wizard/av;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/av;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/circles/people/AudienceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->B:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->B:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/aj;->l:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->B:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/aj;->l:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/aj;->l:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->B:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/googlenav/ui/wizard/aw;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/aw;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3c
    const v0, 0x7f0f007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->C:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->C:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/aj;->l:Z

    if-eqz v0, :cond_f7

    const/4 v0, 0x0

    :goto_4c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->A:Landroid/view/View;

    const v0, 0x7f0f007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->D:Landroid/widget/TextView;

    const v0, 0x7f0f007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->E:Landroid/widget/TextView;

    const v0, 0x7f0f0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->F:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->F:Landroid/widget/EditText;

    const/16 v1, 0xb3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    const/16 v1, 0xae

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ax;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ax;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    new-instance v1, Lcom/google/googlenav/ui/wizard/al;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/al;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plusone/widgets/ActionButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    const/16 v1, 0x91

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    new-instance v1, Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/am;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_f7
    const/16 v0, 0x8

    goto/16 :goto_4c
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private d(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0f0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->n:Landroid/view/View;

    const-string v0, "d"

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Ljava/lang/String;)V

    const v0, 0x7f0f0177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x97

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f0179

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x99

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x98

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/an;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/an;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/aj;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private z()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->y:Landroid/view/View;

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->y:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ao;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ao;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Landroid/view/LayoutInflater;

    const v1, 0x1090004

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->w:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->z:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected N_()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    :cond_19
    return-void
.end method

.method public a(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aj;->m:Landroid/app/Dialog;

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lax/j;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_52

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->D:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->F:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->h()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    if-eqz p2, :cond_4e

    move v0, v1

    :goto_37
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    if-eqz p2, :cond_50

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_4a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->i()V

    return-void

    :cond_4e
    move v0, v2

    goto :goto_37

    :cond_50
    move v1, v2

    goto :goto_47

    :cond_52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->F:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4a
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ay;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aj;->c:Lcom/google/googlenav/ui/wizard/ay;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    new-instance v2, Lcom/google/googlenav/h;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->d:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_28
    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public b(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aj;->K:Ljava/lang/String;

    const/16 v0, 0x40b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/aj;->a(I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1d
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->G:Lcom/google/android/apps/circles/people/AudienceView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/circles/people/AudienceView;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->y:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/aj;->d(Landroid/view/View;)V

    :cond_31
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Landroid/view/View;)V

    :goto_3a
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/aj;->c(Landroid/view/View;)V

    const v0, 0x7f0f005b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bB;->a:Lcom/google/googlenav/ui/view/android/bB;

    const/16 v3, 0x40b

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a(Lcom/google/googlenav/ui/view/android/bB;I)V

    return-object v1

    :cond_55
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x84

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public h()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->c:Lcom/google/googlenav/ui/wizard/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ay;->f()V

    return-void
.end method

.method public i()V
    .registers 3

    const/16 v1, 0x8

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->c:Lcom/google/googlenav/ui/wizard/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ay;->f()V

    return-void
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

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

.method protected l()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public m()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->s:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->J:Lcom/google/android/apps/plusone/widgets/ActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setEnabled(Z)V

    return-void
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->t:Landroid/view/View;

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
    .registers 7

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->n()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v4

    :cond_8
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/googlenav/ui/wizard/aj;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0f019f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x37d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f0f040d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/ap;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/ap;-><init>(Lcom/google/googlenav/ui/wizard/aj;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    goto :goto_7
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f019f

    if-ne v1, v2, :cond_20

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aj;->c:Lcom/google/googlenav/ui/wizard/ay;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/ay;->a()V

    goto :goto_7

    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/aj;->n()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0f040d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aj;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public v()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->F:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aj;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
