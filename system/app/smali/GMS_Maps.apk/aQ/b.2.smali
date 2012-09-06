.class public LaQ/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:I

.field private final c:Lcom/google/googlenav/ai;

.field private final d:Ljava/util/List;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "^.*\\((.*)\\)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LaQ/B;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ai;ILcom/google/googlenav/J;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaQ/B;->d:Ljava/util/List;

    .line 87
    iput-object p1, p0, LaQ/B;->c:Lcom/google/googlenav/ai;

    .line 88
    iput p2, p0, LaQ/B;->b:I

    .line 89
    iput-boolean p4, p0, LaQ/B;->e:Z

    .line 90
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ch()Lcom/google/googlenav/ao;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/google/googlenav/ao;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 119
    :cond_20
    :goto_20
    return-void

    .line 97
    :cond_21
    invoke-virtual {v2}, Lcom/google/googlenav/ao;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_33

    .line 98
    invoke-virtual {v2}, Lcom/google/googlenav/ao;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 101
    :cond_33
    iget-object v4, p0, LaQ/B;->d:Ljava/util/List;

    move v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, LaQ/B;->a(ILcom/google/googlenav/J;Lcom/google/googlenav/ao;ILjava/util/List;Z)V

    .line 105
    invoke-virtual {v2}, Lcom/google/googlenav/ao;->c()Lcom/google/googlenav/ar;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 106
    invoke-virtual {v2}, Lcom/google/googlenav/ao;->c()Lcom/google/googlenav/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v2}, Lcom/google/googlenav/ao;->c()Lcom/google/googlenav/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v1

    .line 108
    sget-object v2, LaQ/B;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 110
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    const/16 v2, 0x537

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 114
    iget-object v2, p0, LaQ/B;->d:Ljava/util/List;

    new-instance v3, LaQ/D;

    iget-object v4, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v1, v0, v4, p3}, LaQ/D;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/google/googlenav/J;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public static a(ILcom/google/googlenav/J;Lcom/google/googlenav/ao;ILjava/util/List;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-virtual {p2}, Lcom/google/googlenav/ao;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 137
    new-instance v0, LaQ/bv;

    const v1, 0x7f04012a

    invoke-virtual {p2}, Lcom/google/googlenav/ao;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, LaQ/bv;-><init>(IILjava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1d
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    if-ge v1, p3, :cond_3b

    .line 144
    new-instance v2, LaQ/y;

    invoke-virtual {p2}, Lcom/google/googlenav/ao;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    add-int v3, p0, v1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v0, v3, p1, p5}, LaQ/y;-><init>(Lcom/google/googlenav/ar;ILcom/google/googlenav/J;Z)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 148
    :cond_3b
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 8
    .parameter

    .prologue
    .line 179
    iget-boolean v0, p0, LaQ/B;->e:Z

    if-eqz v0, :cond_7

    .line 180
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 183
    :cond_7
    new-instance v2, LaQ/C;

    invoke-direct {v2}, LaQ/C;-><init>()V

    .line 185
    const v0, 0x7f10037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/C;->a:Landroid/view/View;

    .line 186
    new-instance v0, LaQ/bw;

    invoke-direct {v0}, LaQ/bw;-><init>()V

    iput-object v0, v2, LaQ/C;->b:LaQ/bw;

    .line 187
    iget-object v1, v2, LaQ/C;->b:LaQ/bw;

    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/bw;->a:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, LaQ/C;->c:Landroid/widget/LinearLayout;

    .line 189
    const/4 v0, 0x1

    move v1, v0

    :goto_36
    iget-object v0, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 190
    iget-object v0, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    const v3, 0x7f040149

    iget-object v4, v2, LaQ/C;->c:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, LaQ/H;->a(Landroid/view/View;)LaQ/bE;

    move-result-object v0

    check-cast v0, LaQ/A;

    .line 192
    iget-object v3, v2, LaQ/C;->c:Landroid/widget/LinearLayout;

    iget-object v4, v0, LaQ/A;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v3, v2, LaQ/C;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    .line 195
    :cond_66
    return-object v2
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 175
    :goto_9
    return-void

    .line 156
    :cond_a
    check-cast p2, LaQ/C;

    .line 159
    iget-object v0, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    iget-object v1, p2, LaQ/C;->b:LaQ/bw;

    invoke-interface {v0, p1, v1}, LaQ/H;->a(Lcom/google/googlenav/ui/g;LaQ/bE;)V

    .line 162
    const/4 v0, 0x1

    move v2, v0

    :goto_1b
    iget-object v0, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 163
    iget-object v0, p0, LaQ/B;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    iget-object v1, p2, LaQ/C;->d:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaQ/bE;

    invoke-interface {v0, p1, v1}, LaQ/H;->a(Lcom/google/googlenav/ui/g;LaQ/bE;)V

    .line 162
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 167
    :cond_3c
    iget-object v0, p2, LaQ/C;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p2, LaQ/C;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p2, LaQ/C;->d:Ljava/util/List;

    iget-object v1, p2, LaQ/C;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/A;

    iget-object v0, v0, LaQ/A;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, LaQ/B;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, LaQ/B;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 205
    const v0, 0x7f040152

    return v0
.end method
