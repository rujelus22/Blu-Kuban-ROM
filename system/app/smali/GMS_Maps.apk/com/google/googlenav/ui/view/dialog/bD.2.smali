.class public Lcom/google/googlenav/ui/view/dialog/bD;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lax/V;


# instance fields
.field protected a:Lcom/google/googlenav/ui/view/android/L;

.field private final b:Lax/m;

.field private final c:Lcom/google/googlenav/ui/wizard/ju;

.field private final d:Lcom/google/googlenav/J;

.field private final e:Lcom/google/googlenav/ui/wizard/dG;

.field private final m:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lax/m;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lcom/google/googlenav/ui/wizard/dG;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bD;->b:Lax/m;

    .line 77
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bD;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 78
    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bD;->d:Lcom/google/googlenav/J;

    .line 79
    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/bD;->e:Lcom/google/googlenav/ui/wizard/dG;

    .line 80
    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/bD;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 81
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->b()Lax/U;

    move-result-object v0

    invoke-interface {v0, p0}, Lax/U;->a(Lax/V;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bD;)Lcom/google/googlenav/ui/view/android/L;
    .registers 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/bD;->m()Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bD;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bD;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/bD;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method protected static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 164
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_22

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 169
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_18
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 173
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->e:Lcom/google/googlenav/ui/wizard/dG;

    if-eqz v0, :cond_8

    .line 198
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bD;->c(Ljava/lang/String;)V

    .line 202
    :goto_7
    return-void

    .line 200
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bD;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private c(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->b:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 226
    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 228
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bD;->e:Lcom/google/googlenav/ui/wizard/dG;

    invoke-static {v0}, Lad/y;->c(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    invoke-interface {v2, v0, v1, v3, v3}, Lcom/google/googlenav/ui/wizard/dG;->a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V

    .line 237
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 238
    return-void
.end method

.method static synthetic l()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bD;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method

.method private m()Lcom/google/googlenav/ui/view/android/L;
    .registers 4

    .prologue
    .line 120
    new-instance v1, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bD;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bD;->i()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 123
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_12

    .line 125
    :cond_22
    return-object v1
.end method


# virtual methods
.method public a(Lax/J;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x1c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->b:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 209
    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bD;->d:Lcom/google/googlenav/J;

    invoke-interface {v1, v0, v4}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/ai;I)V

    .line 217
    :goto_27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a=o"

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "t=rp"

    aput-object v2, v0, v1

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const/16 v1, 0x9

    const-string v2, "f"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 214
    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->d:Lcom/google/googlenav/J;

    invoke-interface {v0, p1, v2, v4}, Lcom/google/googlenav/J;->a(Ljava/lang/String;ZI)V

    goto :goto_27
.end method

.method public b()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->a:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_d

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bD;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 250
    :cond_d
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bD;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    const v1, 0x7f0400a1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 93
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/bE;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/google/googlenav/ui/view/dialog/bE;-><init>(Lcom/google/googlenav/ui/view/dialog/bD;LY/c;Landroid/widget/ListView;)V

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/bE;->g()V

    .line 114
    const v0, 0x7f10002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-object v1
.end method

.method protected i()Ljava/util/List;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->b:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0}, Lax/r;->b()Ljava/util/List;

    move-result-object v10

    .line 131
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 132
    if-nez v11, :cond_2e

    .line 133
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x113

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    .line 158
    :goto_2d
    return-object v0

    .line 137
    :cond_2e
    const/4 v0, 0x0

    move v1, v0

    :goto_30
    if-ge v1, v11, :cond_8d

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->b:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v3

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_4e

    invoke-virtual {v6}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 137
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_30

    .line 145
    :cond_52
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bD;->b:Lax/m;

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v3

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_8f

    .line 148
    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_8f

    .line 150
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bD;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v5

    .line 155
    :goto_73
    new-instance v3, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v6}, Lax/A;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/google/googlenav/ui/view/a;

    const/16 v0, 0xaf0

    invoke-virtual {v6}, Lax/A;->g()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v0, v1, v6}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_8d
    move-object v0, v9

    .line 158
    goto :goto_2d

    :cond_8f
    move-object v5, v2

    goto :goto_73
.end method
