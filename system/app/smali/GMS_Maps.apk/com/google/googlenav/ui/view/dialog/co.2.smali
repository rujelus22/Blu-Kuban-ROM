.class public Lcom/google/googlenav/ui/view/dialog/co;
.super Lcom/google/googlenav/ui/view/dialog/cn;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# instance fields
.field private final c:Lcom/google/googlenav/br;

.field private final d:Lcom/google/googlenav/bo;

.field private e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private m:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/googlenav/ui/view/dialog/co;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/view/dialog/co;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/dialog/cn;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 69
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    .line 70
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/co;->d:Lcom/google/googlenav/bo;

    .line 71
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 216
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 217
    invoke-static {v1, v9}, Lcom/google/googlenav/common/io/protocol/b;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 221
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 223
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v8, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 226
    :cond_1d
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 227
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 230
    :cond_2a
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 231
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 232
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 234
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 237
    :cond_48
    const/4 v2, 0x3

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 240
    invoke-static {v0, v9}, Lcom/google/googlenav/common/io/protocol/b;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v2, v2, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    .line 243
    if-eqz v2, :cond_5b

    .line 244
    invoke-virtual {v0, v8, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 246
    :cond_5b
    invoke-static {v0, v9}, Lcom/google/googlenav/common/io/protocol/b;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v0, v0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    .line 250
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 251
    const/16 v0, 0x54f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_6f
    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 255
    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/co;)Lcom/google/googlenav/ui/view/android/L;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->m:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/bw;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/google/googlenav/ui/view/dialog/co;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/bw;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 8
    .parameter

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 184
    const v0, 0x7f10040f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    const/16 v1, 0x54e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v0, v0, Lcom/google/googlenav/br;->h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/co;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 194
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/co;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 196
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 198
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 200
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/co;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/co;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/dialog/co;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/wizard/ja;->g()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/view/dialog/co;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/bw;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->m:Lcom/google/googlenav/ui/view/android/L;

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->m:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    const v0, 0x7f100410

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    const v2, 0x7f100411

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/co;Landroid/view/ViewGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/co;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/co;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/bw;)Ljava/util/List;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 264
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 265
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 266
    invoke-static {p0, v4, v3}, LaM/aQ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;)V

    .line 269
    new-instance v0, LaQ/aE;

    move-object v1, p0

    move-object v5, p1

    move-object v6, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, LaQ/aE;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZ)V

    .line 274
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v0, v0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    .line 146
    if-eqz v0, :cond_1b

    .line 147
    new-instance v1, Lcom/google/googlenav/ui/bx;

    sget v2, Lcom/google/googlenav/ui/bn;->bE:I

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/co;->a:Lcom/google/googlenav/ui/wizard/ja;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/cr;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/cr;-><init>(Lcom/google/googlenav/ui/view/dialog/co;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ja;->a(Ljava/util/List;Lah/p;)V

    .line 160
    :cond_1b
    return-void
.end method

.method private l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->d:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    if-ne v0, v1, :cond_d

    .line 164
    const/16 v0, 0x551

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_c
    return-object v0

    .line 167
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->d:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->c:Lcom/google/googlenav/bo;

    if-ne v0, v1, :cond_1a

    .line 168
    const/16 v0, 0x552

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 172
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->d:Lcom/google/googlenav/bo;

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    if-eq v0, v1, :cond_20

    .line 176
    :cond_20
    const/16 v0, 0x553

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 77
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 10

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget v0, v0, Lcom/google/googlenav/br;->f:I

    .line 82
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget v1, v1, Lcom/google/googlenav/br;->g:I

    .line 83
    sget-boolean v2, Lcom/google/googlenav/ui/view/dialog/co;->b:Z

    if-nez v2, :cond_15

    add-int/2addr v0, v1

    if-gtz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/co;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04018b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 86
    const v0, 0x7f100408

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    const v1, 0x7f100409

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    const v2, 0x7f10040a

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    const v3, 0x7f10040b

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    const v4, 0x7f10040c

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/co;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/googlenav/ui/view/dialog/co;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 93
    const/16 v6, 0x554

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/googlenav/ui/aV;->bV:Lcom/google/googlenav/ui/aV;

    sget-object v8, Lcom/google/googlenav/ui/aV;->bW:Lcom/google/googlenav/ui/aV;

    invoke-static {v6, v7, v8}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f10040d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    iget-object v6, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v6, v6, Lcom/google/googlenav/br;->h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v6, :cond_f3

    iget-object v6, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v6, v6, Lcom/google/googlenav/br;->h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 100
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/co;->i()V

    .line 101
    const/16 v6, 0x550

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v6, Lcom/google/googlenav/ui/view/dialog/cp;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/view/dialog/cp;-><init>(Lcom/google/googlenav/ui/view/dialog/co;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :goto_94
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v0, v0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    const/16 v0, 0x558

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_a4
    sget-object v6, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    sget-object v7, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v6, v7}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 124
    const/16 v0, 0x545

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 126
    const/16 v0, 0x546

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 128
    const/16 v0, 0x547

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 131
    const v0, 0x7f100412

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    invoke-virtual {v1}, Lcom/google/googlenav/br;->a()Z

    move-result v1

    if-eqz v1, :cond_10e

    const/16 v1, 0x54c

    :goto_e3
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/cq;-><init>(Lcom/google/googlenav/ui/view/dialog/co;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-object v5

    .line 112
    :cond_f3
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_94

    .line 116
    :cond_f9
    const/16 v0, 0x557

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/googlenav/ui/view/dialog/co;->c:Lcom/google/googlenav/br;

    iget-object v8, v8, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a4

    .line 132
    :cond_10e
    const/16 v1, 0x54d

    goto :goto_e3
.end method
