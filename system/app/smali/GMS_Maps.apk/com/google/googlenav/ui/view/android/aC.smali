.class public Lcom/google/googlenav/ui/view/android/ac;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/googlenav/ui/view/a;


# instance fields
.field protected b:Lcom/google/googlenav/ai;

.field protected final c:LaM/C;

.field protected d:Lcom/google/googlenav/ui/view/android/L;

.field private e:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 46
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/ac;->a:Lcom/google/googlenav/ui/view/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ai;LaM/C;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    const v0, 0x7f0f0018

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 56
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    .line 57
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;)LaQ/H;
    .registers 6
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x1

    .line 133
    new-instance v1, LaQ/bv;

    const/4 v2, 0x3

    const v3, 0x7f040068

    invoke-direct {v1, v2, v3, p1, v0}, LaQ/bv;-><init>(IILjava/lang/String;Z)V

    return-object v1
.end method

.method private l()Ljava/util/List;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 79
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ac;->m()LaQ/H;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, LaQ/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, LaQ/b;-><init>(Lcom/google/googlenav/ai;LaM/C;IZ)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->b()Z

    move-result v2

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->bG()Z

    move-result v3

    .line 89
    if-eqz v3, :cond_3b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->bI()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 90
    const/16 v0, 0x251

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x12

    invoke-static {v0, v4, v6, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 97
    :cond_3b
    if-eqz v2, :cond_82

    .line 98
    const/16 v0, 0x73

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ac;->a(Ljava/lang/String;)LaQ/H;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4a
    :goto_4a
    const/16 v0, 0x500

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x25a

    invoke-static {v0, v4, v6, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 110
    if-eqz v3, :cond_96

    const/16 v0, 0x530

    :goto_59
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v2, :cond_99

    .line 113
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ac;->a(Ljava/lang/String;)LaQ/H;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v2}, LaM/C;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v0, v2}, LaM/C;->c(Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 120
    if-eqz v3, :cond_a8

    const/16 v0, 0x44a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_7c
    const/16 v2, 0x5dc

    invoke-static {v0, v2, v6, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 127
    :cond_81
    return-object v1

    .line 100
    :cond_82
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->y()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v4}, LaM/C;->bl()Z

    move-result v4

    invoke-static {v0, v4, v6, v1}, LaM/aR;->a(Lcom/google/googlenav/ai;ZILjava/util/List;)V

    goto :goto_4a

    .line 110
    :cond_96
    const/16 v0, 0x52f

    goto :goto_59

    .line 114
    :cond_99
    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v2}, LaM/C;->c()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 115
    const/4 v2, 0x4

    invoke-static {v0, v2, v6, v1}, LaM/aR;->a(Ljava/lang/String;IILjava/util/List;)V

    goto :goto_66

    .line 120
    :cond_a8
    const/16 v0, 0x44c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7c
.end method

.method private m()LaQ/H;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 138
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/ac;->a([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v2}, LaM/C;->bJ()Z

    move-result v2

    .line 143
    if-eqz v2, :cond_18

    .line 144
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->o(I)V

    .line 149
    :cond_18
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    .line 151
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v4}, LaM/C;->bK()Z

    move-result v4

    .line 153
    new-instance v5, Lcom/google/googlenav/ui/view/android/bK;

    invoke-direct {v5}, Lcom/google/googlenav/ui/view/android/bK;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_88

    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    :goto_39
    invoke-virtual {v5, v6, v0}, Lcom/google/googlenav/ui/view/android/bK;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/bK;->a(Lat/B;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bK;->a(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/bK;->b(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/g;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v1}, LaM/C;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(Lcom/google/googlenav/ui/bw;)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    const v1, 0x7f0400d0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->c(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/view/android/bK;->d(Z)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/view/android/bK;->d(I)Lcom/google/googlenav/ui/view/android/bK;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v1}, LaM/C;->bF()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 170
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v1}, LaM/C;->bE()LS/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bK;->a(LS/f;)Lcom/google/googlenav/ui/view/android/bK;

    .line 172
    :cond_83
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bK;->a()Lcom/google/googlenav/ui/view/android/bJ;

    move-result-object v0

    return-object v0

    .line 153
    :cond_88
    sget-object v0, Lcom/google/googlenav/ui/aV;->aP:Lcom/google/googlenav/ui/aV;

    goto :goto_39
.end method


# virtual methods
.method public I_()V
    .registers 3

    .prologue
    .line 270
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 271
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ac;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ac;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    :cond_19
    return-void
.end method

.method a([Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 179
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->bG()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->e()[Ljava/lang/String;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_25

    array-length v0, v4

    if-lez v0, :cond_25

    move v0, v1

    .line 182
    :goto_1a
    array-length v5, v4

    if-ge v0, v5, :cond_25

    .line 183
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 186
    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->c()[Ljava/lang/String;

    move-result-object v4

    .line 187
    if-eqz v4, :cond_52

    move v0, v1

    .line 188
    :goto_2e
    array-length v5, v4

    if-ge v0, v5, :cond_52

    .line 189
    aget-object v5, v4, v0

    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 190
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 195
    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->b()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 196
    const/16 v0, 0x264

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b7

    .line 213
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :goto_61
    if-eqz p2, :cond_7c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7c

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->ar()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 221
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7c
    move-object v2, v0

    .line 226
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    array-length v4, p1

    if-lt v1, v4, :cond_b2

    .line 233
    :cond_90
    return-object v2

    .line 198
    :cond_91
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->c()[Ljava/lang/String;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_a8

    .line 200
    array-length v0, v4

    if-lez v0, :cond_52

    move v0, v1

    .line 201
    :goto_9d
    array-length v5, v4

    if-ge v0, v5, :cond_52

    .line 202
    aget-object v5, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 206
    :cond_a8
    const/16 v0, 0x5e9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 230
    :cond_b2
    aput-object v0, p1, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    :cond_b7
    move-object v0, v2

    goto :goto_61
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 266
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ac;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ac;->l()Ljava/util/List;

    move-result-object v2

    .line 68
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->e:Landroid/widget/ListView;

    .line 69
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ac;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    const/4 v5, 0x4

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->d:Lcom/google/googlenav/ui/view/android/L;

    .line 70
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ac;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/google/googlenav/ui/view/android/ad;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/ad;-><init>(Lcom/google/googlenav/ui/view/android/ac;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->e:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->e:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 75
    return-object v1
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->b:Lcom/google/googlenav/ai;

    .line 245
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->d:Lcom/google/googlenav/ui/view/android/L;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->c:LaM/C;

    invoke-virtual {v0}, LaM/C;->af()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 247
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ac;->l()Ljava/util/List;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ac;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/L;->a(Ljava/util/List;)V

    .line 252
    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ac;->I_()V

    .line 255
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 256
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ac;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f1002eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    const v1, 0x7f1003bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ac;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_4d
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 3

    .prologue
    .line 277
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 278
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/ac;->a([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
