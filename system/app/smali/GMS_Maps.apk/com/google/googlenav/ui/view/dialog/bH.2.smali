.class public Lcom/google/googlenav/ui/view/dialog/bH;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/google/googlenav/ui/view/dialog/bJ;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/ui/view/dialog/bJ;Lcom/google/googlenav/ui/g;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const v0, 0x7f0f001b

    invoke-direct {p0, p3, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 49
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bH;->a:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bH;->b:Lcom/google/googlenav/ui/view/dialog/bJ;

    .line 51
    return-void
.end method

.method public static a(Landroid/location/Address;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v0, v2, :cond_23

    .line 120
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 123
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bH;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bH;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/bH;)Lcom/google/googlenav/ui/view/dialog/bJ;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bH;->b:Lcom/google/googlenav/ui/view/dialog/bJ;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 64
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_11

    .line 65
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bH;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    :goto_10
    return-void

    .line 67
    :cond_11
    const/16 v0, 0x7a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/bH;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 55
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_14

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/bH;->requestWindowFeature(I)Z

    .line 58
    :cond_14
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bH;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04017b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_29

    .line 76
    const v0, 0x7f100025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    const/16 v2, 0x7a

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_29
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bH;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 85
    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 90
    :cond_47
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 91
    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bI;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/dialog/bI;-><init>(Lcom/google/googlenav/ui/view/dialog/bH;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bH;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04017e

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 104
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 105
    return-object v1
.end method
