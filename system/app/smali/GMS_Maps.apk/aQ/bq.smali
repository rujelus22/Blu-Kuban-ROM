.class public LaQ/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# static fields
.field private static final a:Ljava/util/List;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/CharSequence;

.field private final d:I

.field private final e:[Ljava/lang/CharSequence;

.field private final f:[Ljava/lang/CharSequence;

.field private final g:[Ljava/lang/CharSequence;

.field private final h:Ljava/lang/CharSequence;

.field private final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 32
    const v0, 0x7f100386

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f100388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f10038a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, LaQ/bq;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILcom/google/googlenav/cy;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, LaQ/bq;->e:[Ljava/lang/CharSequence;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, LaQ/bq;->f:[Ljava/lang/CharSequence;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, LaQ/bq;->g:[Ljava/lang/CharSequence;

    .line 63
    iput p1, p0, LaQ/bq;->b:I

    .line 65
    invoke-virtual {p2}, Lcom/google/googlenav/cy;->c()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 66
    const v0, 0x7f02037b

    iput v0, p0, LaQ/bq;->d:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, LaQ/bq;->c:Ljava/lang/CharSequence;

    .line 72
    :goto_23
    iget-object v0, p2, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 73
    const/4 v0, 0x0

    move v2, v0

    :goto_2b
    const/4 v0, 0x4

    if-ge v2, v0, :cond_ae

    .line 74
    if-ge v2, v3, :cond_6f

    .line 75
    iget-object v0, p2, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 76
    iget-object v4, p0, LaQ/bq;->e:[Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    if-nez v2, :cond_6d

    const/4 v1, 0x1

    :goto_3f
    invoke-direct {p0, v5, v1}, LaQ/bq;->a(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v4, v2

    .line 77
    iget-object v1, p0, LaQ/bq;->f:[Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, LaQ/bq;->b(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v2

    .line 78
    iget-object v1, p0, LaQ/bq;->g:[Ljava/lang/CharSequence;

    iget-object v0, v0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, LaQ/bq;->b(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v1, v2

    .line 73
    :goto_5b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b

    .line 69
    :cond_5f
    const v0, 0x7f020379

    iput v0, p0, LaQ/bq;->d:I

    .line 70
    const/16 v0, 0x485

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/bq;->c:Ljava/lang/CharSequence;

    goto :goto_23

    .line 76
    :cond_6d
    const/4 v1, 0x0

    goto :goto_3f

    .line 79
    :cond_6f
    if-ne v2, v3, :cond_a3

    invoke-virtual {p2}, Lcom/google/googlenav/cy;->c()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {p4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 83
    iget-object v1, p0, LaQ/bq;->e:[Ljava/lang/CharSequence;

    if-nez v2, :cond_a1

    const/4 v0, 0x1

    :goto_88
    invoke-direct {p0, p4, v0}, LaQ/bq;->a(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v1, v2

    .line 84
    iget-object v0, p0, LaQ/bq;->f:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, LaQ/bq;->b(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    .line 85
    iget-object v0, p0, LaQ/bq;->g:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, LaQ/bq;->b(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_5b

    .line 83
    :cond_a1
    const/4 v0, 0x0

    goto :goto_88

    .line 87
    :cond_a3
    iget-object v0, p0, LaQ/bq;->e:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 88
    iget-object v0, p0, LaQ/bq;->f:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    goto :goto_5b

    .line 92
    :cond_ae
    invoke-virtual {p2}, Lcom/google/googlenav/cy;->c()Z

    move-result v0

    invoke-static {v0, v3, p3, p4, p5}, Lcom/google/googlenav/ui/bH;->a(ZILjava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    if-nez v0, :cond_de

    .line 95
    const-string v0, ""

    iput-object v0, p0, LaQ/bq;->h:Ljava/lang/CharSequence;

    .line 102
    :goto_bc
    invoke-static {p6}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 103
    const/16 v0, 0x620

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0096

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {p6, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;I[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, LaQ/bq;->i:Ljava/lang/CharSequence;

    .line 110
    :goto_dd
    return-void

    .line 99
    :cond_de
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/bq;->h:Ljava/lang/CharSequence;

    goto :goto_bc

    .line 108
    :cond_f4
    const/4 v0, 0x0

    iput-object v0, p0, LaQ/bq;->i:Ljava/lang/CharSequence;

    goto :goto_dd
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 191
    if-eqz p2, :cond_10

    .line 192
    const v0, 0x7f0f0101

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 196
    :goto_f
    return-object v0

    .line 194
    :cond_10
    const v0, 0x7f0f0104

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_f

    .line 196
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    const/high16 v1, 0x43b4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private b(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 201
    if-eqz p2, :cond_10

    .line 202
    const v0, 0x7f0f0103

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 207
    :goto_f
    return-object v0

    .line 204
    :cond_10
    const v0, 0x7f0f0102

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_f

    .line 207
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 7
    .parameter

    .prologue
    .line 154
    new-instance v2, LaQ/bs;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, LaQ/bs;-><init>(LaQ/br;)V

    .line 156
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3d

    .line 157
    sget-object v0, LaQ/bq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 158
    iget-object v4, v2, LaQ/bs;->a:[Landroid/widget/TextView;

    const v0, 0x7f100079

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v4, v1

    .line 159
    iget-object v4, v2, LaQ/bs;->b:[Landroid/widget/TextView;

    const v0, 0x7f100387

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v4, v1

    .line 160
    iget-object v0, v2, LaQ/bs;->c:[Landroid/view/View;

    aput-object v3, v0, v1

    .line 156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 163
    :cond_3d
    const v0, 0x7f100385

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/bs;->f:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f10038b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/bs;->e:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/bs;->d:Landroid/view/View;

    .line 167
    const v0, 0x7f10038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/bs;->g:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f100384

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/bs;->h:Landroid/view/View;

    .line 169
    const v0, 0x7f10038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/bs;->i:Landroid/view/View;

    .line 171
    return-object v2
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 114
    check-cast p2, LaQ/bs;

    .line 116
    iget-object v0, p2, LaQ/bs;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, LaQ/bq;->a(Landroid/content/Context;)Z

    move-result v3

    move v0, v2

    .line 118
    :goto_10
    const/4 v4, 0x4

    if-ge v0, v4, :cond_4f

    .line 119
    iget-object v4, p2, LaQ/bs;->a:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, LaQ/bq;->e:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 120
    if-eqz v3, :cond_3b

    .line 121
    iget-object v4, p2, LaQ/bs;->b:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, LaQ/bq;->g:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 125
    :goto_2b
    iget-object v4, p0, LaQ/bq;->e:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    if-eqz v4, :cond_47

    .line 126
    iget-object v4, p2, LaQ/bs;->c:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 123
    :cond_3b
    iget-object v4, p2, LaQ/bs;->b:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    iget-object v5, p0, LaQ/bq;->f:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 128
    :cond_47
    iget-object v4, p2, LaQ/bs;->c:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38

    .line 132
    :cond_4f
    iget-object v0, p2, LaQ/bs;->e:Landroid/widget/TextView;

    iget-object v4, p0, LaQ/bq;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p2, LaQ/bs;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_6d

    .line 134
    iget-object v0, p2, LaQ/bs;->f:Landroid/widget/TextView;

    iget v4, p0, LaQ/bq;->d:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p2, LaQ/bs;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p2, LaQ/bs;->f:Landroid/widget/TextView;

    iget-object v4, p0, LaQ/bq;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_6d
    iget-object v0, p2, LaQ/bs;->d:Landroid/view/View;

    new-instance v4, LaQ/br;

    invoke-direct {v4, p0}, LaQ/br;-><init>(LaQ/bq;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p2, LaQ/bs;->g:Landroid/widget/TextView;

    iget-object v4, p0, LaQ/bq;->i:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p2, LaQ/bs;->h:Landroid/view/View;

    if-eqz v3, :cond_8e

    move v0, v1

    :goto_83
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p2, LaQ/bs;->i:Landroid/view/View;

    if-eqz v3, :cond_90

    :goto_8a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    return-void

    :cond_8e
    move v0, v2

    .line 148
    goto :goto_83

    :cond_90
    move v1, v2

    .line 149
    goto :goto_8a
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, LaQ/bq;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 181
    const v0, 0x7f040157

    return v0
.end method
