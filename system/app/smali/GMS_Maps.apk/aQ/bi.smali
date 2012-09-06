.class public LaQ/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Lcom/google/googlenav/ai;

.field final b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, LaQ/bi;->c:I

    .line 88
    iput-object p1, p0, LaQ/bi;->a:Lcom/google/googlenav/ai;

    .line 89
    iput p2, p0, LaQ/bi;->b:I

    .line 90
    return-void
.end method

.method private a(Lcom/google/googlenav/aO;Ljava/lang/String;LaQ/bl;Lcom/google/googlenav/ui/g;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 152
    iget-object v1, p3, LaQ/bl;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/google/googlenav/aO;->a()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 158
    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 161
    :cond_20
    iget-object v1, p3, LaQ/bl;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p3, LaQ/bl;->d:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p3, LaQ/bl;->e:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p1, Lcom/google/googlenav/aO;->a:Lat/B;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 169
    iget-object v0, p3, LaQ/bl;->a:Landroid/view/ViewGroup;

    new-instance v1, LaQ/bj;

    invoke-direct {v1, p0, p4, p1}, LaQ/bj;-><init>(LaQ/bi;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/aO;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p3, LaQ/bl;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 178
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f10001f

    const v6, 0x7f10001e

    const/4 v2, 0x0

    .line 182
    new-instance v3, LaQ/bk;

    invoke-direct {v3}, LaQ/bk;-><init>()V

    .line 183
    const v0, 0x7f10037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, LaQ/bk;->a:Landroid/view/View;

    .line 184
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, LaQ/bk;->b:Landroid/widget/TextView;

    .line 185
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, LaQ/bk;->c:Landroid/view/View;

    .line 186
    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v3, LaQ/bk;->d:Landroid/widget/LinearLayout;

    move v1, v2

    .line 187
    :goto_2f
    const/4 v0, 0x5

    if-ge v1, v0, :cond_8d

    .line 188
    new-instance v4, LaQ/bl;

    invoke-direct {v4}, LaQ/bl;-><init>()V

    .line 189
    const v0, 0x7f040151

    iget-object v5, v3, LaQ/bk;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v5, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    .line 191
    iget-object v0, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, LaQ/bl;->b:Landroid/widget/TextView;

    .line 192
    iget-object v0, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    const v5, 0x7f100023

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, LaQ/bl;->c:Landroid/widget/TextView;

    .line 193
    iget-object v0, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    const v5, 0x7f100194

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v4, LaQ/bl;->d:Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 195
    iget-object v0, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    const v5, 0x7f100195

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v4, LaQ/bl;->e:Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 197
    iget-object v0, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, LaQ/bl;->f:Landroid/view/View;

    .line 198
    iget-object v0, v3, LaQ/bk;->d:Landroid/widget/LinearLayout;

    iget-object v5, v4, LaQ/bl;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, v3, LaQ/bk;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 201
    :cond_8d
    return-object v3
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, LaQ/bi;->a:Lcom/google/googlenav/ai;

    const/4 v1, 0x5

    invoke-static {v0, v1}, LaM/aR;->a(Lcom/google/googlenav/ai;I)Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, LaQ/bi;->a:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/aR;->d(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, LaQ/bi;->c:I

    if-eq v2, v3, :cond_1e

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, LaQ/bi;->c:I

    .line 99
    invoke-virtual {p0, v0, v1, p1, p2}, LaQ/bi;->a(Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/g;LaQ/bE;)V

    .line 101
    :cond_1e
    return-void
.end method

.method a(Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 108
    check-cast p4, LaQ/bk;

    move v1, v3

    .line 109
    :goto_6
    const/4 v0, 0x5

    if-ge v1, v0, :cond_1a

    .line 110
    iget-object v0, p4, LaQ/bk;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/bl;

    iget-object v0, v0, LaQ/bl;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 112
    :cond_1a
    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 113
    :cond_22
    iget-object v0, p4, LaQ/bk;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p4, LaQ/bk;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p4, LaQ/bk;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p4, LaQ/bk;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    :goto_36
    return-void

    .line 119
    :cond_37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aO;

    .line 120
    const/4 v1, 0x0

    .line 121
    iget-object v4, v0, Lcom/google/googlenav/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v4, :cond_b3

    .line 122
    iget-object v1, v0, Lcom/google/googlenav/aO;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 124
    :goto_55
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 125
    iget-object v1, p4, LaQ/bk;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaQ/bl;

    invoke-direct {p0, v0, v4, v1, p3}, LaQ/bi;->a(Lcom/google/googlenav/aO;Ljava/lang/String;LaQ/bl;Lcom/google/googlenav/ui/g;)V

    .line 127
    add-int/lit8 v0, v2, 0x1

    :goto_68
    move v2, v0

    .line 129
    goto :goto_3c

    .line 131
    :cond_6a
    iget-object v1, p4, LaQ/bk;->a:Landroid/view/View;

    if-lez v2, :cond_ad

    move v0, v3

    :goto_6f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p4, LaQ/bk;->d:Landroid/widget/LinearLayout;

    if-lez v2, :cond_af

    move v0, v3

    :goto_77
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    if-lez v2, :cond_a5

    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aZ:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p4, LaQ/bk;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p4, LaQ/bk;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p4, LaQ/bk;->e:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/bl;

    iget-object v0, v0, LaQ/bl;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_a5
    iget-object v0, p0, LaQ/bi;->a:Lcom/google/googlenav/ai;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_36

    :cond_ad
    move v0, v5

    .line 131
    goto :goto_6f

    :cond_af
    move v0, v5

    .line 132
    goto :goto_77

    :cond_b1
    move v0, v2

    goto :goto_68

    :cond_b3
    move-object v4, v1

    goto :goto_55
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, LaQ/bi;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 211
    const v0, 0x7f040152

    return v0
.end method
