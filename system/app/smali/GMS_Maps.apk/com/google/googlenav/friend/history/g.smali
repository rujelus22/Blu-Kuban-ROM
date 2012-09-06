.class public Lcom/google/googlenav/friend/history/g;
.super Lcom/google/googlenav/friend/history/u;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/history/J;

.field private final c:Landroid/content/Context;

.field private d:Lcom/google/googlenav/ui/view/android/L;

.field private final e:Lcom/google/googlenav/ui/view/dialog/aL;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;Landroid/content/Context;Lcom/google/googlenav/friend/history/J;Lcom/google/googlenav/ui/view/dialog/aL;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/u;-><init>(Lcom/google/googlenav/friend/history/b;)V

    .line 62
    iput-object p2, p0, Lcom/google/googlenav/friend/history/g;->c:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/google/googlenav/friend/history/g;->a:Lcom/google/googlenav/friend/history/J;

    .line 64
    iput-object p4, p0, Lcom/google/googlenav/friend/history/g;->e:Lcom/google/googlenav/ui/view/dialog/aL;

    .line 65
    return-void
.end method

.method private static a(Lcom/google/googlenav/friend/history/J;Landroid/content/Context;)LaL/l;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/J;->b()Lcom/google/googlenav/friend/history/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/b;->j()Ljava/lang/String;

    move-result-object v1

    .line 195
    const/16 v0, 0x275

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/J;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    new-instance v0, Lcom/google/googlenav/friend/history/L;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/history/L;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/L;->a()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    new-instance v3, LaL/l;

    invoke-direct {v3, v1, v2, v4, v0}, LaL/l;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v3
.end method

.method static synthetic a(Lcom/google/googlenav/friend/history/g;)Lcom/google/googlenav/ui/view/android/L;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/friend/history/g;->d:Lcom/google/googlenav/ui/view/android/L;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/history/g;)Lcom/google/googlenav/ui/view/dialog/aL;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/friend/history/g;->e:Lcom/google/googlenav/ui/view/dialog/aL;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/friend/history/g;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 69
    const v0, 0x7f1001e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v0, 0x7f1002ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 73
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 76
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/google/googlenav/friend/history/g;->a:Lcom/google/googlenav/friend/history/J;

    iget-object v3, p0, Lcom/google/googlenav/friend/history/g;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/googlenav/friend/history/g;->a(Lcom/google/googlenav/friend/history/J;Landroid/content/Context;)LaL/l;

    move-result-object v2

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/g;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    iget-object v4, p0, Lcom/google/googlenav/friend/history/g;->c:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v7, v1, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/google/googlenav/friend/history/g;->d:Lcom/google/googlenav/ui/view/android/L;

    .line 85
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/friend/history/g;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/friend/history/g;->e:Lcom/google/googlenav/ui/view/dialog/aL;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/g;->a:Lcom/google/googlenav/friend/history/J;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/J;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/friend/history/h;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/friend/history/h;-><init>(Lcom/google/googlenav/friend/history/g;LaL/l;)V

    invoke-interface {v0, v1, v3}, Lcom/google/googlenav/ui/view/dialog/aL;->a(Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/aN;)V

    .line 105
    return-void
.end method

.method b()Ljava/util/List;
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 121
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v10

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/friend/history/g;->a:Lcom/google/googlenav/friend/history/J;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/J;->d()Ljava/util/List;

    move-result-object v3

    move v1, v7

    .line 126
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ae

    .line 127
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->b()Lcom/google/googlenav/friend/history/m;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/friend/history/m;->a:Lcom/google/googlenav/friend/history/m;

    if-ne v0, v4, :cond_2a

    move v12, v1

    .line 136
    :goto_23
    if-ne v12, v2, :cond_2e

    .line 137
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 186
    :goto_29
    return-object v0

    .line 126
    :cond_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 142
    :cond_2e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_34
    if-ltz v1, :cond_ac

    .line 143
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->b()Lcom/google/googlenav/friend/history/m;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/friend/history/m;->a:Lcom/google/googlenav/friend/history/m;

    if-ne v0, v4, :cond_67

    move v8, v1

    :goto_45
    move v11, v12

    .line 150
    :goto_46
    if-gt v11, v8, :cond_a9

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/friend/history/g;->a:Lcom/google/googlenav/friend/history/J;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/J;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/friend/history/c;

    .line 152
    sget-object v0, Lcom/google/googlenav/friend/history/k;->a:[I

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/c;->b()Lcom/google/googlenav/friend/history/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/m;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_b2

    .line 150
    :goto_63
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_46

    .line 142
    :cond_67
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 154
    :pswitch_6a
    if-ne v11, v12, :cond_85

    move v3, v9

    .line 155
    :goto_6d
    if-ne v11, v8, :cond_87

    move v4, v9

    .line 156
    :goto_70
    new-instance v5, Lcom/google/googlenav/friend/history/i;

    invoke-direct {v5, p0, v1}, Lcom/google/googlenav/friend/history/i;-><init>(Lcom/google/googlenav/friend/history/g;Lcom/google/googlenav/friend/history/c;)V

    .line 163
    new-instance v6, Lcom/google/googlenav/friend/history/j;

    invoke-direct {v6, p0, v1}, Lcom/google/googlenav/friend/history/j;-><init>(Lcom/google/googlenav/friend/history/g;Lcom/google/googlenav/friend/history/c;)V

    .line 170
    new-instance v0, LaL/u;

    iget-object v2, p0, Lcom/google/googlenav/friend/history/g;->c:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, LaL/u;-><init>(Lcom/google/googlenav/friend/history/c;Landroid/content/Context;ZZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_85
    move v3, v7

    .line 154
    goto :goto_6d

    :cond_87
    move v4, v7

    .line 155
    goto :goto_70

    .line 178
    :pswitch_89
    new-instance v0, LaL/A;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, LaL/A;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 182
    :pswitch_9a
    new-instance v0, LaL/o;

    const/16 v1, 0x314

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LaL/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_a9
    move-object v0, v10

    .line 186
    goto/16 :goto_29

    :cond_ac
    move v8, v2

    goto :goto_45

    :cond_ae
    move v12, v2

    goto/16 :goto_23

    .line 152
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_89
        :pswitch_9a
    .end packed-switch
.end method
