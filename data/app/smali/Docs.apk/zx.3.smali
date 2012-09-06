.class public Lzx;
.super Lzq;
.source "Paragraph.java"


# instance fields
.field private a:LBg;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LyD",
            "<",
            "LBb;",
            ">;>;"
        }
    .end annotation
.end field

.field private a:LyD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LyD",
            "<",
            "LBg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBH;LBV;LyO;Lyg;LwH;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LBV",
            "<",
            "Lzr;",
            ">;",
            "LyO;",
            "Lyg;",
            "LwH;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lzq;-><init>(LBH;LBV;LyO;Lyg;LwH;)V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lzx;->a:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    .line 83
    iget-object v0, p0, Lzx;->a:LBH;

    invoke-virtual {v0}, LBH;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 84
    iget-object v1, p0, Lzx;->a:Lyg;

    invoke-interface {v1, v0}, Lyg;->a(I)Lwi;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lzx;->a:Lyg;

    invoke-interface {v2, v0}, Lyg;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lzx;->a:Lyg;

    invoke-interface {v3, v0}, Lyg;->b(I)Lwk;

    move-result-object v0

    .line 87
    iget-object v3, p0, Lzx;->a:LwH;

    invoke-interface {v3}, LwH;->a()Landroid/content/Context;

    move-result-object v3

    .line 88
    new-instance v4, LBg;

    iget-object v5, p0, Lzx;->a:LwH;

    invoke-direct {v4, v1, v5, v2, v0}, LBg;-><init>(Lwi;LwH;Ljava/lang/String;Lwk;)V

    .line 90
    iget-object v0, p0, Lzx;->a:LBg;

    invoke-virtual {v4, v0}, LBg;->a(LBj;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 91
    iput-object v4, p0, Lzx;->a:LBg;

    .line 92
    iget-object v0, p0, Lzx;->a:LyD;

    if-eqz v0, :cond_3c

    .line 94
    iget-object v0, p0, Lzx;->a:LyD;

    iget-object v1, p0, Lzx;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 96
    :cond_3c
    iget-object v0, p0, Lzx;->a:LBg;

    invoke-virtual {v0}, LBg;->a()LyD;

    move-result-object v0

    iput-object v0, p0, Lzx;->a:LyD;

    .line 99
    :cond_44
    iget-object v0, p0, Lzx;->a:LBV;

    invoke-virtual {v0}, LBV;->length()I

    move-result v0

    iget-object v1, p0, Lzx;->a:LBV;

    invoke-virtual {v1}, LBV;->b()LBW;

    move-result-object v1

    invoke-virtual {v1}, LBW;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Lzx;->a:LyD;

    iget-object v2, p0, Lzx;->a:LBV;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0, v3}, LyD;->a(Landroid/text/Spannable;IILandroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lzx;->b()V

    .line 103
    return-void
.end method

.method private b()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lzx;->a:Lyg;

    iget-object v1, p0, Lzx;->a:LBH;

    invoke-virtual {v1}, LBH;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lyg;->a(I)[LvD;

    move-result-object v4

    .line 110
    iget-object v0, p0, Lzx;->a:LwH;

    invoke-interface {v0}, LwH;->a()Landroid/content/Context;

    move-result-object v5

    .line 111
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 112
    array-length v2, v4

    move v0, v3

    :goto_1c
    if-ge v0, v2, :cond_2a

    aget-object v6, v4, v0

    .line 113
    invoke-interface {v6}, LvD;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 117
    :cond_2a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 118
    iget-object v0, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_39
    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 120
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 124
    :cond_4f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LyD;

    .line 126
    iget-object v6, p0, Lzx;->a:LBV;

    invoke-interface {v1, v6}, LyD;->a(Landroid/text/Spannable;)V

    .line 127
    iget-object v1, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 131
    :cond_72
    array-length v6, v4

    move v2, v3

    :goto_74
    if-ge v2, v6, :cond_b9

    aget-object v7, v4, v2

    .line 132
    invoke-interface {v7}, LvD;->a()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v8, LBb;

    iget-object v1, p0, Lzx;->a:LwH;

    invoke-interface {v1}, LwH;->a()LzH;

    move-result-object v1

    iget-object v9, p0, Lzx;->a:LwH;

    invoke-direct {v8, v1, v7, v9}, LBb;-><init>(LzH;LvD;LwH;)V

    .line 134
    iget-object v1, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    .line 135
    if-eqz v0, :cond_b7

    invoke-interface {v0}, LyD;->a()LBj;

    move-result-object v1

    check-cast v1, LBb;

    .line 136
    :goto_99
    invoke-virtual {v8, v1}, LBb;->a(LBj;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 137
    if-eqz v0, :cond_a6

    .line 138
    iget-object v1, p0, Lzx;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 140
    :cond_a6
    invoke-virtual {v8}, LBb;->a()LyD;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v7}, LvD;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_b3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    .line 135
    :cond_b7
    const/4 v1, 0x0

    goto :goto_99

    .line 146
    :cond_b9
    iget-object v0, p0, Lzx;->a:LBV;

    invoke-virtual {v0}, LBV;->b()LBW;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, LBW;->length()I

    move-result v1

    iget-object v2, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_e0

    .line 148
    invoke-virtual {v0}, LBW;->length()I

    move-result v1

    const-string v2, "*\n"

    iget-object v4, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v2, v4}, LafZ;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, LBW;->a(IILjava/lang/CharSequence;)LBW;

    .line 150
    :cond_e0
    iget-object v1, p0, Lzx;->a:LBV;

    invoke-virtual {v1}, LBV;->length()I

    move-result v1

    invoke-virtual {v0}, LBW;->length()I

    move-result v0

    sub-int v0, v1, v0

    .line 151
    iget-object v1, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_f7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    .line 152
    iget-object v3, p0, Lzx;->a:LBV;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v3, v1, v4, v5}, LyD;->a(Landroid/text/Spannable;IILandroid/content/Context;)V

    .line 153
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_f7

    .line 155
    :cond_10e
    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lzx;->a:LBV;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, LBV;->a(II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBV;

    .line 177
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    invoke-interface {v0, p1, p2, p3}, Lzr;->a(IILjava/util/List;)V

    goto :goto_e

    .line 179
    :cond_24
    return-void
.end method

.method public a(LvZ;Lye;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lzq;->a(LvZ;Lye;I)V

    .line 60
    invoke-direct {p0}, Lzx;->a()V

    .line 61
    return-void
.end method

.method public a(Lye;)V
    .registers 5
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lzx;->a:LyD;

    if-eqz v0, :cond_b

    .line 66
    iget-object v0, p0, Lzx;->a:LyD;

    iget-object v1, p0, Lzx;->a:LBV;

    invoke-interface {v0, v1}, LyD;->a(Landroid/text/Spannable;)V

    .line 70
    :cond_b
    iget-object v0, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    .line 71
    iget-object v2, p0, Lzx;->a:LBV;

    invoke-interface {v0, v2}, LyD;->a(Landroid/text/Spannable;)V

    goto :goto_15

    .line 73
    :cond_27
    iget-object v0, p0, Lzx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    invoke-super {p0, p1}, Lzq;->a(Lye;)V

    .line 76
    return-void
.end method

.method public a(IILAV;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lzx;->a:LBg;

    invoke-virtual {p3, v0}, LAV;->a(LBg;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 168
    :goto_a
    return v0

    .line 162
    :cond_b
    iget-object v0, p0, Lzx;->a:LBV;

    invoke-virtual {v0, p1, p2}, LBV;->a(II)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBV;

    .line 163
    invoke-virtual {v0}, LBV;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzr;

    .line 164
    invoke-interface {v0, p1, p2, p3}, Lzr;->a(IILAV;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 165
    goto :goto_a

    .line 168
    :cond_2f
    const/4 v0, 0x1

    goto :goto_a
.end method
