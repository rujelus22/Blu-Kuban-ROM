.class public Lcom/google/googlenav/ui/wizard/e;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/m;

.field private final b:Lcom/google/googlenav/ui/wizard/q;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/google/googlenav/ui/view/android/L;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/q;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f02020d

    const/4 v4, 0x1

    .line 68
    const v0, 0x7f0f0018

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 69
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/q;

    .line 71
    new-instance v0, Lcom/google/googlenav/ui/wizard/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/f;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    new-array v1, v4, [I

    const/4 v2, 0x0

    const/16 v3, 0xbc2

    aput v3, v1, v2

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/google/googlenav/ui/wizard/e;->a(ZILag/f;[I)V

    .line 83
    const/16 v0, 0x31

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100039

    invoke-virtual {p0, v0, v1, v5}, Lcom/google/googlenav/ui/wizard/e;->a(Ljava/lang/CharSequence;II)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/wizard/q;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/q;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const v1, 0x7f100031

    const v2, 0x7f100030

    const v5, 0x7f10002d

    const/4 v4, 0x0

    .line 163
    const v0, 0x7f100029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v0, 0x7f10002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->c:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v0, 0x7f10002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x29

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v0, 0x7f10002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v3}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    new-instance v3, Lcom/google/googlenav/ui/wizard/h;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/h;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_cf

    move v0, v1

    .line 187
    :goto_7e
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 190
    :goto_84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/i;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/j;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/j;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/wizard/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->r:Landroid/view/View;

    .line 214
    return-void

    :cond_cf
    move v0, v2

    .line 186
    goto :goto_7e

    :cond_d1
    move v2, v1

    .line 187
    goto :goto_84
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/e;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->r:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 224
    const v0, 0x7f100036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 225
    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->n:Lcom/google/googlenav/ui/view/android/L;

    .line 226
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/e;->n:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 228
    new-instance v1, Lcom/google/googlenav/ui/wizard/k;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/k;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    const v0, 0x7f100037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v0, 0x7f100030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->q:Landroid/widget/Button;

    .line 243
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->q:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/l;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/view/android/L;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 128
    const v0, 0x7f100027

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->e:Landroid/view/View;

    .line 129
    const v0, 0x7f100035

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->m:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->a(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->m:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->b(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 139
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/g;-><init>(Lcom/google/googlenav/ui/wizard/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 272
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->a(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    sget-object v0, Lcom/google/googlenav/ui/wizard/m;->c:Lcom/google/googlenav/ui/wizard/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->a:Lcom/google/googlenav/ui/wizard/m;

    .line 278
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 280
    new-instance v3, Lcom/google/googlenav/ui/wizard/n;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/wizard/n;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 282
    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->n:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 284
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->q:Landroid/widget/Button;

    const/16 v1, 0x2f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 256
    const/16 v0, 0x31

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/e;->a(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    sget-object v0, Lcom/google/googlenav/ui/wizard/m;->b:Lcom/google/googlenav/ui/wizard/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->a:Lcom/google/googlenav/ui/wizard/m;

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .registers 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->b:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->a:Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 367
    :goto_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->d:Landroid/widget/TextView;

    const v2, 0x7f10002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    return-void

    .line 364
    :cond_22
    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13
.end method

.method public n()Lcom/google/googlenav/ui/wizard/m;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/e;->a:Lcom/google/googlenav/ui/wizard/m;

    return-object v0
.end method
