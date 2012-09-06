.class public Lcom/google/googlenav/ui/view/dialog/cz;
.super Lcom/google/googlenav/ui/view/dialog/cn;
.source "SourceFile"


# static fields
.field private static final m:Lcom/google/googlenav/ui/aV;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/util/List;

.field private final r:Lcom/google/googlenav/ui/bw;

.field private final s:LS/f;

.field private t:Landroid/widget/ListView;

.field private u:Lcom/google/googlenav/ui/view/dialog/cD;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/googlenav/ui/aV;->ag:Lcom/google/googlenav/ui/aV;

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/cz;->m:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ui/bw;LS/f;Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p5}, Lcom/google/googlenav/ui/view/dialog/cn;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 54
    const/16 v0, 0x573

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->n:Ljava/lang/String;

    .line 55
    const/16 v0, 0x574

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->o:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->p:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/cz;->q:Ljava/util/List;

    .line 86
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/cz;->r:Lcom/google/googlenav/ui/bw;

    .line 87
    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->s:LS/f;

    .line 88
    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 7
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    const v0, 0x7f100413

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    const/16 v2, 0x575

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/cz;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 105
    const/16 v2, 0x572

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    sget-object v3, Lcom/google/googlenav/ui/aV;->bV:Lcom/google/googlenav/ui/aV;

    sget-object v4, Lcom/google/googlenav/ui/aV;->bX:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f100414

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->v:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cz;->n:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/view/dialog/cz;->m:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/cz;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(ILandroid/widget/ListView;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 299
    add-int/lit8 v2, p1, -0x1

    .line 302
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    move v1, v0

    .line 304
    :goto_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/dialog/cD;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 305
    if-eqz v1, :cond_28

    .line 306
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    .line 310
    :goto_21
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->m()V

    .line 320
    :goto_24
    return-void

    .line 302
    :cond_25
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    .line 308
    :cond_28
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    goto :goto_21

    .line 312
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/dialog/cD;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 313
    if-eqz v1, :cond_48

    .line 314
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    .line 318
    :goto_44
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->l()V

    goto :goto_24

    .line 316
    :cond_48
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    goto :goto_44
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/cz;ILandroid/widget/ListView;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/dialog/cz;->a(ILandroid/widget/ListView;)V

    return-void
.end method

.method private b(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->w:Landroid/widget/TextView;

    .line 327
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->n:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/cz;->m:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 329
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/cz;)Lcom/google/googlenav/ui/view/dialog/cD;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 176
    iput v2, p0, Lcom/google/googlenav/ui/view/dialog/cz;->b:I

    .line 177
    iput v2, p0, Lcom/google/googlenav/ui/view/dialog/cz;->d:I

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cD;->getCount()I

    move-result v3

    move v1, v2

    .line 179
    :goto_e
    if-ge v1, v3, :cond_34

    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/cD;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 181
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 182
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->b:I

    .line 179
    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 184
    :cond_29
    iget v4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->d:I

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->d:I

    goto :goto_25

    .line 189
    :cond_34
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    .line 190
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->d:I

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    .line 192
    const v0, 0x7f100421

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->p:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const/16 v1, 0x570

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    :goto_53
    sget-object v2, Lcom/google/googlenav/ui/aV;->bT:Lcom/google/googlenav/ui/aV;

    sget-object v3, Lcom/google/googlenav/ui/aV;->bU:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 201
    const v0, 0x7f100406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->x:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f100407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->y:Landroid/widget/TextView;

    .line 204
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->b:I

    if-nez v0, :cond_99

    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :goto_7d
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->d:I

    if-nez v0, :cond_9d

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_86
    return-void

    .line 194
    :cond_87
    const/16 v1, 0x56f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    .line 207
    :cond_99
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->m()V

    goto :goto_7d

    .line 213
    :cond_9d
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->l()V

    goto :goto_86
.end method

.method private c(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 270
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cz;->q:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/cD;-><init>(Lcom/google/googlenav/ui/view/dialog/cz;Landroid/content/Context;Ljava/util/List;Lcom/google/googlenav/ui/view/dialog/cA;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    .line 271
    const v0, 0x7f100420

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 274
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/cB;-><init>(Lcom/google/googlenav/ui/view/dialog/cz;)V

    .line 280
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cz;->a(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 281
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cz;->b(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cC;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cC;-><init>(Lcom/google/googlenav/ui/view/dialog/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 290
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/cz;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->i()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/cz;)Lcom/google/googlenav/ui/bw;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->r:Lcom/google/googlenav/ui/bw;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/cz;)LS/f;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->s:LS/f;

    return-object v0
.end method

.method private i()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->u:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cD;->getCount()I

    move-result v0

    .line 225
    add-int/lit8 v1, v0, 0x1

    .line 226
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cz;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 229
    const/4 v0, 0x1

    :goto_1a
    if-ge v0, v1, :cond_24

    .line 230
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cz;->t:Landroid/widget/ListView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 233
    :cond_24
    if-eqz v2, :cond_47

    .line 234
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    .line 235
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->d:I

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    .line 240
    :goto_2e
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->l()V

    .line 241
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->m()V

    .line 244
    if-eqz v2, :cond_4c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->o:Ljava/lang/String;

    .line 245
    :goto_38
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->v:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/cz;->m:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 246
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->w:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/dialog/cz;->m:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 247
    return-void

    .line 237
    :cond_47
    iput v4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    .line 238
    iput v4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    goto :goto_2e

    .line 244
    :cond_4c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->n:Ljava/lang/String;

    goto :goto_38
.end method

.method private l()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 254
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    if-ne v0, v2, :cond_20

    const/16 v0, 0x548

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->y:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void

    .line 254
    :cond_20
    const/16 v0, 0x549

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private m()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 264
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    if-ne v0, v2, :cond_20

    const/16 v0, 0x54a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cz;->x:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void

    .line 264
    :cond_20
    const/16 v0, 0x54b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cz;->b(Landroid/view/View;)V

    .line 123
    const v0, 0x7f100422

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    const/16 v1, 0x571

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cA;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cA;-><init>(Lcom/google/googlenav/ui/view/dialog/cz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cz;->c(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cz;->a(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/cz;->i()V

    .line 97
    return-object v0
.end method
