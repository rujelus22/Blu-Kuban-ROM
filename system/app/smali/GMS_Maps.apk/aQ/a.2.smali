.class public LaQ/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaQ/a;->b:Ljava/util/List;

    invoke-static {}, LaQ/a;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LaQ/a;->d:Ljava/util/Map;

    iput-object p1, p0, LaQ/a;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/C;)I
    .registers 3

    iget-object v0, p0, LaQ/a;->d:Ljava/util/Map;

    invoke-static {v0, p1}, LaQ/a;->a(Ljava/util/Map;Lcom/google/googlenav/ui/wizard/C;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Map;Lcom/google/googlenav/ui/wizard/C;)I
    .registers 3

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_12

    const v0, 0x7f02028a

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11
.end method

.method public static a()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x2da

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02027a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2db

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02027e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2dc

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020282

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2dd

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020286

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2df

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02028e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020292

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020296

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02029a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2e6

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02029e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 3

    iget-object v0, p0, LaQ/a;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, LaQ/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LaQ/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0, p1}, LaQ/a;->b(Lcom/google/googlenav/ui/wizard/ez;)V

    invoke-direct {p0}, LaQ/a;->b()V

    :cond_14
    return-void
.end method

.method private b()V
    .registers 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v0, v4

    move v5, v2

    :goto_5
    iget-object v1, p0, LaQ/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_38

    if-nez v5, :cond_1d

    const v0, 0x7f0300ec

    invoke-static {v0, v4, v2}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, LaQ/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1d
    move-object v1, v0

    iget-object v0, p0, LaQ/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/d;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, LaQ/d;->a(Landroid/view/View;)Landroid/view/View;

    add-int/lit8 v0, v5, 0x1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_33

    move v0, v2

    :cond_33
    add-int/lit8 v3, v3, 0x1

    move v5, v0

    move-object v0, v1

    goto :goto_5

    :cond_38
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 10

    new-instance v5, LaQ/b;

    invoke-direct {v5, p0, p1}, LaQ/b;-><init>(LaQ/a;Lcom/google/googlenav/ui/wizard/ez;)V

    new-instance v6, LaQ/c;

    invoke-direct {v6, p0, p1}, LaQ/c;-><init>(LaQ/a;Lcom/google/googlenav/ui/wizard/ez;)V

    iget-object v0, p0, LaQ/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlenav/ui/wizard/C;

    invoke-direct {p0, v4}, LaQ/a;->a(Lcom/google/googlenav/ui/wizard/C;)I

    move-result v0

    const v1, 0x7f02028a

    if-ne v0, v1, :cond_45

    iget-object v0, v4, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_34
    new-instance v0, LaQ/d;

    invoke-direct {p0, v4}, LaQ/a;->a(Lcom/google/googlenav/ui/wizard/C;)I

    move-result v1

    iget-object v3, v4, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, LaQ/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/C;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, LaQ/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_45
    const/4 v2, 0x0

    goto :goto_34

    :cond_47
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/ez;Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f02c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LaQ/a;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, LaQ/a;->a(Lcom/google/googlenav/ui/wizard/ez;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ez;Ljava/util/List;)V
    .registers 3

    iput-object p2, p0, LaQ/a;->a:Ljava/util/List;

    invoke-direct {p0, p1}, LaQ/a;->a(Lcom/google/googlenav/ui/wizard/ez;)V

    return-void
.end method
