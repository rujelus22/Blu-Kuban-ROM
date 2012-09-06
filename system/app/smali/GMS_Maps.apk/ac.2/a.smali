.class public LaC/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaC/a;->b:Ljava/util/List;

    .line 44
    invoke-static {}, LaC/a;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LaC/a;->d:Ljava/util/Map;

    .line 47
    iput-object p1, p0, LaC/a;->a:Ljava/util/List;

    .line 48
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/F;)I
    .registers 3
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, LaC/a;->d:Ljava/util/Map;

    invoke-static {v0, p1}, LaC/a;->a(Ljava/util/Map;Lcom/google/googlenav/ui/wizard/F;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Map;Lcom/google/googlenav/ui/wizard/F;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 192
    if-nez v0, :cond_12

    .line 193
    const v0, 0x7f0202f7

    .line 195
    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11
.end method

.method public static a()Ljava/util/Map;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const/16 v1, 0x38c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v1, 0x38d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v1, 0x38e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v1, 0x38f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v1, 0x391

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v1, 0x393

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/16 v1, 0x394

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020303

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/16 v1, 0x397

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020307

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/16 v1, 0x398

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02030b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, LaC/a;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    .line 71
    iget-object v0, p0, LaC/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, LaC/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 74
    invoke-direct {p0, p1}, LaC/a;->b(Lcom/google/googlenav/ui/wizard/gi;)V

    .line 75
    invoke-direct {p0}, LaC/a;->b()V

    .line 77
    :cond_14
    return-void
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 111
    move v3, v2

    move-object v0, v4

    move v5, v2

    .line 113
    :goto_5
    iget-object v1, p0, LaC/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_38

    .line 114
    if-nez v5, :cond_1d

    .line 115
    const v0, 0x7f040133

    invoke-static {v0, v4, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 117
    iget-object v1, p0, LaC/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1d
    move-object v1, v0

    .line 119
    iget-object v0, p0, LaC/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaC/d;

    .line 120
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, LaC/d;->a(Landroid/view/View;)Landroid/view/View;

    .line 121
    add-int/lit8 v0, v5, 0x1

    .line 122
    const/4 v5, 0x4

    if-ne v0, v5, :cond_33

    move v0, v2

    .line 113
    :cond_33
    add-int/lit8 v3, v3, 0x1

    move v5, v0

    move-object v0, v1

    goto :goto_5

    .line 126
    :cond_38
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 10
    .parameter

    .prologue
    .line 81
    new-instance v5, LaC/b;

    invoke-direct {v5, p0, p1}, LaC/b;-><init>(LaC/a;Lcom/google/googlenav/ui/wizard/gi;)V

    .line 89
    new-instance v6, LaC/c;

    invoke-direct {v6, p0, p1}, LaC/c;-><init>(LaC/a;Lcom/google/googlenav/ui/wizard/gi;)V

    .line 98
    iget-object v0, p0, LaC/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlenav/ui/wizard/F;

    .line 99
    invoke-direct {p0, v4}, LaC/a;->a(Lcom/google/googlenav/ui/wizard/F;)I

    move-result v0

    .line 100
    const v1, 0x7f0202f7

    if-ne v0, v1, :cond_45

    iget-object v0, v4, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 103
    :goto_34
    new-instance v0, LaC/d;

    invoke-direct {p0, v4}, LaC/a;->a(Lcom/google/googlenav/ui/wizard/F;)I

    move-result v1

    iget-object v3, v4, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, LaC/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/F;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 105
    iget-object v1, p0, LaC/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 100
    :cond_45
    const/4 v2, 0x0

    goto :goto_34

    .line 107
    :cond_47
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/gi;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    const v0, 0x7f10034e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LaC/a;->c:Landroid/widget/LinearLayout;

    .line 59
    invoke-direct {p0, p1}, LaC/a;->a(Lcom/google/googlenav/ui/wizard/gi;)V

    .line 60
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gi;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p2, p0, LaC/a;->a:Ljava/util/List;

    .line 65
    invoke-direct {p0, p1}, LaC/a;->a(Lcom/google/googlenav/ui/wizard/gi;)V

    .line 66
    return-void
.end method
