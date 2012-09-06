.class public LaQ/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/ai;

.field private c:Lcom/google/googlenav/ui/g;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, LaQ/aX;->a:I

    .line 45
    iput-object p1, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    .line 46
    iput-boolean p3, p0, LaQ/aX;->d:Z

    .line 47
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/g;ILjava/lang/Object;)Landroid/view/View$OnClickListener;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    new-instance v0, LaQ/aY;

    invoke-direct {v0, p0, p1, p2, p3}, LaQ/aY;-><init>(LaQ/aX;Lcom/google/googlenav/ui/g;ILjava/lang/Object;)V

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 302
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-void

    .line 302
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private a(LaQ/ba;Lcom/google/googlenav/as;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-virtual {p2}, Lcom/google/googlenav/as;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/google/googlenav/as;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 267
    const/4 v0, 0x0

    .line 276
    :goto_15
    return v0

    .line 269
    :cond_16
    iget-object v0, p1, LaQ/ba;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/googlenav/as;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->aX:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 271
    iget-object v0, p1, LaQ/ba;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LaQ/aX;->c:Lcom/google/googlenav/ui/g;

    const/16 v2, 0x90b

    invoke-direct {p0, v1, v2, p2}, LaQ/aX;->a(Lcom/google/googlenav/ui/g;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p2}, Lcom/google/googlenav/as;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "--"

    .line 274
    :goto_3e
    iget-object v1, p1, LaQ/ba;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 276
    const/4 v0, 0x1

    goto :goto_15

    .line 273
    :cond_4b
    invoke-virtual {p2}, Lcom/google/googlenav/as;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method private a(LaQ/bb;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ca()Ljava/util/Vector;

    move-result-object v4

    .line 131
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    move v3, v0

    .line 173
    :cond_11
    return v3

    .line 136
    :cond_12
    iget-object v1, p1, LaQ/bb;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    move v1, v0

    move v2, v0

    .line 139
    :goto_19
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    .line 140
    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    .line 141
    invoke-virtual {v0}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 139
    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 146
    :cond_3d
    if-eqz v2, :cond_56

    .line 147
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p1, LaQ/bb;->h:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    const-string v5, ", "

    sget-object v6, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v5, v6}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 149
    iget-object v5, p1, LaQ/bb;->h:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    :cond_56
    invoke-virtual {v0}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 155
    invoke-virtual {v0}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v2

    .line 161
    :goto_64
    new-instance v5, LaQ/aZ;

    iget-object v6, p1, LaQ/bb;->h:Landroid/view/ViewGroup;

    invoke-direct {v5, v6}, LaQ/aZ;-><init>(Landroid/view/ViewGroup;)V

    .line 162
    iget-object v6, v5, LaQ/aZ;->b:Landroid/widget/TextView;

    sget-object v7, Lcom/google/googlenav/ui/aV;->bc:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v7}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 164
    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 165
    iget-object v2, v5, LaQ/aZ;->a:Landroid/view/ViewGroup;

    iget-object v5, p0, LaQ/aX;->c:Lcom/google/googlenav/ui/g;

    const/4 v6, 0x5

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v6, v0}, LaQ/aX;->a(Lcom/google/googlenav/ui/g;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8c
    move v2, v3

    .line 170
    goto :goto_39

    .line 157
    :cond_8e
    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_64
.end method

.method private b(LaQ/bb;)Z
    .registers 5
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 183
    const/4 v0, 0x0

    .line 187
    :goto_d
    return v0

    .line 185
    :cond_e
    iget-object v0, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p1, LaQ/bb;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/aV;->bY:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 187
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private c(LaQ/bb;)Z
    .registers 6
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bY()Lcom/google/googlenav/ar;

    move-result-object v0

    if-nez v0, :cond_a

    .line 197
    const/4 v0, 0x0

    .line 204
    :goto_9
    return v0

    .line 200
    :cond_a
    iget-object v0, p1, LaQ/bb;->g:LaQ/aZ;

    iget-object v0, v0, LaQ/aZ;->b:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bY()Lcom/google/googlenav/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->aV:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 202
    iget-object v0, p1, LaQ/bb;->g:LaQ/aZ;

    iget-object v0, v0, LaQ/aZ;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, LaQ/aX;->c:Lcom/google/googlenav/ui/g;

    const/4 v2, 0x5

    iget-object v3, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->bY()Lcom/google/googlenav/ar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, LaQ/aX;->a(Lcom/google/googlenav/ui/g;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private d(LaQ/bb;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cb()Ljava/util/Vector;

    move-result-object v5

    .line 217
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 220
    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 221
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/as;

    .line 222
    iget-object v4, p1, LaQ/bb;->e:[LaQ/ba;

    aget-object v4, v4, v1

    .line 223
    invoke-direct {p0, v4, v0}, LaQ/aX;->a(LaQ/ba;Lcom/google/googlenav/as;)Z

    move-result v0

    .line 224
    iget-object v7, v4, LaQ/ba;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v0}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 225
    if-eqz v0, :cond_34

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 228
    :cond_34
    iget-object v0, v4, LaQ/ba;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 229
    iget-object v0, v4, LaQ/ba;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, LaQ/aX;->a(Landroid/view/View;Z)V

    goto :goto_30

    .line 234
    :cond_3f
    const/4 v1, 0x0

    .line 235
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 237
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/as;

    .line 238
    iget-object v8, p1, LaQ/bb;->e:[LaQ/ba;

    aget-object v4, v8, v4

    iget-object v8, v4, LaQ/ba;->c:Landroid/widget/TextView;

    .line 240
    invoke-virtual {v0}, Lcom/google/googlenav/as;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_83

    move v4, v3

    .line 241
    :goto_6b
    if-eqz v4, :cond_a5

    .line 242
    invoke-virtual {v0}, Lcom/google/googlenav/as;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v9}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 244
    invoke-virtual {v0}, Lcom/google/googlenav/as;->c()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_7e
    invoke-direct {p0, v8, v4}, LaQ/aX;->a(Landroid/view/View;Z)V

    move-object v1, v0

    .line 247
    goto :goto_44

    :cond_83
    move v4, v2

    .line 240
    goto :goto_6b

    .line 250
    :cond_85
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_89
    const/4 v1, 0x5

    if-ge v0, v1, :cond_9d

    .line 251
    iget-object v1, p1, LaQ/bb;->e:[LaQ/ba;

    aget-object v1, v1, v0

    .line 252
    iget-object v4, v1, LaQ/ba;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 253
    iget-object v1, v1, LaQ/ba;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 256
    :cond_9d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a4

    move v2, v3

    :cond_a4
    return v2

    :cond_a5
    move-object v0, v1

    goto :goto_7e
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 7
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, LaQ/aX;->d:Z

    if-eqz v0, :cond_7

    .line 67
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 70
    :cond_7
    new-instance v1, LaQ/bb;

    invoke-direct {v1}, LaQ/bb;-><init>()V

    .line 72
    const v0, 0x7f100273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    .line 73
    iget-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10026e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/bb;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10001f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/bb;->c:Landroid/view/View;

    .line 77
    iget-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    const v2, 0x7f100274

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/bb;->d:Landroid/view/ViewGroup;

    .line 81
    const/4 v0, 0x0

    :goto_43
    const/4 v2, 0x5

    if-ge v0, v2, :cond_54

    .line 82
    iget-object v2, v1, LaQ/bb;->e:[LaQ/ba;

    new-instance v3, LaQ/ba;

    iget-object v4, v1, LaQ/bb;->d:Landroid/view/ViewGroup;

    invoke-direct {v3, v4}, LaQ/ba;-><init>(Landroid/view/ViewGroup;)V

    aput-object v3, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 85
    :cond_54
    iget-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    const v2, 0x7f100275

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/bb;->f:Landroid/view/ViewGroup;

    .line 87
    new-instance v0, LaQ/aZ;

    iget-object v2, v1, LaQ/bb;->f:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, LaQ/aZ;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, v1, LaQ/bb;->g:LaQ/aZ;

    .line 89
    iget-object v0, v1, LaQ/bb;->a:Landroid/view/ViewGroup;

    const v2, 0x7f100276

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/bb;->h:Landroid/view/ViewGroup;

    .line 91
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 96
    check-cast p2, LaQ/bb;

    .line 97
    iput-object p1, p0, LaQ/aX;->c:Lcom/google/googlenav/ui/g;

    .line 99
    iget-object v0, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bV()Z

    move-result v0

    if-nez v0, :cond_13

    .line 101
    iget-object v0, p2, LaQ/bb;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 122
    :goto_12
    return-void

    .line 106
    :cond_13
    iget-object v0, p0, LaQ/aX;->b:Lcom/google/googlenav/ai;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 110
    invoke-direct {p0, p2}, LaQ/aX;->b(LaQ/bb;)Z

    move-result v0

    .line 111
    iget-object v1, p2, LaQ/bb;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 112
    iget-object v1, p2, LaQ/bb;->c:Landroid/view/View;

    invoke-direct {p0, v1, v0}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 115
    iget-object v0, p2, LaQ/bb;->d:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, LaQ/aX;->d(LaQ/bb;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 118
    iget-object v0, p2, LaQ/bb;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, LaQ/aX;->c(LaQ/bb;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aX;->a(Landroid/view/View;Z)V

    .line 121
    iget-object v0, p2, LaQ/bb;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, LaQ/aX;->a(LaQ/bb;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aX;->a(Landroid/view/View;Z)V

    goto :goto_12
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, LaQ/aX;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 51
    const v0, 0x7f0400ca

    return v0
.end method
