.class public Lag/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# static fields
.field public static final a:Lag/c;

.field public static final b:Lag/c;

.field public static final c:Lag/c;

.field public static final d:Lag/c;

.field public static final e:Lag/c;

.field public static final f:Lag/c;

.field public static final g:Lag/c;

.field public static final h:Lag/c;

.field public static final i:Lag/c;

.field public static final j:Lag/c;

.field public static final k:Lag/c;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const v8, 0x7f020210

    const/16 v7, 0x124

    .line 33
    new-instance v0, Lag/c;

    const/16 v1, 0x127

    const v2, 0x7f020212

    const/16 v3, 0xbb9

    const-string v4, "m"

    const-string v5, "Map"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->a:Lag/c;

    .line 38
    new-instance v0, Lag/c;

    const/16 v1, 0x38b

    const/16 v2, 0x126

    const v3, 0x7f020211

    const/16 v4, 0xbba

    const-string v5, "l"

    const-string v6, "Places"

    invoke-direct/range {v0 .. v6}, Lag/c;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->b:Lag/c;

    .line 44
    new-instance v0, Lag/c;

    const/16 v1, 0x129

    const v2, 0x7f020215

    const/16 v3, 0xbbc

    const-string v4, "t"

    const-string v5, "Traffic"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->c:Lag/c;

    .line 49
    new-instance v0, Lag/c;

    const/16 v1, 0x2fe

    const v2, 0x7f020214

    const/16 v3, 0xbbb

    const-string v4, "n"

    const-string v5, "Navigation"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->d:Lag/c;

    .line 54
    new-instance v0, Lag/c;

    const/16 v1, 0x13a

    const/16 v4, 0xbbd

    const-string v5, "lj"

    const-string v6, "Latitude"

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lag/c;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->e:Lag/c;

    .line 60
    new-instance v0, Lag/c;

    const/16 v1, 0x139

    const/16 v4, 0xbbe

    const-string v5, "la"

    const-string v6, "Latitude"

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lag/c;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->f:Lag/c;

    .line 66
    new-instance v0, Lag/c;

    const/16 v1, 0x2e5

    const v2, 0x7f020213

    const/16 v3, 0xbc0

    const-string v4, "p"

    const-string v5, "My Places"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->g:Lag/c;

    .line 71
    new-instance v0, Lag/c;

    const/16 v1, 0xf9

    const v2, 0x7f02020e

    const/16 v3, 0xbc1

    const-string v4, "d"

    const-string v5, "Directions"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->h:Lag/c;

    .line 76
    new-instance v0, Lag/c;

    const/16 v1, 0x88

    const v2, 0x7f02020d

    const/16 v3, 0xbc2

    const-string v4, "c"

    const-string v5, "Check in"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->i:Lag/c;

    .line 81
    new-instance v0, Lag/c;

    const/16 v1, 0x15d

    const v2, 0x7f02020f

    const/16 v3, 0xbc3

    const-string v4, "h"

    const-string v5, "Location History"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->j:Lag/c;

    .line 87
    new-instance v0, Lag/c;

    const/16 v1, 0x322

    const v2, 0x7f020348

    const/16 v3, 0xbc4

    const-string v4, "o"

    const-string v5, "Offers"

    invoke-direct/range {v0 .. v5}, Lag/c;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lag/b;->k:Lag/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    const v0, 0x7f10001e

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 97
    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lag/b;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 190
    const/4 v0, 0x0

    .line 191
    sget v1, Lag/c;->a:I

    if-le p0, v1, :cond_1b

    .line 192
    if-ne p0, v2, :cond_1c

    .line 193
    const/16 v0, 0x321

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_1b
    :goto_1b
    return-object v0

    .line 197
    :cond_1c
    const/16 v0, 0x320

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lag/b;->clear()V

    .line 107
    invoke-virtual {p0}, Lag/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag/c;

    .line 109
    invoke-virtual {p0, v0}, Lag/b;->add(Ljava/lang/Object;)V

    goto :goto_b

    .line 111
    :cond_1b
    invoke-virtual {p0}, Lag/b;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .registers 4

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xd

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    sget-object v0, Lag/b;->a:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lag/b;->b:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ak()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 125
    sget-object v0, Lag/b;->d:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_20
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 129
    sget-object v0, Lag/b;->k:Lag/c;

    sget-object v2, Lag/b;->k:Lag/c;

    iget v2, v2, Lag/c;->f:I

    invoke-static {v2}, Lag/b;->b(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lag/c;->c:Ljava/lang/String;

    .line 130
    sget-object v0, Lag/b;->k:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_3b
    sget-object v0, Lag/b;->g:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/google/googlenav/friend/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 137
    sget-object v0, Lag/b;->i:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_55
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 141
    sget-object v0, Lag/b;->f:Lag/c;

    .line 142
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v2

    if-nez v2, :cond_69

    .line 144
    sget-object v0, Lag/b;->e:Lag/c;

    .line 146
    :cond_69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lag/b;->j:Lag/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_71
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 155
    invoke-virtual {p0}, Lag/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 157
    if-nez p2, :cond_19

    .line 158
    const v1, 0x7f040073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 160
    :cond_19
    invoke-virtual {p0, p1}, Lag/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag/c;

    .line 161
    const v1, 0x7f10008f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lag/c;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    const v1, 0x7f10001e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lag/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v1, 0x7f1001ab

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    iget-object v2, v0, Lag/c;->c:Ljava/lang/String;

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 167
    iget-object v2, v0, Lag/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_54
    const v1, 0x7f1000bf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    iget v2, v0, Lag/c;->f:I

    sget v3, Lag/c;->a:I

    if-le v2, v3, :cond_74

    .line 176
    iget v0, v0, Lag/c;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_6f
    return-object p2

    .line 170
    :cond_70
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_54

    .line 179
    :cond_74
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6f
.end method
