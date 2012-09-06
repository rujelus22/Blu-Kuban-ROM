.class public Lcom/google/googlenav/ui/view/dialog/bK;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/hZ;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final d:LaM/m;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hZ;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f0f001b

    :goto_d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 53
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bK;->a:Lcom/google/googlenav/ui/wizard/hZ;

    .line 54
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bK;->b:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 56
    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/bK;->d:LaM/m;

    .line 57
    return-void

    .line 51
    :cond_19
    const v0, 0x7f0f0018

    goto :goto_d
.end method

.method private a(Lcom/google/googlenav/aV;)Landroid/view/View;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bK;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 120
    const v0, 0x7f100341

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    const/16 v2, 0x3a7

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/googlenav/aV;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f100342

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    new-instance v2, LaC/n;

    invoke-direct {v2}, LaC/n;-><init>()V

    const v3, 0x7f02031c

    invoke-virtual {v2, v3}, LaC/n;->a(I)LaC/n;

    move-result-object v2

    const/16 v3, 0x3a8

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaC/n;->a(Ljava/lang/String;)LaC/n;

    move-result-object v2

    invoke-virtual {v2}, LaC/n;->a()LaC/l;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, LaC/l;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 133
    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bM;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/view/dialog/bM;-><init>(Lcom/google/googlenav/ui/view/dialog/bK;Lcom/google/googlenav/aV;)V

    invoke-virtual {v2, v3}, LaC/l;->a(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v2, LaC/n;

    invoke-direct {v2}, LaC/n;-><init>()V

    const v3, 0x7f02031b

    invoke-virtual {v2, v3}, LaC/n;->a(I)LaC/n;

    move-result-object v2

    const/16 v3, 0x3a6

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaC/n;->a(Ljava/lang/String;)LaC/n;

    move-result-object v2

    invoke-virtual {v2, v5}, LaC/n;->a(Z)LaC/n;

    move-result-object v2

    invoke-virtual {v2}, LaC/n;->a()LaC/l;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, LaC/l;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bN;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/dialog/bN;-><init>(Lcom/google/googlenav/ui/view/dialog/bK;Lcom/google/googlenav/aV;)V

    invoke-virtual {v2, v0}, LaC/l;->a(Landroid/view/View$OnClickListener;)V

    .line 155
    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bK;)Lcom/google/googlenav/ui/wizard/hZ;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bK;->a:Lcom/google/googlenav/ui/wizard/hZ;

    return-object v0
.end method

.method private i()LaQ/H;
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 91
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbm/O;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 92
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 94
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 95
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 96
    invoke-static {v1, v4, v3}, LaM/aQ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bK;->d:LaM/m;

    if-nez v0, :cond_3f

    move-object v5, v2

    .line 100
    :goto_1f
    new-instance v0, LaQ/aE;

    move-object v6, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, LaQ/aE;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZ)V

    .line 105
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    if-eqz v5, :cond_3e

    .line 106
    invoke-virtual {v5}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v1

    invoke-static {v3}, Lcom/google/common/collect/bT;->d(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bL;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/view/dialog/bL;-><init>(Lcom/google/googlenav/ui/view/dialog/bK;LaQ/aE;)V

    invoke-virtual {v1, v2, v3}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 113
    :cond_3e
    return-object v0

    .line 98
    :cond_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bK;->d:LaM/m;

    invoke-virtual {v0}, LaM/m;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    goto :goto_1f
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 162
    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 169
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->as()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 172
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bK;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_1f
    return-void

    .line 175
    :cond_20
    invoke-static {v0, p2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bK;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    const/16 v0, 0x483

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bK;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/dialog/bK;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/bK;->i()LaQ/H;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 74
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 75
    new-instance v3, Lcom/google/googlenav/aV;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/dialog/bK;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v3, v4}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 78
    invoke-virtual {v3}, Lcom/google/googlenav/aV;->a()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 79
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/dialog/bK;->a(Lcom/google/googlenav/aV;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 82
    :cond_4c
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bK;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/dialog/bK;->d:LaM/m;

    invoke-direct {v3, v4, v5, v2, v7}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 85
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 87
    return-object v1
.end method
