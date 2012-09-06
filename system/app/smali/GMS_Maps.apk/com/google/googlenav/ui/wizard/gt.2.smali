.class public Lcom/google/googlenav/ui/wizard/gT;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lah/s;

.field private b:Lcom/google/googlenav/ui/wizard/gL;

.field private c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/ViewGroup;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private final o:Ljava/lang/String;

.field private final p:I

.field private q:Lcom/google/googlenav/ui/wizard/gB;

.field private r:Landroid/widget/EditText;

.field private s:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILah/s;Lcom/google/googlenav/ui/g;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0f0018

    invoke-direct {p0, p4, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 72
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gT;->o:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/google/googlenav/ui/wizard/gT;->p:I

    .line 75
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gT;->a:Lah/s;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gL;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->b:Lcom/google/googlenav/ui/wizard/gL;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/gT;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->q:Lcom/google/googlenav/ui/wizard/gB;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/gT;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->d:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gL;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gT;->b:Lcom/google/googlenav/ui/wizard/gL;

    .line 124
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 164
    invoke-static {p2}, Lcom/google/common/collect/dm;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->s:Ljava/util/Set;

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/google/googlenav/ui/wizard/gW;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/gW;-><init>(Lcom/google/googlenav/ui/wizard/gT;Ljava/util/List;)V

    .line 177
    new-instance v2, Lcom/google/googlenav/ui/wizard/gz;

    invoke-direct {v2}, Lcom/google/googlenav/ui/wizard/gz;-><init>()V

    .line 178
    invoke-virtual {v2, p1, v1}, Lcom/google/googlenav/ui/wizard/gz;->a(Ljava/util/Collection;Lcom/google/googlenav/ui/wizard/gA;)V

    .line 180
    new-instance v1, Lcom/google/googlenav/ui/wizard/gB;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gT;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/gT;->a:Lah/s;

    invoke-direct {v1, v3, v2, v4}, Lcom/google/googlenav/ui/wizard/gB;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/wizard/gz;Lah/s;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gT;->q:Lcom/google/googlenav/ui/wizard/gB;

    .line 182
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gT;->q:Lcom/google/googlenav/ui/wizard/gB;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/wizard/gB;->a(Ljava/util/Collection;)V

    .line 183
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gT;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gT;->q:Lcom/google/googlenav/ui/wizard/gB;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gT;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gX;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gX;-><init>(Lcom/google/googlenav/ui/wizard/gT;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gT;->d:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_45

    .line 198
    :cond_5c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->q:Lcom/google/googlenav/ui/wizard/gB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gB;->notifyDataSetChanged()V

    .line 199
    return-void
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    sget-object v1, Lcom/google/googlenav/ui/view/android/bt;->a:Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setState(Lcom/google/googlenav/ui/view/android/bt;I)V

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gT;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040142

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->o:Ljava/lang/String;

    const v2, 0x7f100039

    iget v3, p0, Lcom/google/googlenav/ui/wizard/gT;->p:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/googlenav/ui/wizard/gT;->a(Ljava/lang/CharSequence;II)V

    .line 85
    const v0, 0x7f100087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ModalOverlay;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    .line 88
    const v0, 0x7f100352

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->d:Landroid/widget/ListView;

    .line 90
    const v0, 0x7f100351

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->r:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->r:Landroid/widget/EditText;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gY;

    invoke-direct {v2, p0, v4}, Lcom/google/googlenav/ui/wizard/gY;-><init>(Lcom/google/googlenav/ui/wizard/gT;Lcom/google/googlenav/ui/wizard/gU;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->r:Landroid/widget/EditText;

    const/16 v2, 0x5e8

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gT;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    const v0, 0x7f10002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->e:Landroid/view/ViewGroup;

    .line 96
    const v0, 0x7f100353

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->m:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->m:Landroid/widget/Button;

    const/16 v2, 0x362

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->m:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gU;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gU;-><init>(Lcom/google/googlenav/ui/wizard/gT;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->n:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->n:Landroid/widget/Button;

    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->n:Landroid/widget/Button;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gV;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gV;-><init>(Lcom/google/googlenav/ui/wizard/gT;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gT;->i()V

    .line 115
    return-object v1
.end method

.method public i()V
    .registers 2

    .prologue
    .line 130
    const/16 v0, 0x3cb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gT;->a(I)V

    .line 131
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->c:Lcom/google/googlenav/ui/view/android/ModalOverlay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setHidden()V

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public m()Ljava/util/List;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gT;->q:Lcom/google/googlenav/ui/wizard/gB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gB;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
